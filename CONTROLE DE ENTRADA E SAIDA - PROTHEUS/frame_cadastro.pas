unit frame_cadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, StrUtils,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Touch.GestureMgr,
  System.Actions, Vcl.ActnList, JvExControls, JvLabel, dxGDIPlusClasses,
  Vcl.ExtCtrls, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid,DBCtrls, Winapi.ShellAPI, DBGrids, JvDBControls, JvDBLookup, JvDBSpinEdit,
  DBMaskEdit, JvDBCombobox, Vcl.StdCtrls, Vcl.Mask, Vcl.ComCtrls, JvExMask,
  JvToolEdit, Vcl.Menus, JvExStdCtrls, JvCombobox, cxContainer, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxDBEdit, Vcl.Buttons, JvMaskEdit,
  JvCheckedMaskEdit, JvDatePickerEdit, JvDBDatePickerEdit, JvExComCtrls,
  JvDateTimePicker, JvMonthCalendar, cxGroupBox;

function ValidaPis( PIS : String ) : Boolean;
function CalculaCnpjCpf(Numero : String) : Boolean;
function LPad(const s: String; Pad: Integer): String;

type
  Tfrm_cadastro = class(TFrame)
    Panel1: TPanel;
    JvLabel1: TJvLabel;
    ActionList1: TActionList;
    Action1: TAction;
    GestureManager1: TGestureManager;
    tab_principal: TFDQuery;
    dts_principal: TDataSource;
    popImagem: TPopupMenu;
    irarFoto1: TMenuItem;
    pnlDados: TPanel;
    Panel2: TPanel;
    pgcVisitantes: TPageControl;
    scbDados: TScrollBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Reservista: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label14: TLabel;
    edtVisitante: TDBEdit;
    edtNome: TDBEdit;
    edtSob1: TDBEdit;
    edtSob2: TDBEdit;
    edtSob4: TDBEdit;
    edtSob3: TDBEdit;
    edtCPF: TDBMaskEdit;
    edtPis: TDBMaskEdit;
    edtCP: TDBMaskEdit;
    edtRG: TDBMaskEdit;
    edtOrgEmis: TDBEdit;
    edtSerieCP: TDBMaskEdit;
    edtUfCP: TDBEdit;
    edtReservista: TDBMaskEdit;
    edtEleitoral: TDBMaskEdit;
    edtZonSec: TDBMaskEdit;
    edtOutro: TDBMaskEdit;
    edtDesOutro: TDBMaskEdit;
    edtTel: TDBMaskEdit;
    edtFax: TDBMaskEdit;
    edtEmail: TDBEdit;
    edtSexo: TJvDBComboBox;
    btnUfCP: TBitBtn;
    btnOrg: TBitBtn;
    edtSitVis: TJvDBComboBox;
    edtDefFis: TJvDBComboBox;
    edtNacionalidade: TDBEdit;
    btnNasc: TBitBtn;
    edtEnd: TDBEdit;
    edtUF: TDBEdit;
    btnUF: TBitBtn;
    edtMuni: TDBMaskEdit;
    edtBairro: TDBMaskEdit;
    edtComp: TDBEdit;
    edtHabilita: TDBMaskEdit;
    edtNasc: TDBMaskEdit;
    edtCadastro: TDBMaskEdit;
    DBMaskEdit3: TDBMaskEdit;
    BitBtn1: TBitBtn;
    btnCadastro: TBitBtn;
    btnNascimento: TBitBtn;
    JvMonthCalendar1: TJvMonthCalendar;
    tab_busca: TFDQuery;
    cxGroupBox1: TcxGroupBox;
    Image1: TImage;
    RemoverFoto1: TMenuItem;
    Label34: TLabel;
    pnlGrid: TPanel;
    cxgDados: TcxGrid;
    cxgDadosDBTableView1: TcxGridDBTableView;
    cxgDadosDBTableView1Column1: TcxGridDBColumn;
    cxgDadosDBTableView1Column2: TcxGridDBColumn;
    cxgDadosDBTableView1Column3: TcxGridDBColumn;
    cxgDadosDBTableView1Column4: TcxGridDBColumn;
    cxgDadosLevel1: TcxGridLevel;
    cxGroupBox2: TcxGroupBox;
    img_sair: TImage;
    cgbIncluir: TcxGroupBox;
    cgbAlterar: TcxGroupBox;
    cgbExcluir: TcxGroupBox;
    img_excluir: TImage;
    img_alterar: TImage;
    img_incluir: TImage;
    procedure img_sairClick(Sender: TObject);
    procedure img_incluirClick(Sender: TObject);
    procedure Bloqueia_Botoes(Ativo:Boolean;Botao, Botao2:String);
    procedure Habilita(Ativo:Boolean);
    procedure img_alterarClick(Sender: TObject);
    procedure img_excluirClick(Sender: TObject);
    procedure Panel2Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure JvMonthCalendar1DblClick(Sender: TObject);
    procedure btnNascimentoClick(Sender: TObject);
    procedure btnCadastroClick(Sender: TObject);
    procedure edtNascClick(Sender: TObject);
    procedure edtCadastroClick(Sender: TObject);
    procedure irarFoto1Click(Sender: TObject);
    procedure ImportarFoto1Click(Sender: TObject);
    procedure ExcluirFoto1Click(Sender: TObject);
    procedure btnOrgClick(Sender: TObject);
    procedure btnUfCPClick(Sender: TObject);
    procedure btnNascClick(Sender: TObject);
    procedure btnUFClick(Sender: TObject);
    procedure dts_principalDataChange(Sender: TObject; Field: TField);
    procedure Label34Click(Sender: TObject);
    procedure cxgDadosDBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
   pub_campo : String;
   pub_incluir : Boolean;
   function CpoExist(campo,Tipo,Doc:String) : Boolean;
    { Private declarations }
  public
    { Public declarations }
    procedure Incluir;
    procedure Alterar;
  end;

