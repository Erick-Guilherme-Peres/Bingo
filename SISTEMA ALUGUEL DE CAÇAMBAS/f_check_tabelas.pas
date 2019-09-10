unit f_check_tabelas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, System.Actions, Vcl.ActnList, Vcl.Touch.GestureMgr,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxGDIPlusClasses, cxGroupBox, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.VCLUI.Wait;

type
  Tfrm_check_tabelas = class(TForm)
    ActionList1: TActionList;
    Action1: TAction;
    GestureManager1: TGestureManager;
    cxGroupBox2: TcxGroupBox;
    Label2: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    edt_hostname: TEdit;
    edt_porta: TEdit;
    cxGroupBox1: TcxGroupBox;
    img_incluir: TImage;
    sql_conecta: TFDConnection;
    tab_consulta: TFDQuery;
    tab_origem_mysql: TFDQuery;
    tab_destino_mysql: TFDQuery;
    cxGroupBox3: TcxGroupBox;
    img_sair: TImage;
    procedure img_incluirClick(Sender: TObject);
    procedure Check_Arquivo_MySQL(par_arquivo: string);
    procedure Backup_Arquivo(par_arquivo: string);
    function Consulta(SQL, Campo: String): String;
    procedure FormShow(Sender: TObject);
    procedure img_sairClick(Sender: TObject);
  private
    { Private declarations }
    var_tabelas: String;
  public
    { Public declarations }
  end;

var
  frm_check_tabelas: Tfrm_check_tabelas;

implementation

{$R *.dfm}

uses f_principal, funcoes, financeiro;

procedure Tfrm_check_tabelas.Check_Arquivo_MySQL(par_arquivo: string);
var
   var_cnt : Integer;
   var_campos : string;
   var_comandos : String;
begin
   Application.ProcessMessages;
   try
      tab_destino_mysql.Open('SELECT group_concat(concat_ws(" | ",information_schema.columns.COLUMN_NAME, information_schema.columns.COLUMN_TYPE, information_schema.columns.COLUMN_KEY, '+
                             'information_schema.columns.EXTRA, information_schema.columns.IS_NULLABLE)) '+
                             'FROM information_schema.columns '+
                             'WHERE TABLE_SCHEMA = "cacambas" AND TABLE_NAME = '+QuotedStr(par_arquivo));
      // não tem backup é arquivo novo
      if Trim(tab_origem_mysql.Fields[0].AsString) = '' then Exit;
   except
      // não tem backup é arquivo novo
      exit;
   end;

   if tab_destino_mysql.Fields[0].AsString <> tab_origem_mysql.Fields[0].AsString then begin
      sql_conecta.ExecSQL('START TRANSACTION');

      // faz copia dos dados
      var_comandos := 'INSERT INTO '+par_arquivo+' (';
      // pega os campos da tabela nova
      var_campos:= Consulta('SELECT group_concat(new_tab.COLUMN_NAME) Campos '+
                                     'FROM information_schema.columns new_tab '+
                                     'INNER JOIN '+
                                     '(SELECT ORDINAL_POSITION FROM information_schema.columns WHERE TABLE_SCHEMA = "cacambas" AND TABLE_NAME ='+QuotedStr('cop_'+par_arquivo)+') old_tab '+
                                     'ON old_tab.ORDINAL_POSITION = new_tab.ORDINAL_POSITION '+
                                     'WHERE new_tab.TABLE_NAME = '+QuotedStr(par_arquivo)+' AND new_tab.TABLE_SCHEMA = "cacambas"','Campos');
      var_comandos := var_comandos + var_campos+') ';
      // pega os campos da tabela antiga
      var_campos:= Consulta('SELECT group_concat(old_tab.COLUMN_NAME) Campos '+
                                     'FROM information_schema.columns old_tab '+
                                     'INNER JOIN '+
                                     '(SELECT ORDINAL_POSITION FROM information_schema.columns WHERE TABLE_SCHEMA = "cacambas" AND TABLE_NAME ='+QuotedStr(par_arquivo)+') new_tab '+
                                     'ON new_tab.ORDINAL_POSITION = old_tab.ORDINAL_POSITION '+
                                     'WHERE old_tab.TABLE_NAME = '+QuotedStr('cop_'+par_arquivo)+' AND old_tab.TABLE_SCHEMA = "cacambas"','Campos');
      var_comandos := var_comandos + 'SELECT '+var_campos+' FROM cop_'+par_arquivo;
      sql_conecta.ExecSQL(var_comandos);

      sql_conecta.ExecSQL('COMMIT');
      Application.ProcessMessages;
   end
   else begin
      // não achei diferenca em estruta+indice
      Application.ProcessMessages;
      try
         sql_conecta.ExecSQL('DROP TABLE IF EXISTS '+par_arquivo);
         Application.ProcessMessages;
         sql_conecta.ExecSQL('RENAME TABLE cop_'+par_arquivo+ ' TO '+par_arquivo);
         Application.ProcessMessages;
      except
         // nao faz nada
      end;
   end;
end;

