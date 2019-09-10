unit f_principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, System.Actions, Vcl.ActnList, Vcl.Touch.GestureMgr,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, cxLookAndFeelPainters, cxGraphics,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
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
  dxSkinXmas2008Blue, cxClasses, dxAlertWindow, Data.DB, cxLocalization,
  ACBrMail, ACBrSMSClass, ACBrBase, ACBrSMS, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FireDAC.Comp.UI, FireDAC.Phys.MySQL, Vcl.ImgList,
  Vcl.Menus, IniFiles, Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan,
  JvExForms, JvCustomItemViewer, JvImageListViewer, Vcl.ComCtrls,
  FireDAC.Phys.MySQLDef, System.ImageList;

function ExecAndWaitCMD(const Comando: string; const WindowState: Word): boolean;

var
   var_parametro : Integer;

type
  Tfrm_principal = class(TForm)
    ActionList1: TActionList;
    Action1: TAction;
    GestureManager1: TGestureManager;
    menu_principal: TMainMenu;
    Cadastro1: TMenuItem;
    Caambas1: TMenuItem;
    AlugueldeCaamba1: TMenuItem;
    N3: TMenuItem;
    EfetuarLogout1: TMenuItem;
    Sair1: TMenuItem;
    Financeiro1: TMenuItem;
    Contas1: TMenuItem;
    Historico1: TMenuItem;
    N10: TMenuItem;
    AberturadeSaldo1: TMenuItem;
    FechamentodeSaldo1: TMenuItem;
    LanamentoFinanceiro1: TMenuItem;
    N11: TMenuItem;
    RelatriodeLanamento1: TMenuItem;
    Relatrios1: TMenuItem;
    Retiras1: TMenuItem;
    AReceber1: TMenuItem;
    Alugadas1: TMenuItem;
    Sistema1: TMenuItem;
    ConfiguraesEmpresa1: TMenuItem;
    ConfiguraesUsuarios1: TMenuItem;
    N2: TMenuItem;
    ManutenodeBancodeDados1: TMenuItem;
    N1: TMenuItem;
    Sobre1: TMenuItem;
    img_list: TImageList;
    sql_conecta: TFDConnection;
    FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    tab_usuario: TFDQuery;
    tab_empresa: TFDQuery;
    AcbrSMS: TACBrSMS;
    ACBrMail1: TACBrMail;
    cxLocalizer1: TcxLocalizer;
    tab_produto: TFDQuery;
    img_sem_foto: TImageList;
    tabBusca: TFDQuery;
    dtsBusca: TDataSource;
    dxAlertWindowManager1: TdxAlertWindowManager;
    ActionManager1: TActionManager;
    sts_bar: TStatusBar;
    NmeroSerial1: TMenuItem;
    Retirar1: TMenuItem;
    BackupBancodeDados1: TMenuItem;
    BaixarAluguel1: TMenuItem;
    procedure CloseButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Caambas1Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure Contas1Click(Sender: TObject);
    procedure Historico1Click(Sender: TObject);
    procedure AberturadeSaldo1Click(Sender: TObject);
    procedure FechamentodeSaldo1Click(Sender: TObject);
    procedure LanamentoFinanceiro1Click(Sender: TObject);
    procedure AlugueldeCaamba1Click(Sender: TObject);
    procedure Retiras1Click(Sender: TObject);
    procedure Sobre1Click(Sender: TObject);
    procedure ConfiguraesEmpresa1Click(Sender: TObject);
    procedure ConfiguraesUsuarios1Click(Sender: TObject);
    procedure ManutenodeBancodeDados1Click(Sender: TObject);
    procedure AReceber1Click(Sender: TObject);
    procedure Alugadas1Click(Sender: TObject);
    procedure RelatriodeLanamento1Click(Sender: TObject);
    procedure Retirar1Click(Sender: TObject);
    procedure BackupBancodeDados1Click(Sender: TObject);
    procedure BaixarAluguel1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    pub_status     : Integer; // 1 - Inserção ou Edição || 0 - Normal
    pub_hostname   : String;
    pub_porta      : String;
    pub_usuario    : String;
    pub_parametro  : String;
    pub_parametro_2: String;
  end;

var
  frm_principal: Tfrm_principal;

implementation

{$R *.dfm}

uses f_cadastro, funcoes, f_cacambas, f_contas, f_historico, uTradutor,
     f_abertura, f_fechamento, f_lancamento, f_aluguel, f_login, f_sobre,
     f_empresa, f_usuarios, f_check_tabelas, f_recebida, f_receber, f_alugadas,
     f_rlancamento, f_retirar, f_baixa_alugadas;