implementation

{$R *.dfm}

uses f_principal, f_busca, f_webcam;

procedure Tfrm_cadastro.ImportarFoto1Click(Sender: TObject);
begin
   ;
end;

procedure Tfrm_cadastro.Alterar;
var
   varCodigo : String;
   varUltVis : String;
   varNome : String;
   varCont : Integer;
begin
   //Validações
   pub_incluir := True;
   if (Trim(tab_principal.FieldByName('PW_VISITA').AsString) = '') then begin
      ShowMessage('Código Visitate não Informado');
      pub_incluir := False;
      Abort;
   end;

   if (CpoExist(tab_principal.FieldByName('PW_VISITA').AsString,'R_E_C_N_O_ <> '+tab_principal.FieldByName('R_E_C_N_O_').AsString+' AND PW_VISITA','VISITA')) then begin
      pub_incluir := False;
      Abort;
   end;

   if (Trim(tab_principal.FieldByName('PW_CPF').AsString) = '') and (Trim(tab_principal.FieldByName('PW_PIS').AsString) = '') and (Trim(tab_principal.FieldByName('PW_RG').AsString) = '') and (Trim(tab_principal.FieldByName('PW_NUMCP').AsString) = '') and
      (Trim(tab_principal.FieldByName('PW_HABILIT').AsString) = '') and (Trim(tab_principal.FieldByName('PW_RESERVI').AsString) = '') and (Trim(tab_principal.FieldByName('PW_TITULOE').AsString) = '') and (Trim(tab_principal.FieldByName('PW_OUTRDOC').AsString) = '') then begin
      ShowMessage('Informe Algum Documento de Identificacao');
      pub_incluir := False;
      Abort;
   end;

   if (CpoExist(tab_principal.FieldByName('PW_CPF').AsString,'R_E_C_N_O_ <> '+tab_principal.FieldByName('R_E_C_N_O_').AsString+' AND PW_CPF','CPF')) and
      (CpoExist(tab_principal.FieldByName('PW_PIS').AsString,'R_E_C_N_O_ <> '+tab_principal.FieldByName('R_E_C_N_O_').AsString+' AND PW_PIS','PIS')) and
      (CpoExist(tab_principal.FieldByName('PW_RG').AsString,'R_E_C_N_O_ <> '+tab_principal.FieldByName('R_E_C_N_O_').AsString+' AND PW_RG','RG')) and
      (CpoExist(tab_principal.FieldByName('PW_NUMCP').AsString,'R_E_C_N_O_ <> '+tab_principal.FieldByName('R_E_C_N_O_').AsString+' AND PW_NUMCP','CARTEIRA PROFISSIONAL')) and
      (CpoExist(tab_principal.FieldByName('PW_HABILIT').AsString,'R_E_C_N_O_ <> '+tab_principal.FieldByName('R_E_C_N_O_').AsString+' AND PW_HABILIT','HABILITAÇÃO')) and
      (CpoExist(tab_principal.FieldByName('PW_RESERVI').AsString,'R_E_C_N_O_ <> '+tab_principal.FieldByName('R_E_C_N_O_').AsString+' AND PW_RESERVI','RESERVITA')) and
      (CpoExist(tab_principal.FieldByName('PW_TITULOE').AsString,'R_E_C_N_O_ <> '+tab_principal.FieldByName('R_E_C_N_O_').AsString+' AND PW_TITULOE','TITULO ELEITORAL')) and
      (CpoExist(tab_principal.FieldByName('PW_OUTRDOC').AsString,'R_E_C_N_O_ <> '+tab_principal.FieldByName('R_E_C_N_O_').AsString+' AND PW_OUTRDOC','OUTRO DOCUMENTO')) then begin
      pub_incluir := False;
      Abort;
   end;

   if CalculaCnpjCpf(tab_principal.FieldByName('PW_CPF').AsString) then begin
      ShowMessage('CPF não é valido');
      pub_incluir := False;
      abort;
   end;

   if ValidaPis(tab_principal.FieldByName('PW_PIS').AsString) then begin
      ShowMessage('Numero PIS não é valido');
      pub_incluir := False;
      abort;
   end;
   //Fim das Validações


   varNome := tab_principal.FieldByName('PW_NOME').AsString;
   varNome := varNome + IfThen(Trim(tab_principal.FieldByName('PW_POSNOM1').AsString) <> '',' ' + tab_principal.FieldByName('PW_POSNOM1').AsString,'');
   varNome := varNome + IfThen(Trim(tab_principal.FieldByName('PW_POSNOM2').AsString) <> '',' ' + tab_principal.FieldByName('PW_POSNOM2').AsString,'');
   varNome := varNome + IfThen(Trim(tab_principal.FieldByName('PW_POSNOM3').AsString) <> '',' ' + tab_principal.FieldByName('PW_POSNOM3').AsString,'');
   varNome := varNome + IfThen(Trim(tab_principal.FieldByName('PW_POSNOM4').AsString) <> '',' ' + tab_principal.FieldByName('PW_POSNOM4').AsString,'');

   tab_principal.FieldByName('PW_NOMFULL').AsString := varNome;