procedure Tfrm_check_tabelas.Backup_Arquivo(par_arquivo: string);
begin
   if Trim(var_tabelas) <> '' then
      var_tabelas:=var_tabelas+',"'+par_arquivo+'"'+',"cop_'+par_arquivo+'"'
   else
      var_tabelas:='"'+par_arquivo+'"'+',"cop_'+par_arquivo+'"';
   try
      tab_origem_mysql.Open('SELECT group_concat(concat_ws(" | ",information_schema.columns.COLUMN_NAME, information_schema.columns.COLUMN_TYPE, information_schema.columns.COLUMN_KEY, '+
                                    'information_schema.columns.EXTRA, information_schema.columns.IS_NULLABLE)) '+
                                    'FROM information_schema.columns '+
                                    'WHERE TABLE_SCHEMA = "cacambas" AND TABLE_NAME = '+QuotedStr(par_arquivo));


      sql_conecta.ExecSQL('DROP TABLE IF EXISTS cop_'+par_arquivo);
      Application.ProcessMessages;

      sql_conecta.ExecSQL('RENAME TABLE '+par_arquivo+ ' TO cop_'+par_arquivo);
      Application.ProcessMessages;
   except
      // nao faz nada :-)
   end;
end;

function Tfrm_check_tabelas.Consulta(SQL, Campo: String): String;
begin
   tab_consulta.Open(SQL);
   Result := tab_consulta.FieldByName(Campo).AsString;
end;

procedure Tfrm_check_tabelas.FormShow(Sender: TObject);
begin
   edt_hostname.Text := frm_principal.pub_hostname;
   edt_porta.Text := frm_principal.pub_porta;
end;