procedure Tfrm_principal.AberturadeSaldo1Click(Sender: TObject);
begin
   Application.CreateForm(Tfrm_abertura,frm_abertura);
   frm_abertura.Show
end;

procedure Tfrm_principal.Alugadas1Click(Sender: TObject);
begin
   Application.CreateForm(Tfrm_alugadas, frm_alugadas);
   frm_alugadas.Show;
end;

procedure Tfrm_principal.AlugueldeCaamba1Click(Sender: TObject);
begin
   Application.CreateForm(Tfrm_aluguel,frm_aluguel);
   frm_aluguel.Show
end;

procedure Tfrm_principal.AReceber1Click(Sender: TObject);
begin
   Application.CreateForm(Tfrm_receber,frm_receber);
   frm_receber.Show
end;

procedure Tfrm_principal.BackupBancodeDados1Click(Sender: TObject);
var
   var_cmd : String;
begin
    //Crio Comando e mando Via CMD Restaurar o Backup
   if FileExists(ExtractFilePath(Application.ExeName)+'banco.sql') then
      DeleteFile(ExtractFilePath(Application.ExeName)+'banco.sql');

   var_cmd := 'C:\mysql\bin\mysql.exe -uroot -pGuilhegal -P'+pub_porta+' -h'+pub_hostname+' cacambas > '+ExtractFilePath(Application.ExeName)+'banco.sql';
   ShowMessage(var_cmd);
   if ExecAndWaitCMD(PWideChar(var_cmd),SW_NORMAL) = True Then begin //Aguardo o CMD Fechar para prossegir
       ;//Não faz nada
   end;
end;


procedure Tfrm_principal.BaixarAluguel1Click(Sender: TObject);
begin
   Application.CreateForm(Tfrm_baixa_alugadas,frm_baixa_alugadas);
   frm_baixa_alugadas.Show
end;

function ExecAndWaitCMD(const Comando: string; const WindowState: Word): boolean;
var
  SUInfo: TStartupInfo;
  ProcInfo: TProcessInformation;
  CmdLine: string;