end;

procedure Tfrm_cadastro.Incluir;
var
   varCodigo : String;
   varUltVis : String;
   varNome : String;
   varCont : Integer;
begin
   //Validações
   pub_incluir := True;
   if (Trim(tab_principal.FieldByName('PW_VISITA').AsString) = '') then begin
      ShowMessage('Código Visitate não Informado');
      pub_incluir := False;
      Abort;
   end;

   if (CpoExist(tab_principal.FieldByName('PW_VISITA').AsString,'PW_VISITA','VISITA')) then begin
      pub_incluir := False;
      Abort;
   end;

   if (Trim(tab_principal.FieldByName('PW_CPF').AsString) = '') and (Trim(tab_principal.FieldByName('PW_PIS').AsString) = '') and (Trim(tab_principal.FieldByName('PW_RG').AsString) = '') and (Trim(tab_principal.FieldByName('PW_NUMCP').AsString) = '') and
      (Trim(tab_principal.FieldByName('PW_HABILIT').AsString) = '') and (Trim(tab_principal.FieldByName('PW_RESERVI').AsString) = '') and (Trim(tab_principal.FieldByName('PW_TITULOE').AsString) = '') and (Trim(tab_principal.FieldByName('PW_OUTRDOC').AsString) = '') then begin
      ShowMessage('Informe Algum Documento de Identificacao');
      pub_incluir := False;
      Abort;
   end;

   if (CpoExist(tab_principal.FieldByName('PW_CPF').AsString,'PW_CPF','CPF')) and
      (CpoExist(tab_principal.FieldByName('PW_PIS').AsString,'PW_PIS','PIS')) and
      (CpoExist(tab_principal.FieldByName('PW_RG').AsString,'PW_RG','RG')) and
      (CpoExist(tab_principal.FieldByName('PW_NUMCP').AsString,'PW_NUMCP','CARTEIRA PROFISSIONAL')) and
      (CpoExist(tab_principal.FieldByName('PW_HABILIT').AsString,'PW_HABILIT','HABILITAÇÃO')) and
      (CpoExist(tab_principal.FieldByName('PW_RESERVI').AsString,'PW_RESERVI','RESERVITA')) and
      (CpoExist(tab_principal.FieldByName('PW_TITULOE').AsString,'PW_TITULOE','TITULO ELEITORAL')) and
      (CpoExist(tab_principal.FieldByName('PW_OUTRDOC').AsString,'PW_OUTRDOC','OUTRO DOCUMENTO')) then begin
      pub_incluir := False;
      Abort;
   end;

   if CalculaCnpjCpf(tab_principal.FieldByName('PW_CPF').AsString) then begin
      ShowMessage('CPF não é valido');
      pub_incluir := False;
      abort;
   end;

   if ValidaPis(tab_principal.FieldByName('PW_PIS').AsString) then begin
      ShowMessage('Numero PIS não é valido');
      pub_incluir := False;
      abort;
   end;
   //Fim das Validações

   tab_busca.Open('SELECT COALESCE(MAX(R_E_C_N_O_),0) + 1 FROM SPW010');
   varCodigo := tab_busca.Fields[0].AsString;


   for varCont := 0 to tab_principal.FieldDefs.Count -1 do begin
      if Trim(tab_principal.Fields[varCont].AsString) =  '' then
         if (tab_principal.Fields[varCont].FieldName = 'R_E_C_N_O_') then
            tab_principal.Fields[varCont].AsString := varCodigo
         else if (tab_principal.Fields[varCont].FieldName = 'R_E_C_D_E_L_') then
            tab_principal.Fields[varCont].AsString := '0'
         else
            tab_principal.Fields[varCont].AsString := ' ';
   end;