procedure Tfrm_check_tabelas.img_incluirClick(Sender: TObject);
begin
   sql_conecta.ConnectionString := 'Database=cacambas;PassWord=Guilhegal;User_Name=root;Server='+edt_hostname.text+';Port='+edt_porta.Text+';DriverID=MySQL';
   try
      sql_conecta.Connected := True;
   except
      if Mensagem('Banco de Dados não Localizado - Efetuar Instalação Neste Servidor?',4) = 7 then begin
         edt_hostname.Clear;
         edt_hostname.SetFocus;
         Exit;
      end;
      sql_conecta.ConnectionString := 'Database=MySQL;PassWord=Guilhegal;User_Name=root;Server='+edt_hostname.text+';Port='+edt_porta.Text+';DriverID=MySQL';
      sql_conecta.Connected := True;
      sql_conecta.ExecSQL('CREATE DATABASE cacambas');

      sql_conecta.Connected := False;
      sql_conecta.ConnectionString := 'Database=cacambas;PassWord=Guilhegal;User_Name=root;Server='+edt_hostname.text+';Port='+edt_porta.Text+';DriverID=MySQL';
      sql_conecta.Connected := True;
      sql_conecta.ExecSQL('GRANT ALL PRIVILEGES ON *.* TO root@"%"');
      sql_conecta.ExecSQL('FLUSH PRIVILEGES');
   end;
   sql_conecta.ExecSQL('SET SESSION group_concat_max_len = 99999');

   {******************************** empresa ******************************* }
   Backup_Arquivo('empresa');
   sql_conecta.ExecSQL('CREATE TABLE empresa ('+
                       'codigo         BIGINT DEFAULT 0           , ' +
                       'nome           VARCHAR(60)                , ' +
                       'documento      VARCHAR(18)                , ' +
                       'endereco       VARCHAR(40)                , ' +
                       'bairro         VARCHAR(30)                , ' +
                       'cidade         VARCHAR(20)                , ' +
                       'complemento    VARCHAR(20)                , ' +
                       'uf             CHAR(2)                    , ' +
                       'telefone       VARCHAR(13)                , ' +
                       'celular        VARCHAR(14)                , ' +
                       'eMail          VARCHAR(30)                , ' +
                       'senhaEmail     VARCHAR(30)                , ' +
                       'servidorEmail  VARCHAR(30)                , ' +
                       'modelo         VARCHAR(30)                , ' +
                       'porta          VARCHAR(30)                , ' +
                       'velocidade     INT                        , ' +
                       'DDD            CHAR(3)                    , ' +
                       'validade       VARCHAR(100)               , ' +
                       'PRIMARY KEY(codigo) '+
                       ')');
   Check_Arquivo_MySQL('empresa');

   Backup_Arquivo('usuario');
   sql_conecta.ExecSQL('CREATE TABLE usuario( '+
					   'Codigo SERIAL, '+
					   'Usuario VARCHAR(40), '+
					   'Senha VARCHAR(20) '+
					   ')');
   Check_Arquivo_MySQL('usuario');

   Backup_Arquivo('usuario_telas');
   sql_conecta.ExecSQL('CREATE TABLE usuario_telas( '+
					   'Codigo SERIAL, '+
					   'Codigo_Usuario BIGINT, '+
					   'Tela VARCHAR(50) '+
					   ')');
   Check_Arquivo_MySQL('usuario_telas');

   Backup_Arquivo('clientes');
   sql_conecta.ExecSQL('CREATE TABLE clientes( '+
					   'codigo           SERIAL                     , ' +
                  'nome             VARCHAR(60)                , ' +
                  'cpf              VARCHAR(15)                , ' +
                  'rg               VARCHAR(13)                , ' +
                  'cep              VARCHAR(10)                , ' +
                  'endereco         VARCHAR(60)                , ' +
                  'codigoCidade     VARCHAR(7)                 , ' +
                  'cidade           VARCHAR(60)                , ' +
                  'estado           VARCHAR(2)                 , ' +
                  'bairro           VARCHAR(30)                , ' +
                  'numero           VARCHAR(5)                 , ' +
                  'complemento      VARCHAR(20)                , ' +
                  'cnh              VARCHAR(11)                , ' +
                  'dataNascimento   DATE                       , ' +
                  'dataCadastro     DATE                       , ' +
                  'sexo             VARCHAR(9)                 , ' +
                  'tipoCliente      BIGINT                     , ' +
                  'ativo            TINYINT        DEFAULT 0   , ' +
                  'CNPJ             VARCHAR(15)                , ' +
                  'telefone         VARCHAR(13)                , ' +
                  'celular          VARCHAR(14)                  ' +
					   ')');
   Check_Arquivo_MySQL('clientes');

   Backup_Arquivo('clientesTelefones');
   sql_conecta.ExecSQL('CREATE TABLE clientesTelefones( '+
					   'codigoCliente    BIGINT                     , ' +
                  'descricao        VARCHAR(60)                , ' +
                  'telefone         VARCHAR(13)                  ' +
					   ')');
   Check_Arquivo_MySQL('clientesTelefones');


   Backup_Arquivo('clientesEmail');
   sql_conecta.ExecSQL('CREATE TABLE clientesEmail( '+
					   'codigoCliente    BIGINT                     , ' +
                  'descricao        VARCHAR(60)                , ' +
                  'eMail            VARCHAR(40)                  ' +
					   ')');
   Check_Arquivo_MySQL('clientesEmail');

   Backup_Arquivo('tabelas');
   sql_conecta.ExecSQL('CREATE TABLE tabelas( '+
					   'codigo           SERIAL                     , ' +
                  'descricao        VARCHAR(60)                , ' +
                  'tipoTabela       TINYINT                    , ' +
                  'auxiliar         FLOAT(15,2)                , ' +
                  'nomeIcone        VARCHAR(255)               , ' +
                  'imagemIcone      LONGBLOB                     ' +
					   ')');
   Check_Arquivo_MySQL('tabelas');

   Backup_Arquivo('produto');
   sql_conecta.ExecSQL('CREATE TABLE produto( '+
                  'codigo     SERIAL               , ' +
                  'descricao  VARCHAR(60)          , ' +
                  'Dias       INTEGER              , ' +
                  'ativo      TINYINT DEFAULT -1     ' +
                  ')');
   Check_Arquivo_MySQL('produto');

   Backup_Arquivo('pedido');
   sql_conecta.ExecSQL('CREATE TABLE pedido( '+
					   'codigo           SERIAL                     , ' +
                  'codigoCliente    BIGINT                     , ' +
                  'nome             VARCHAR(60)                , ' +
                  'telefone         VARCHAR(13)                , ' +
                  'Celular          VARCHAR(14)                , ' +
                  'cep              VARCHAR(10)                , ' +
                  'endereco         VARCHAR(60)                , ' +
                  'cidade           VARCHAR(60)                , ' +
                  'estado           VARCHAR(2)                 , ' +
                  'bairro           VARCHAR(30)                , ' +
                  'numero           VARCHAR(5)                 , ' +
                  'complemento      VARCHAR(20)                , ' +
                  'dataOrcamento    DATETIME                   , ' +
                  'valorTotal       DECIMAL(15,2)              , ' +
                  'pedidoFinalizado TINYINT DEFAULT 0          , ' +
                  'observacoes      VARCHAR(40)                , ' +
                  'dataFinalizado   DATE                       , ' +
                  'codigoProduto    BIGINT                     , ' +
                  'periodo          INTEGER                    , ' +
                  'documento        VARCHAR(16)                , ' +
                  'recebido         TINYINT DEFAULT 0            ' +
					   ')');
   Check_Arquivo_MySQL('pedido');

   financeiros;

   sql_conecta.ExecSQL('DROP FUNCTION IF EXISTS AtualizaCidade');
   // cria a function
   sql_conecta.ExecSQL('CREATE DEFINER=`root`@`%` FUNCTION `AtualizaCidade`(CodigoDaCidade INTEGER) RETURNS varchar(255) CHARSET latin1 '+
                       'DETERMINISTIC '+
                       'BEGIN '+
                       'DECLARE Nome VARCHAR(255); '+
                       'SET Nome = (SELECT Cidade FROM cidades WHERE Codigo_Cidade = CodigoDaCidade); '+
                       'RETURN Nome; '+
                       'END; ');

   Mensagem('Concluido Com Sucesso',0);
end;

procedure Tfrm_check_tabelas.img_sairClick(Sender: TObject);
begin
   Close;
end;

end.