begin
   {Coloca o nome do arquivo entre aspas. Isto é necessário devido aos espaços contidos em nomes longos}
   CmdLine := ' /c ' + Comando ;
   FillChar(SUInfo, SizeOf(SUInfo), #0);
   with SUInfo do  begin
      cb := SizeOf(SUInfo);
      dwFlags := STARTF_USESHOWWINDOW;
      wShowWindow := WindowState;
   end;
   Result := CreateProcess('C:\Windows\System32\cmd.exe', PWideChar(CmdLine), nil, nil, false,
   CREATE_NEW_CONSOLE or NORMAL_PRIORITY_CLASS, nil,
   PWideChar('C:\Windows\System32'), SUInfo, ProcInfo);

   {Aguarda até ser finalizado }
   if Result then begin
      WaitForSingleObject(ProcInfo.hProcess, INFINITE);
      {Libera os Handles }
      CloseHandle(ProcInfo.hProcess);
      CloseHandle(ProcInfo.hThread);
   end;
end;

procedure Tfrm_principal.Caambas1Click(Sender: TObject);
begin
   Application.CreateForm(Tfrm_cacambas,frm_cacambas);
   frm_cacambas.Show
end;

procedure Tfrm_principal.CloseButtonClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure Tfrm_principal.ConfiguraesEmpresa1Click(Sender: TObject);
begin
   Application.CreateForm(Tfrm_empresa,frm_empresa);
   frm_empresa.ShowModal;
end;

procedure Tfrm_principal.ConfiguraesUsuarios1Click(Sender: TObject);
begin
   Application.CreateForm(Tfrm_usuarios,frm_usuarios);
   frm_usuarios.ShowModal;
end;

procedure Tfrm_principal.Contas1Click(Sender: TObject);
begin
   Application.CreateForm(Tfrm_contas,frm_contas);
   frm_contas.Show
end;

procedure Tfrm_principal.FechamentodeSaldo1Click(Sender: TObject);
begin
   Application.CreateForm(Tfrm_fechamento,frm_fechamento);
   frm_fechamento.Show
end;

procedure Tfrm_principal.FormShow(Sender: TObject);
var
   Ini : TIniFile;
begin
   if pub_usuario = '' then begin
      if FileExists(ExtractFilePath(Application.ExeName)+'SAC.ini') then begin
         Ini := TIniFile.Create(ChangeFileExt(Application.ExeName,'.ini'));

         pub_hostname := Ini.ReadString('PRINCIPAL','Host','');
         pub_porta := Ini.ReadString('PRINCIPAL','Port','');
      end;
      sql_conecta.ConnectionString := 'Database=cacambas;PassWord=Senha;User_Name=root;Server='+pub_hostname+';Port='+pub_porta+';DriverID=MySQL';
      try
         sql_conecta.Connected := True;
      except
         Mensagem('Banco de Dados não Localizado',16);
         Application.CreateForm(Tfrm_check_tabelas,frm_check_tabelas);
         frm_check_tabelas.ShowModal;
      end;
      if sql_conecta.Connected = True then begin
         // se pegar o parametro -check roda o check tabelas
         for var_parametro := 1 to ParamCount do begin
            if ParamStr(var_parametro) = '-check' then begin
               if not Assigned (frm_check_tabelas) then begin
                  Application.CreateForm(Tfrm_check_tabelas, frm_check_tabelas);
                  frm_check_tabelas.ShowModal;
               end;
            end;
         end;
         //Verifica Empresa
         tab_empresa.Open('SELECT * FROM empresa');
         if tab_empresa.RecordCount = 0 then begin
            Application.CreateForm(Tfrm_empresa,frm_empresa);
            frm_empresa.ShowModal;
         end;
//         if (tab_empresa.FieldByName('codigo').AsString = '0') or (StrToDate(Descriptografa(tab_empresa.FieldByName('Validade').AsString,15)) <= StrToDate(FormatDateTime('dd/mm/yyyy',now()))) then begin
//            if not Assigned(frm_serial) then
//               Application.CreateForm(Tfrm_serial,frm_serial);
//            frm_serial.ShowModal;
//            if (tab_empresa.FieldByName('codigo').AsString = '0') or (StrToDate(Descriptografa(tab_empresa.FieldByName('Validade').AsString,15)) <= StrToDate(FormatDateTime('dd/mm/yyyy',now()))) then
//               Application.Terminate;
//         end;
         //Verifica Usuario
         tab_usuario.Open('SELECT * FROM usuario');
         if tab_usuario.RecordCount = 0 then begin
            Application.CreateForm(Tfrm_usuarios,frm_usuarios);
            frm_usuarios.ShowModal;
         end;
         //Abre Login
         Application.CreateForm(Tfrm_login,frm_login);
         frm_login.ShowModal;

         Tradutor(cxLocalizer1);

         sts_bar.Panels.Items[0].Text := 'Empresa : '+tab_empresa.FieldByName('Nome').AsString;
         sts_bar.Panels.Items[1].Text := 'Usuario : '+pub_usuario;
         sts_bar.Panels.Items[2].Text := 'Data : '+DateToStr(Date());

         tabBusca.Open('SELECT COALESCE(COUNT(*),0) FROM pedido  '+
                       'WHERE (pedidoFinalizado <> -1 OR pedidoFinalizado IS NULL) AND DATE(dataFinalizado) <= DATE(now())');
         if (tabBusca.RecordCount > 0) and (tabBusca.Fields[0].AsInteger > 0) then
            dxAlertWindowManager1.Show('Existe(m) Pedido(s) a Vencer!', 'Existe(m) '+tabBusca.Fields[0].AsString+' Cacamba(s) a serem Recolhidas', 0);
      end
      else Application.Terminate;
   end;
end;

procedure Tfrm_principal.Historico1Click(Sender: TObject);
begin
   Application.CreateForm(Tfrm_historico,frm_historico);
   frm_historico.Show
end;

procedure Tfrm_principal.LanamentoFinanceiro1Click(Sender: TObject);
begin
   Application.CreateForm(Tfrm_lancamento,frm_lancamento);
   frm_lancamento.Show
end;

procedure Tfrm_principal.ManutenodeBancodeDados1Click(Sender: TObject);
begin
   Application.CreateForm(Tfrm_check_tabelas, frm_check_tabelas);
   frm_check_tabelas.ShowModal;
end;

procedure Tfrm_principal.RelatriodeLanamento1Click(Sender: TObject);
begin
   Application.CreateForm(Tfrm_rlancamento, frm_rlancamento);
   frm_rlancamento.Show;
end;

procedure Tfrm_principal.Retirar1Click(Sender: TObject);
begin
   Application.CreateForm(Tfrm_retirar, frm_retirar);
   frm_retirar.Show;
end;

procedure Tfrm_principal.Retiras1Click(Sender: TObject);
begin
   Application.CreateForm(Tfrm_recebida, frm_recebida);
   frm_recebida.Show;
end;

procedure Tfrm_principal.Sair1Click(Sender: TObject);
begin
   Application.Terminate;
end;

procedure Tfrm_principal.Sobre1Click(Sender: TObject);
begin
   Application.CreateForm(Tfrm_sobre, frm_sobre);
   frm_sobre.ShowModal;
end;

end.