//   tab_principal.FieldByName('PW_NASC').AsString := IfThen(Trim(tab_principal.FieldByName('PW_NASC').AsString) <> '', CONCAT(RightStr(tab_principal.FieldByName('PW_NASC').AsString,4),MidStr(tab_principal.FieldByName('PW_NASC').AsString,3,2),LeftStr(tab_principal.FieldByName('PW_NASC').AsString,2)),'');

   varNome := tab_principal.FieldByName('PW_NOME').AsString;
   varNome := varNome + IfThen(Trim(tab_principal.FieldByName('PW_POSNOM1').AsString) <> '',' ' + tab_principal.FieldByName('PW_POSNOM1').AsString,'');
   varNome := varNome + IfThen(Trim(tab_principal.FieldByName('PW_POSNOM2').AsString) <> '',' ' + tab_principal.FieldByName('PW_POSNOM2').AsString,'');
   varNome := varNome + IfThen(Trim(tab_principal.FieldByName('PW_POSNOM3').AsString) <> '',' ' + tab_principal.FieldByName('PW_POSNOM3').AsString,'');
   varNome := varNome + IfThen(Trim(tab_principal.FieldByName('PW_POSNOM4').AsString) <> '',' ' + tab_principal.FieldByName('PW_POSNOM4').AsString,'');

   tab_principal.FieldByName('PW_NOMFULL').AsString := varNome;
end;

procedure Tfrm_cadastro.irarFoto1Click(Sender: TObject);
begin
   if tab_principal.FieldByName('R_E_C_N_O_').AsString <> '' then begin
      frm_principal.pubPar1 := tab_principal.FieldByName('R_E_C_N_O_').AsString;
      Application.CreateForm(Tfrm_webcam, frm_webcam);
      frm_webcam.ShowModal;
      tab_principal.Refresh;
      frm_principal.pubPar1 := '';
   end;
end;

