unit f_principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, StrUtils,
  Vcl.Imaging.pngimage, System.Actions, Vcl.ActnList, Vcl.Touch.GestureMgr,
  dxGDIPlusClasses, frame_cadastro, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, Data.DB, JvNavigationPane,
  JvExMask, JvToolEdit, JvMaskEdit, JvDBControls, JvBaseEdits,
  FireDAC.Comp.Client, IniFiles, FireDAC.VCLUI.Wait, FireDAC.Phys.ODBCBase,
  FireDAC.Phys.MSSQL, FireDAC.Comp.UI, frame_visitas, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.ComCtrls,
  dxCore, cxDateUtils, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxDBEdit, JvExExtCtrls, JvExtComponent, JvClock, RxClock, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet,
  Vcl.ImgList, JvExControls, JvLabel, cxClasses, cxLocalization;

type
  Tfrm_principal = class(TForm)
    ActionList1: TActionList;
    Action1: TAction;
    GestureManager1: TGestureManager;
    Panel1: TPanel;
    sql_conecta: TFDConnection;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDPhysMSSQLDriverLink1: TFDPhysMSSQLDriverLink;
    frm_cadastro: Tfrm_cadastro;
    RxClock1: TRxClock;
    lblData: TLabel;
    tab_buscaRec: TFDQuery;
    ImageList1: TImageList;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    imgEntSai: TImage;
    GroupBox3: TGroupBox;
    Image2: TImage;
    imgClose: TImage;
    grbvisitasfin: TGroupBox;
    JvLabel1: TJvLabel;
    JvLabel5: TJvLabel;
    JvLabel6: TJvLabel;
    grbvisitas: TGroupBox;
    JvLabel2: TJvLabel;
    JvLabel7: TJvLabel;
    JvLabel8: TJvLabel;
    JvLabel9: TJvLabel;
    JvLabel10: TJvLabel;
    frm_visitas: Tfrm_visitas;
    cxLocalizer1: TcxLocalizer;
    JvLabel3: TJvLabel;
    procedure imgCloseClick(Sender: TObject);
    procedure imgVisitanteClick(Sender: TObject);
    procedure frm_cadastroimg_incluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure frm_cadastroimg_alterarClick(Sender: TObject);
    procedure frm_cadastroimg_excluirClick(Sender: TObject);
    procedure frm_cadastroimg_sairClick(Sender: TObject);
    procedure imgEntSaiClick(Sender: TObject);
    procedure frm_visitasimg_sairClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure frm_visitasPageControl1Change(Sender: TObject);
    procedure frm_visitascgbIncluirClick(Sender: TObject);
    procedure cgbExcluirClick(Sender: TObject);
    procedure frm_visitascgbExcluirClick(Sender: TObject);
    procedure frm_visitasTabSheet1Show(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    pubHost : String;
    pubPort : String;
    pubBD   : String;
    pubSHst : String;
    pubSPta : String;
    pubSUsr : String;
    pubSPas : String;
    pubSAmb : String;
    pubSEmp : String;
    pubSFil : String;
    pubSFuc : String;
    pubRet1 : String;
    pubRet2 : String;
    pubVDt1 : String;
    pubVDt2 : String;
    pubPar1 : String;
  end;

var
  frm_principal: Tfrm_principal;

implementation

{$R *.dfm}

uses f_visita, f_data, f_busca, uTradutor;


procedure Tfrm_principal.cgbExcluirClick(Sender: TObject);
begin
   ;
end;

procedure Tfrm_principal.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
   varId : String;
   varData : String;
   varHora : String;
   varNumero : String;
   varRec : String;
   varDtBD : TDateTime;
begin
   if (Key = VK_ESCAPE) and (frm_cadastro.Visible = true) then begin
      frm_cadastro.JvMonthCalendar1.Visible := False;
   end;

   if frm_visitas.Visible then begin
      if (Key = VK_F3) and (frm_visitas.PageControl1.TabIndex = 0) then begin
         varId := frm_visitas.tab_principal.FieldByName('R_E_C_N_O_').AsString;
         if InputQuery('Controle Entrada Saida','Digite Cod. Visita',varId) then begin
            if frm_visitas.tab_principal.Locate('R_E_C_N_O_',varId,[]) then begin
               if Trim(frm_visitas.tab_principal.FieldByName('PY_DATAE').AsString) = '' then begin
                  varData := FormatDateTime('yyyymmdd',now());
                  varHora := FormatDateTime('hh.mm',now());
                  sql_conecta.ExecSQL('UPDATE SPY010 SET PY_DATAE = '+QuotedStr(varData)+', PY_ENTRADA = '+QuotedStr(varHora)+' WHERE LTRIM(PY_DATAE) = '+QuotedStr('')+' AND R_E_C_N_O_ = '+varId);
                  frm_visitas.tab_principal.Refresh;
                  frm_visitas.tab_principals.Refresh;
               end
               else
                  ShowMessage('ESSA ENTRADA JÁ FOI REGISTRADA');
            end;
         end;
      end;
      if (Key = VK_F4) and (frm_visitas.PageControl1.TabIndex = 0) then begin
         varId := frm_visitas.tab_principals.FieldByName('R_E_C_N_O_').AsString;
         if InputQuery('Controle Entrada Saida','Digite Cod. Visita',varId) then begin
            if frm_visitas.tab_principals.Locate('R_E_C_N_O_',varId,[]) then begin
               if Trim(frm_visitas.tab_principals.FieldByName('PY_DATAE').AsString) = '' then
                  ShowMessage('NÃO FOI REGISTRADA A ENTRADA DESSA VISITA')
               else begin
                  if Trim(frm_visitas.tab_principals.FieldByName('PY_DATAS').AsString) = '' then begin
                     varData := FormatDateTime('yyyymmdd',now());
                     varHora := FormatDateTime('hh.mm',now());
                     sql_conecta.ExecSQL('UPDATE SPY010 SET PY_DATAS = '+QuotedStr(varData)+', PY_SAIDA = '+QuotedStr(varHora)+', PY_DTBAIXA = '+QuotedStr(varData)+' WHERE R_E_C_N_O_ = '+varId);
                     frm_visitas.tab_principals.Refresh;
                     if frm_visitas.tab_finalizadas.Active then
                        frm_visitas.tab_finalizadas.Refresh;
                  end
               end;
            end;
         end;
      end;
      if (Key = VK_F1) and (frm_visitas.PageControl1.TabIndex = 0) then begin
         imgVisitanteClick(Sender);
         frm_cadastro.img_incluirClick(Sender);
      end;
      if (Key = VK_F2) and (frm_visitas.PageControl1.TabIndex = 0) then begin
         Application.CreateForm(Tfrm_visita, frm_visita);
         frm_visita.ShowModal;
         frm_visitas.tab_principal.Refresh;
         frm_visitas.tab_principals.Refresh;
      end;
      if (Key = VK_F6) and (frm_visitas.PageControl1.TabIndex = 0) then begin
         varId := frm_visitas.tab_principals.FieldByName('R_E_C_N_O_').AsString;
         if InputQuery('Controle Entrada Saida','Digite Cod. Visita',varId) then begin
            if frm_visitas.tab_principals.Locate('R_E_C_N_O_',varId,[]) then begin
               varData := FormatDateTime('yyyymmdd',now());
               varHora := FormatDateTime('hh.mm',now());
               sql_conecta.ExecSQL('UPDATE SPY010 SET PY_DATAE = '+QuotedStr('')+', PY_ENTRADA = '+QuotedStr('')+' WHERE R_E_C_N_O_ = '+varId);

               frm_visitas.tab_principal.Refresh;
               frm_visitas.tab_principals.Refresh;
               if frm_visitas.tab_finalizadas.Active then
                  frm_visitas.tab_finalizadas.Refresh;
            end;
         end;
      end;
      if (Key = VK_F8) and (frm_visitas.PageControl1.TabIndex = 1) then begin
         Application.CreateForm(Tfrm_data,frm_data);
         frm_data.ShowModal;

         if (Trim(pubRet1) <> '') or (Trim(pubRet2) <> '') then begin
            varData := 'PY_DTVISIT >= '+QuotedStr(pubRet1);
            varData := varData + ' AND PY_DTVISIT <= '+QuotedStr(pubRet2);

            frm_visitas.tab_finalizadas.Open('SELECT R_E_C_N_O_, PY_DATAE, PY_DATAS, PY_ENTRADA, PY_SAIDA, PY_VISITA, PY_NOMEMP, (SELECT TOP 1 PW_NOMFULL FROM SPW010 WHERE PW_VISITA = PY_VISITA) AS VISITANTE, (SELECT TOP 1 RA_NOME FROM SRA010 WHERE RA_MAT = PY_MAT) RESPONSAVEL, '+
                           '(SELECT TOP 1 CTT_DESC01 FROM CTT010 WHERE CTT_CUSTO = PY_CC) LOCALVISITA, '+QuotedStr('FINALIZADO')+' FUNCAO, '+
                           'RIGHT(PY_DATAE,2) + '+QuotedStr('/')+' + SUBSTRING(PY_DATAE,5,2) + '+QuotedStr('/')+' + LEFT(PY_DATAE, 4) ENTRADA, LEFT(PY_ENTRADA,2)+ '+QuotedStr(':')+' + RIGHT(PY_DATAE, 2) HENTRADA, '+
                           'RIGHT(PY_DATAS,2) + '+QuotedStr('/')+' + SUBSTRING(PY_DATAS,5,2) + '+QuotedStr('/')+' + LEFT(PY_DATAS, 4) SAIDA, LEFT(PY_SAIDA,2)+ '+QuotedStr(':')+' + RIGHT(PY_SAIDA, 2) HSAIDA '+
                           'FROM SPY010 '+
                           'WHERE '+varData+' AND LEN(LTRIM(PY_DTBAIXA)) > 0 AND D_E_L_E_T_ <> '+QuotedStr('*'));
         end;
      end;
      if (Key = VK_F7) and (frm_visitas.PageControl1.TabIndex = 1) then begin
         varId := frm_visitas.tab_finalizadas.FieldByName('R_E_C_N_O_').AsString;
         if InputQuery('Controle Entrada Saida','Digite Cod. Visita',varId) then begin
            if frm_visitas.tab_finalizadas.Locate('R_E_C_N_O_',varId,[]) then begin
               varData := FormatDateTime('yyyymmdd',now());
               varHora := FormatDateTime('hh.mm',now());
               sql_conecta.ExecSQL('UPDATE SPY010 SET PY_DATAS = '+QuotedStr('')+', PY_SAIDA = '+QuotedStr('')+', PY_DTBAIXA = '+QuotedStr('')+' WHERE R_E_C_N_O_ = '+varId);

               frm_visitas.tab_principal.Refresh;
               frm_visitas.tab_principals.Refresh;
               if frm_visitas.tab_finalizadas.Active then
                  frm_visitas.tab_finalizadas.Refresh;
            end;
         end;
      end;
      if (Key = VK_F9) and (frm_visitas.PageControl1.TabIndex = 1) then begin
         varId := frm_visitas.tab_finalizadas.FieldByName('R_E_C_N_O_').AsString;
         if InputQuery('Controle Entrada Saida','Digite Cod. Visita',varId) then begin
            if frm_visitas.tab_finalizadas.Locate('R_E_C_N_O_',varId,[]) then begin
               pubPar1:= varId;
               Application.CreateForm(Tfrm_visita, frm_visita);
               frm_visita.ShowModal;
               frm_visitas.tab_principal.Refresh;
               frm_visitas.tab_principals.Refresh;
            end;
         end;
      end;
      if (Key = VK_F5) and (frm_visitas.PageControl1.TabIndex = 0) then begin
         pubRet1 := '';
         Tfrm_busca.Create(Self,'SELECT PW_VISITA, PW_NOMFULL FROM SPW010 WHERE PW_X_TPVIS = '+QuotedStr('2')+' AND D_E_L_E_T_ <> '+QuotedStr('*')).ShowModal;
         if frm_principal.pubRet1 <> '' then begin
            tab_buscaRec.Open('SELECT MAX(CAST(PY_NUMERO AS INTEGER)) + 1 FROM SPY010');
            varNumero := tab_buscaRec.Fields[0].AsString;

            tab_buscaRec.Open('SELECT COALESCE(MAX(R_E_C_N_O_),0) + 1 FROM SPY010');
            varRec := tab_buscaRec.Fields[0].AsString;

            varId := InputBox('Controle Entrada Saida','Digite Placa','');

            sql_conecta.ExecSQL('INSERT INTO SPY010 (PY_FILIAL,PY_NUMERO,PY_VISITA,PY_MAT,PY_CC,PY_CRACHA,PY_NOMEMP,PY_DTVISIT,PY_DTBAIXA,PY_DATAE,PY_ENTRADA,PY_DATAS,PY_SAIDA,PY_TIPOVIS,PY_CLASSIF,PY_PLACVEI,D_E_L_E_T_,R_E_C_N_O_,R_E_C_D_E_L_)'+
            'VALUES ('+
            QuotedStr('01')+','+
            varNumero+','+
            QuotedStr(frm_principal.pubRet1)+','+
            QuotedStr(' ')+','+
            QuotedStr('111007')+','+
            QuotedStr(' ')+','+
            QuotedStr('TOFFANO/TRANS RODOIN - CAMINHÃO')+','+
            QuotedStr(FormatDateTime('yyyymmdd',now()))+','+
            QuotedStr('        ')+','+
            QuotedStr('        ')+',0.0,'+
            QuotedStr('        ')+',0.0,'+
            QuotedStr('3')+','+
            QuotedStr('1')+','+
            QuotedStr(varId)+','+
            QuotedStr(' ')+','+
            varRec+',0)');
            pubRet1 := '';
            frm_visitas.tab_principal.Refresh;
            frm_visitas.tab_principals.Refresh;
         end;
      end;
   end;
end;

procedure Tfrm_principal.FormShow(Sender: TObject);
var
   Ini : TIniFile;
begin
   if FileExists(ExtractFilePath(Application.ExeName)+'ces.ini') then begin
      Ini := TIniFile.Create(ChangeFileExt(Application.ExeName,'.ini'));

      pubHost := Ini.ReadString('BANCO','Host','');
      pubPort := Ini.ReadString('BANCO','Port','');
      pubBD   := Ini.ReadString('BANCO','NomeBD','');

      pubSHst := Ini.ReadString('PROTHEUS','Servidor','');
      pubSPta := Ini.ReadString('PROTHEUS','Porta','');
      pubSUsr := Ini.ReadString('PROTHEUS','Usuario','');
      pubSPas := Ini.ReadString('PROTHEUS','Senha','');
      pubSAmb := Ini.ReadString('PROTHEUS','Ambiente','');
      pubSEmp := Ini.ReadString('PROTHEUS','Empresa','');
      pubSFil := Ini.ReadString('PROTHEUS','Filial','');
      pubSFuc := Ini.ReadString('PROTHEUS','Funcao','');
   end;
   sql_conecta.ConnectionString := 'DriverID=MSSQL;Server='+pubHost+';Database='+pubBD+';User_Name=sa;MetaDefSchema=dbo;MetaDefCatalog='+pubBD+';PassWord=TOFf@n02636;Initial Catalog=AdventureWorks;Integrated Security=SSPI;MultipleActiveResultSets=True;';
   sql_conecta.Connected := True;

   lblData.Caption := DateToStr(now());
   imgEntSaiClick(Sender);
   Tradutor(cxLocalizer1);
   rxClock1.DotsColor := lblData.Color;
   rxClock1.Color := lblData.Color;
end;

procedure Tfrm_principal.frm_cadastroimg_alterarClick(Sender: TObject);
begin
   frm_cadastro.img_alterarClick(Sender);
end;

procedure Tfrm_principal.frm_cadastroimg_excluirClick(Sender: TObject);
begin
   frm_cadastro.img_excluirClick(Sender);
end;

procedure Tfrm_principal.frm_cadastroimg_incluirClick(Sender: TObject);
begin
   frm_cadastro.img_incluirClick(Sender);
end;

procedure Tfrm_principal.frm_cadastroimg_sairClick(Sender: TObject);
begin
   frm_cadastro.img_sairClick(Sender);
end;

procedure Tfrm_principal.frm_visitascgbExcluirClick(Sender: TObject);
begin
   frm_visitas.tab_finalizadas.Open('SELECT R_E_C_N_O_, PY_DATAE, PY_DATAS, PY_ENTRADA, PY_SAIDA, PY_VISITA, PY_NOMEMP, (SELECT TOP 1 PW_NOMFULL FROM SPW010 WHERE PW_VISITA = PY_VISITA) AS VISITANTE, (SELECT TOP 1 RA_NOME FROM SRA010 WHERE RA_MAT = PY_MAT) RESPONSAVEL, '+
                                    '(SELECT TOP 1 CTT_DESC01 FROM CTT010 WHERE CTT_CUSTO = PY_CC) LOCALVISITA, '+QuotedStr('FINALIZADO')+' FUNCAO, '+
                                    'RIGHT(PY_DATAE,2) + '+QuotedStr('/')+' + SUBSTRING(PY_DATAE,5,2) + '+QuotedStr('/')+' + LEFT(PY_DATAE, 4) ENTRADA, LEFT(PY_ENTRADA,2)+ '+QuotedStr(':')+' + RIGHT(PY_DATAE, 2) HENTRADA, '+
                                    'RIGHT(PY_DATAS,2) + '+QuotedStr('/')+' + SUBSTRING(PY_DATAS,5,2) + '+QuotedStr('/')+' + LEFT(PY_DATAS, 4) SAIDA, LEFT(PY_SAIDA,2)+ '+QuotedStr(':')+' + RIGHT(PY_SAIDA, 2) HSAIDA '+
                                    'FROM SPY010 '+
                                    'WHERE PY_DTVISIT <= '+QuotedStr(FormatDateTime('yyyymmdd',now()))+' AND LEN(LTRIM(PY_DTBAIXA)) > 0 AND D_E_L_E_T_ <> '+QuotedStr('*') + ' ORDER BY PY_DATAE DESC');
   frm_visitas.edtDe.Clear;
   frm_visitas.edtAte.Clear;
end;

procedure Tfrm_principal.frm_visitascgbIncluirClick(Sender: TObject);
var
   varDe,
   varAte,
   varData : String;
begin
   varDe := IfThen(Trim(frm_visitas.edtDe.Text) = '','        ',FormatDateTime('yyyymmdd',frm_visitas.edtDe.Date));
   varAte := IfThen(Trim(frm_visitas.edtAte.Text) = '','        ',FormatDateTime('yyyymmdd',frm_visitas.edtAte.Date));

   varData := 'PY_DTVISIT >= '+QuotedStr(varDe);
   varData := varData + ' AND PY_DTVISIT <= '+QuotedStr(varAte);

   frm_visitas.tab_finalizadas.Open('SELECT R_E_C_N_O_, PY_DATAE, PY_DATAS, PY_ENTRADA, PY_SAIDA, PY_VISITA, PY_NOMEMP, (SELECT TOP 1 PW_NOMFULL FROM SPW010 WHERE PW_VISITA = PY_VISITA) AS VISITANTE, (SELECT TOP 1 RA_NOME FROM SRA010 WHERE RA_MAT = PY_MAT) RESPONSAVEL, '+
                                          '(SELECT TOP 1 CTT_DESC01 FROM CTT010 WHERE CTT_CUSTO = PY_CC) LOCALVISITA, '+QuotedStr('FINALIZADO')+' FUNCAO, '+
                                          'RIGHT(PY_DATAE,2) + '+QuotedStr('/')+' + SUBSTRING(PY_DATAE,5,2) + '+QuotedStr('/')+' + LEFT(PY_DATAE, 4) ENTRADA, LEFT(PY_ENTRADA,2)+ '+QuotedStr(':')+' + RIGHT(PY_DATAE, 2) HENTRADA, '+
                                          'RIGHT(PY_DATAS,2) + '+QuotedStr('/')+' + SUBSTRING(PY_DATAS,5,2) + '+QuotedStr('/')+' + LEFT(PY_DATAS, 4) SAIDA, LEFT(PY_SAIDA,2)+ '+QuotedStr(':')+' + RIGHT(PY_SAIDA, 2) HSAIDA '+
                                          'FROM SPY010 '+
                                          'WHERE '+varData+' AND PY_DTVISIT <= '+QuotedStr(FormatDateTime('yyyymmdd',now()))+' AND LEN(LTRIM(PY_DTBAIXA)) > 0 AND D_E_L_E_T_ <> '+QuotedStr('*') + ' ORDER BY PY_DATAE DESC');
//                                          'WHERE PY_DTVISIT = '+QuotedStr(FormatDateTime('yyyymmdd',now()))+' AND LEN(LTRIM(PY_DTBAIXA)) > 0 AND D_E_L_E_T_ <> '+QuotedStr('*'));
end;

procedure Tfrm_principal.frm_visitasimg_sairClick(Sender: TObject);
begin
   frm_visitas.img_sairClick(Sender);
end;

procedure Tfrm_principal.frm_visitasPageControl1Change(Sender: TObject);
begin
   if frm_visitas.PageControl1.TabIndex = 0 then begin
      grbvisitas.Visible := True;
      grbvisitasfin.Visible := False;
   end
   else begin
      grbvisitasfin.Visible := True;
      grbvisitas.Visible := False;
   end;
   inherited;
end;

procedure Tfrm_principal.frm_visitasTabSheet1Show(Sender: TObject);
begin
   frm_visitas.TabSheet1Show(Sender);
end;

procedure Tfrm_principal.imgCloseClick(Sender: TObject);
begin
   Application.Terminate;
end;

procedure Tfrm_principal.imgEntSaiClick(Sender: TObject);
begin
   if (frm_visitas.Visible = False) and (frm_cadastro.img_excluir.Hint = 'Excluir')then begin
      frm_visitas.Visible := True;
      frm_cadastro.Visible := False;
      if frm_visitas.tab_principal.Active then begin
         frm_visitas.tab_principal.Refresh;
         frm_visitas.tab_principals.Refresh;
      end
      else begin
         frm_visitas.tab_principal.Close;
         frm_visitas.tab_principal.Open('SELECT PY_TIPOVIS, R_E_C_N_O_, PY_VISITA, PY_NOMEMP, (SELECT TOP 1 PW_NOMFULL FROM SPW010 WHERE PW_VISITA = PY_VISITA) AS VISITANTE, PY_DATAE, PY_ENTRADA, PY_DATAS, PY_SAIDA, (SELECT TOP 1 RA_NOME FROM SRA010 WHERE RA_MAT = PY_MAT) RESPONSAVEL, '+
                                        '(SELECT TOP 1 CTT_DESC01 FROM CTT010 WHERE CTT_CUSTO = PY_CC) LOCALVISITA, IIF(PY_TIPOVIS = 3,'+QuotedStr('AGUARDANDO SAIDA')+','+QuotedStr('REGISTRAR ENTRADA')+') FUNCAO, '+
                                        'RIGHT(PY_DATAE,2)+ '+QuotedStr('/')+' + SUBSTRING(PY_DATAE,5,2)+ '+QuotedStr('/')+' + LEFT(PY_DATAE, 4) ENTRADA, LEFT(PY_ENTRADA,2)+ '+QuotedStr(':')+' + RIGHT(PY_DATAE, 2) HENTRADA, '+
                                        'RIGHT(PY_DATAS,2)+ '+QuotedStr('/')+' + SUBSTRING(PY_DATAS,5,2)+ '+QuotedStr('/')+' + LEFT(PY_DATAS, 4) SAIDA, LEFT(PY_SAIDA,2)+ '+QuotedStr(':')+' + RIGHT(PY_SAIDA, 2) HSAIDA '+
                                        'FROM SPY010 '+
                                        'WHERE PY_DATAE = '+QuotedStr('')+' AND (PY_DTVISIT <= '+QuotedStr(FormatDateTime('yyyymmdd',now()))+' ) AND D_E_L_E_T_ <> '+QuotedStr('*') + ' AND PY_DTBAIXA = '+QuotedStr('')+' ORDER BY PY_TIPOVIS, VISITANTE');
//                                        'WHERE PY_DATAE = '+QuotedStr('')+' AND (PY_DTVISIT <= '+QuotedStr(FormatDateTime('yyyymmdd',now()))+' OR PY_DTVISIT = '+QuotedStr('')+') AND D_E_L_E_T_ <> '+QuotedStr('*') + ' AND PY_DTBAIXA = '+QuotedStr('')+' ORDER BY PY_TIPOVIS, VISITANTE');
         frm_visitas.tab_principals.Open('SELECT PY_TIPOVIS, R_E_C_N_O_, PY_VISITA, PY_NOMEMP, (SELECT TOP 1 PW_NOMFULL FROM SPW010 WHERE PW_VISITA = PY_VISITA) AS VISITANTE, PY_DATAE, PY_ENTRADA, PY_DATAS, PY_SAIDA, (SELECT TOP 1 RA_NOME FROM SRA010 WHERE RA_MAT = PY_MAT) RESPONSAVEL, '+
                                         '(SELECT TOP 1 CTT_DESC01 FROM CTT010 WHERE CTT_CUSTO = PY_CC) LOCALVISITA, IIF(PY_TIPOVIS = 3,'+QuotedStr('AGUARDANDO RETORNO')+','+QuotedStr('REGISTRAR SAIDA')+') FUNCAO, '+
                                         'RIGHT(PY_DATAE,2)+ '+QuotedStr('/')+' + SUBSTRING(PY_DATAE,5,2)+ '+QuotedStr('/')+' + LEFT(PY_DATAE, 4) ENTRADA, LEFT(PY_ENTRADA,2)+ '+QuotedStr(':')+' + RIGHT(PY_DATAE, 2) HENTRADA, '+
                                         'RIGHT(PY_DATAS,2)+ '+QuotedStr('/')+' + SUBSTRING(PY_DATAS,5,2)+ '+QuotedStr('/')+' + LEFT(PY_DATAS, 4) SAIDA, LEFT(PY_SAIDA,2)+ '+QuotedStr(':')+' + RIGHT(PY_SAIDA, 2) HSAIDA '+
                                         'FROM SPY010 '+
                                         'WHERE PY_DATAE <> '+QuotedStr('')+' AND (PY_DTVISIT <= '+QuotedStr(FormatDateTime('yyyymmdd',now()))+' ) AND D_E_L_E_T_ <> '+QuotedStr('*') + ' AND PY_DTBAIXA = '+QuotedStr('')+' ORDER BY PY_TIPOVIS, VISITANTE ');
         frm_visitas.tab_finalizadas.Open('SELECT R_E_C_N_O_, PY_DATAE, PY_DATAS, PY_ENTRADA, PY_SAIDA, PY_VISITA, PY_NOMEMP, (SELECT TOP 1 PW_NOMFULL FROM SPW010 WHERE PW_VISITA = PY_VISITA) AS VISITANTE, (SELECT TOP 1 RA_NOME FROM SRA010 WHERE RA_MAT = PY_MAT) RESPONSAVEL, '+
                                          '(SELECT TOP 1 CTT_DESC01 FROM CTT010 WHERE CTT_CUSTO = PY_CC) LOCALVISITA, '+QuotedStr('FINALIZADO')+' FUNCAO, '+
                                          'RIGHT(PY_DATAE,2) + '+QuotedStr('/')+' + SUBSTRING(PY_DATAE,5,2) + '+QuotedStr('/')+' + LEFT(PY_DATAE, 4) ENTRADA, LEFT(PY_ENTRADA,2)+ '+QuotedStr(':')+' + RIGHT(PY_DATAE, 2) HENTRADA, '+
                                          'RIGHT(PY_DATAS,2) + '+QuotedStr('/')+' + SUBSTRING(PY_DATAS,5,2) + '+QuotedStr('/')+' + LEFT(PY_DATAS, 4) SAIDA, LEFT(PY_SAIDA,2)+ '+QuotedStr(':')+' + RIGHT(PY_SAIDA, 2) HSAIDA '+
                                          'FROM SPY010 '+
                                          'WHERE PY_DTVISIT <= '+QuotedStr(FormatDateTime('yyyymmdd',now()))+' AND LEN(LTRIM(PY_DTBAIXA)) > 0 AND D_E_L_E_T_ <> '+QuotedStr('*') + ' ORDER BY PY_DATAE DESC');
//                                          'WHERE PY_DTVISIT = '+QuotedStr(FormatDateTime('yyyymmdd',now()))+' AND LEN(LTRIM(PY_DTBAIXA)) > 0 AND D_E_L_E_T_ <> '+QuotedStr('*'));
      end;
      frm_visitasPageControl1Change(Sender);
      frm_visitasTabSheet1Show(Sender);
   end;
end;

procedure Tfrm_principal.imgVisitanteClick(Sender: TObject);
begin
   if frm_cadastro.Visible = False then begin
      frm_visitas.Visible := False;
      frm_cadastro.Visible := True;
      frm_cadastro.Habilita(False);
      frm_cadastro.pnlDados.Align := alTop;
      frm_cadastro.pnlDados.Height := 100;
      frm_cadastro.pnlGrid.Align := alClient;
      frm_cadastro.Panel2.Caption := 'Mais Detalhes';
      grbvisitas.Visible := False;
      grbvisitasfin.Visible := False;

      frm_cadastro.tab_principal.Open('SELECT * FROM SPW010 WHERE D_E_L_E_T_ <> '+QuotedStr('*'));
   end
end;

end.