procedure Tfrm_cadastro.JvMonthCalendar1DblClick(Sender: TObject);
begin
   if pub_campo = 'Nascimento' then begin
      edtNasc.Text := FormatDateTime('yyyymmdd',JvMonthCalendar1.Date);
   end
   else begin
      edtCadastro.Text := FormatDateTime('yyyymmdd',JvMonthCalendar1.Date)
   end;
   JvMonthCalendar1.Visible := False;
   pub_campo := '';
end;

procedure Tfrm_cadastro.Label34Click(Sender: TObject);
begin
   irarFoto1Click(Sender);
end;

procedure Tfrm_cadastro.img_alterarClick(Sender: TObject);
begin
   if img_alterar.Hint = 'Alterar' then begin
      pnlGrid.Align := alBottom;
      pnlGrid.Height := 213;
      pnlDados.Align := alClient;
      Panel2.Caption := 'Menos Detalhes';
      cxgDados.Enabled := False;
      Bloqueia_Botoes(False,'img_alterar','img_excluir');
      Habilita(True);
      img_alterar.Hint := 'Gravar';
      img_excluir.Hint := 'Cancelar';
      cgbalterar.Caption := 'Gravar';
      cgbexcluir.Caption := 'Cancelar';
      tab_principal.Edit;
   end
   else if img_alterar.Hint = 'Gravar' then begin
      Alterar;
      if pub_incluir then begin
         Bloqueia_Botoes(True,'','');
         Habilita(False);
         img_alterar.Hint := 'Alterar';
         img_excluir.Hint := 'Excluir';
         cgbalterar.Caption := 'Alterar';
         cgbexcluir.Caption := 'Excluir';
         tab_principal.Post;
         Panel2Click(Sender);
         cxgDados.Enabled := True;
         tab_principal.Refresh;
      end;
   end;
end;

procedure Tfrm_cadastro.img_excluirClick(Sender: TObject);
begin
   if img_excluir.Hint = 'Excluir' then begin
      if tab_principal.RecordCount > 0 then begin
         tab_principal.Edit;
         tab_principal.FieldByName('D_E_L_E_T_').AsString := '*';
         tab_principal.Post;
         tab_principal.Refresh;
         //if Application.MessageBox('Deseja Realmente Excluir este Registro','CONTROLE DE ENTRADAS E SAIDAS',4) = 6 then begin
         //   tab_principal.Delete;
         //end;
      end;
   end
   else if img_excluir.Hint = 'Cancelar' then begin
      Bloqueia_Botoes(True,'','');
      Habilita(False);
      img_incluir.Hint := 'Incluir';
      img_alterar.Hint := 'Alterar';
      img_excluir.Hint := 'Excluir';
      cgbalterar.Caption := 'Alterar';
      cgbincluir.Caption := 'Incluir';
      cgbexcluir.Caption := 'Excluir';
      tab_principal.Cancel;
      cxgDados.Enabled := True;
      Panel2Click(Sender);
   end;
end;

function LPad(const s: String; Pad: Integer): String;
begin
   if (Trim(s) = EmptyStr) or (Pad = 0) then
      Result := EmptyStr
   else
      Result := Format('¬*.*s', [Pad, Pad, s]);
end;

procedure Tfrm_cadastro.img_incluirClick(Sender: TObject);
var
   varCodigo : String;
begin
   if img_incluir.Hint = 'Incluir' then begin
      pnlGrid.Align := alBottom;
      pnlGrid.Height := 213;
      pnlDados.Align := alClient;
      Panel2.Caption := 'Menos Detalhes';
      cxgDados.Enabled := False;
      Bloqueia_Botoes(False,'img_incluir','img_excluir');
      Habilita(True);
      img_incluir.Hint := 'Gravar';
      img_excluir.Hint := 'Cancelar';
      cgbincluir.Caption := 'Gravar';
      cgbexcluir.Caption := 'Cancelar';
      tab_principal.Append;
      tab_busca.Open('SELECT COALESCE(MAX(PW_VISITA),0) + 1 FROM SPW010');
      varCodigo := tab_busca.Fields[0].AsString;
      tab_principal.FieldByName('PW_VISITA').AsString := LPad(varCodigo, 6);
      edtCadastro.Text := FormatDateTime('yyyymmdd',now());
      tab_principal.FieldByName('PW_FILIAL').AsString := '01';
   end
   else if img_incluir.Hint = 'Gravar' then begin
      Incluir;
      if pub_incluir then begin
         Bloqueia_Botoes(True,'','');
         Habilita(False);
         img_incluir.Hint := 'Incluir';
         img_excluir.Hint := 'Excluir';
         cgbincluir.Caption := 'Incluir';
         cgbexcluir.Caption := 'Excluir';
         tab_principal.Post;
         Panel2Click(Sender);
         cxgDados.Enabled := True;
         tab_principal.Refresh;
      end;
   end;
end;

procedure Tfrm_cadastro.img_sairClick(Sender: TObject);
begin
   Visible := False;
   tab_principal.Close;
end;

procedure Tfrm_cadastro.Panel2Click(Sender: TObject);
begin
   if (img_excluir.Hint = 'Excluir') then begin
      if Panel2.Caption = 'Mais Detalhes' then begin
         pnlGrid.Align := alBottom;
         pnlGrid.Height := 213;
         pnlDados.Align := alClient;
         Panel2.Caption := 'Menos Detalhes';
      end
      else begin
         pnlDados.Align := alTop;
         pnlDados.Height := 213;
         pnlGrid.Align := alClient;
         Panel2.Caption := 'Mais Detalhes'
      end;
   end;
end;

procedure Tfrm_cadastro.Habilita(Ativo:Boolean);
var
   var_percorre : Integer;
begin
   for var_percorre:= 0 to self.ComponentCount -1 do begin
      if (Self.Components[var_percorre] is TDBEdit) then
         (Self.Components[var_percorre] as TDBEdit).Enabled := Ativo
      else if (Self.Components[var_percorre] is TDBMaskEdit) then
         (Self.Components[var_percorre] as TDBMaskEdit).Enabled := Ativo
      else if (Self.Components[var_percorre] is TJvDBComboBox) then
         (Self.Components[var_percorre] as TJvDBComboBox).Enabled := Ativo
      else if (Self.Components[var_percorre] is TDBLookupComboBox) then
         (Self.Components[var_percorre] as TDBLookupComboBox).Enabled := Ativo
      else if (Self.Components[var_percorre] is TJvDBCalcEdit) then
         (Self.Components[var_percorre] as TJvDBCalcEdit).Enabled := Ativo
      else if (Self.Components[var_percorre] is TJvDBLookupCombo) then
         (Self.Components[var_percorre] as TJvDBLookupCombo).Enabled := Ativo
      else if (Self.Components[var_percorre] is TcxDBDateEdit) then
         (Self.Components[var_percorre] as TcxDBDateEdit).Enabled := Ativo
      else if (Self.Components[var_percorre] is TJvDBSpinEdit) then
         (Self.Components[var_percorre] as TJvDBSpinEdit).Enabled := Ativo
      else if (Self.Components[var_percorre] is TJvDBMaskEdit) then
         (Self.Components[var_percorre] as TJvDBMaskEdit).Enabled := Ativo
      else if (Self.Components[var_percorre] is TDBMemo) then
         (Self.Components[var_percorre] as TDBMemo).Enabled := Ativo
      else if (Self.Components[var_percorre] is TcxGrid) then
         (Self.Components[var_percorre] as TcxGrid).Enabled := not Ativo;
   end;
end;

procedure Tfrm_cadastro.Image1Click(Sender: TObject);
begin
   popImagem.Popup(752, 80);
end;

procedure Tfrm_cadastro.BitBtn1Click(Sender: TObject);
begin
   if tab_principal.State in [dsEdit, dsInsert] then begin
      JvMonthCalendar1.Top := 370;

      if (Sender as TObject).ClassName = 'TBitBtn' then begin
         if (Sender as TBitBtn).name = 'btnCadastro' then begin
            pub_campo := 'Cadastro';
            JvMonthCalendar1.Left := 202;
         end
         else begin
            pub_campo := 'Nascimento';
            JvMonthCalendar1.Left := 95;
         end;
      end;
      JvMonthCalendar1.Visible := True;
   end;
end;

procedure Tfrm_cadastro.Bloqueia_Botoes(Ativo:Boolean;Botao, Botao2:String);
var
   var_percorre : Integer;
begin
   for var_percorre:= 0 to self.ComponentCount -1 do begin
      if Self.Components[var_percorre] is TImage then begin
         if Ativo = False then begin
           if ((Self.Components[var_percorre] as TImage).Name <> Botao) and
              ((Self.Components[var_percorre] as TImage).Name <> Botao2) then
              (Self.Components[var_percorre] as TImage).Enabled := False;
//               img_procurar.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'Botoes\Procurar.png');
               img_sair.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'Botoes\Sair.png');

               if Botao = 'img_incluir' then
                  img_alterar.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'Botoes\Editar.png')
               else
                  img_incluir.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'Botoes\Incluir.png');
         end
         else begin
            (Self.Components[var_percorre] as TImage).Enabled := True;
         end;
      end;
   end;
   if (Botao = '') And (Botao2 = '') then begin
      img_incluir.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'Botoes\AIncluir.png');
      img_excluir.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'Botoes\AExcluir.png');
      img_alterar.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'Botoes\AEditar.png');
//      img_procurar.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'Botoes\AProcurar.png');
      img_sair.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'Botoes\ASair.png');
   end;
end;

procedure Tfrm_cadastro.btnCadastroClick(Sender: TObject);
begin
   BitBtn1Click(Sender);
end;

procedure Tfrm_cadastro.btnNascClick(Sender: TObject);
begin
   if img_excluir.Hint <> 'Excluir' then begin
      frm_principal.pubRet1 := '';
      Tfrm_busca.Create(Self,'SELECT X5_CHAVE, X5_DESCRI FROM SX5010 WHERE X5_TABELA = '+QuotedStr('34')+' AND D_E_L_E_T_ <> '+QuotedStr('*')).ShowModal;
      if frm_principal.pubRet1 <> '' then
         edtNacionalidade.Text := frm_principal.pubRet1;
   end;
end;

procedure Tfrm_cadastro.btnNascimentoClick(Sender: TObject);
begin
   BitBtn1Click(Sender);
end;

procedure Tfrm_cadastro.btnOrgClick(Sender: TObject);
begin
   if img_excluir.Hint <> 'Excluir' then begin
      frm_principal.pubRet1 := '';
      Tfrm_busca.Create(Self,'SELECT X5_CHAVE, X5_DESCRI FROM SX5010 WHERE X5_TABELA = '+QuotedStr('64')+' AND D_E_L_E_T_ <> '+QuotedStr('*')).ShowModal;
      if frm_principal.pubRet1 <> '' then
         edtOrgEmis.Text := frm_principal.pubRet1;
   end;
end;

procedure Tfrm_cadastro.btnUFClick(Sender: TObject);
begin
   if img_excluir.Hint <> 'Excluir' then begin
      frm_principal.pubRet1 := '';
      Tfrm_busca.Create(Self,'SELECT X5_CHAVE, X5_DESCRI FROM SX5010 WHERE X5_TABELA = '+QuotedStr('12')+' AND D_E_L_E_T_ <> '+QuotedStr('*')).ShowModal;
      if frm_principal.pubRet1 <> '' then
         edtUF.Text := frm_principal.pubRet1;
   end;
end;

procedure Tfrm_cadastro.btnUfCPClick(Sender: TObject);
begin
   if img_excluir.Hint <> 'Excluir' then begin
      frm_principal.pubRet1 := '';
      Tfrm_busca.Create(Self,'SELECT X5_CHAVE, X5_DESCRI FROM SX5010 WHERE X5_TABELA = '+QuotedStr('12')+' AND D_E_L_E_T_ <> '+QuotedStr('*')).ShowModal;
      if frm_principal.pubRet1 <> '' then
         edtUFCp.Text := frm_principal.pubRet1;
   end;
end;

procedure Tfrm_cadastro.edtCadastroClick(Sender: TObject);
begin
   btnCadastro.Click;
end;

procedure Tfrm_cadastro.edtNascClick(Sender: TObject);
begin
   btnNasc.Click;
end;

procedure Tfrm_cadastro.ExcluirFoto1Click(Sender: TObject);
begin
   ;
end;

Function ValidaPis( PIS : String ) : Boolean;
var
  i, wSoma, wM11, wDv, wDigito : Integer;
begin
   if Trim(PIS) = '' then begin
      Result:=False
   end
   else begin
      if StringReplace(PIS,' ','',[rfReplaceAll]) <> '' then begin
         wDv   := StrToInt( Copy( PIS, 11, 1 ) );
         wSoma := 0;
         wM11  := 2;
         for i := 1 to 10 do begin
            wSoma := wSoma + ( wM11 * StrToInt( Copy( PIS, 11 - I, 1 ) ) );
            if wM11 < 9 then
               wM11 := wM11 + 1
            else
               wM11 := 2;
         end;
         wDigito := 11 - ( wSoma Mod 11 );
         if wDigito > 9 then
            wDigito := 0;

         if wDv = wDigito then
            ValidaPis := False
         else
            ValidaPis := True;
      end;
   end;
end;

function CalculaCnpjCpf(Numero : String) : Boolean;
var
   n1,n2,n3,n4,n5,n6,n7,n8,n9:integer;
   d1,d2:integer;
   digitado, calculado:string;
begin
   if Trim(Numero) = '' then begin
      Result:=False
   end
   else begin
      n1:= StrToInt(Numero[1]);
      n2:= StrToInt(Numero[2]);
      n3:= StrToInt(Numero[3]);
      n4:= StrToInt(Numero[4]);
      n5:= StrToInt(Numero[5]);
      n6:= StrToInt(Numero[6]);
      n7:= StrToInt(Numero[7]);
      n8:= StrToInt(Numero[8]);
      n9:= StrToInt(Numero[9]);
      d1:= n9*2+n8*3+n7*4+n6*5+n5*6+n4*7+n3*8+n2*9+n1*10;
      d1:= 11-(d1 mod 11);
      if d1>=10 then
         d1:=0;
      d2:= d1*2+n9*3+n8*4+n7*5+n6*6+n5*7+n4*8+n3*9+n2*10+n1*11;
      d2:= 11-(d2 mod 11);
      if d2>=10 then
         d2:=0;
      calculado:= inttostr(d1)+inttostr(d2);
      digitado:= Numero[10]+Numero[11];
      if calculado = digitado then
         Result:=False
      else
         Result:=True;
   end;
end;

//Demais Documentos Valida se Já Existe no Cadastro

function Tfrm_cadastro.CpoExist(campo,Tipo,Doc:String) : Boolean;
begin
   Result := False;
   if Trim(Campo) <> '' then begin
      tab_busca.Open('SELECT PW_VISITA FROM SPW010 WHERE '+ifThen(Doc = 'VISITA',Tipo+' = '+QuotedStr(Campo),'D_E_L_E_T_ <> '+QuotedStr('*')+' AND '+Tipo+' = '+QuotedStr(Campo)));

      if tab_busca.RecordCount > 0 then begin
         ShowMessage(ifThen(Doc = 'VISITA','Código Visitante Já Utilizado','Documento de Identificacao ('+Doc+') ja registrado para o Visitante: '+tab_busca.Fields[0].AsString));
         pub_incluir := False;
         Result := True;
      end;
   end;
end;

procedure Tfrm_cadastro.cxgDadosDBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
   pnlGrid.Align := alBottom;
   pnlGrid.Height := 213;
   pnlDados.Align := alClient;
   Panel2.Caption := 'Menos Detalhes';
end;

procedure Tfrm_cadastro.dts_principalDataChange(Sender: TObject; Field: TField);
begin
   if img_excluir.hint = 'Excluir' then begin
      //Carrega Imagem do Visitante se Existir
      try
         Image1.Picture.Bitmap.LoadFromFile('\\srv-erp-testes\TOTVS\Protheus_Data\system\fotoces\'+tab_principal.FieldByName('R_E_C_N_O_').AsString+'.bmp');
         Image1.Stretch := True;
//         Image1.Proportional := True;
      except
         Image1.Picture := nil;
      end;
   end;
end;

end.
