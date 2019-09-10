unit f_visita;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, System.Actions, Vcl.ActnList, Vcl.Touch.GestureMgr,
  JvExControls, JvLabel, Vcl.Buttons, Vcl.Mask, Vcl.DBCtrls, JvExStdCtrls,
  JvCombobox, JvDBCombobox, DBMaskEdit, dxGDIPlusClasses, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.ComCtrls,
  JvExComCtrls, JvMonthCalendar, StrUtils;

function LPad(value:string; tamanho:integer; caractere:char): string;
function RPad(value:string; tamanho:integer; caractere:char): string;

type
  Tfrm_visita = class(TForm)
    GestureManager1: TGestureManager;
    Panel3: TPanel;
    JvLabel2: TJvLabel;
    edtVisitante: TDBEdit;
    edtNVisitante: TEdit;
    edtMatricula: TDBEdit;
    btnVisitante: TBitBtn;
    edtContato: TEdit;
    btnContato: TBitBtn;
    edtCentroCusto: TDBEdit;
    edtDCentroCusto: TEdit;
    btnCentroCusto: TBitBtn;
    edtCracha: TDBEdit;
    edtEmpresa: TDBEdit;
    edtVisita: TDBMaskEdit;
    btnVisita: TBitBtn;
    edtBaixa: TDBMaskEdit;
    btnBaixa: TBitBtn;
    edtEntrada: TDBMaskEdit;
    btnEntrada: TBitBtn;
    edtSaida: TDBMaskEdit;
    BtnSaida: TBitBtn;
    edtHoraEntrada: TDBMaskEdit;
    edtHoraSaida: TDBMaskEdit;
    edtTipoVisita: TJvDBComboBox;
    edtClassificacao: TJvDBComboBox;
    edtPlaca: TDBMaskEdit;
    Label1: TLabel;
    Label4: TLabel;
    Panel1: TPanel;
    JvLabel1: TJvLabel;
    img_incluir: TImage;
    img_excluir: TImage;
    Label2: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label5: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    Label15: TLabel;
    Label14: TLabel;
    Label13: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    dts_principal: TDataSource;
    tab_principal: TFDQuery;
    JvMonthCalendar1: TJvMonthCalendar;
    tab_busca: TFDQuery;
    tab_busca_reg: TFDQuery;
    procedure BitBtn1Click(Sender: TObject);
    procedure btnVisitaClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure img_incluirClick(Sender: TObject);
    procedure img_excluirClick(Sender: TObject);
    procedure edtVisitanteChange(Sender: TObject);
    procedure edtMatriculaChange(Sender: TObject);
    procedure edtCentroCustoChange(Sender: TObject);
    procedure btnVisitanteClick(Sender: TObject);
    procedure btnContatoClick(Sender: TObject);
    procedure btnCentroCustoClick(Sender: TObject);
  private
    pub_campo : String;
    procedure Incluir;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_visita: Tfrm_visita;

implementation

{$R *.dfm}

uses f_principal, f_busca;

procedure Tfrm_visita.Incluir;
begin
   ;
end;

procedure Tfrm_visita.btnCentroCustoClick(Sender: TObject);
begin
   frm_principal.pubRet1 := '';
   Tfrm_busca.Create(Self,'SELECT CTT_CUSTO, CTT_DESC01 FROM CTT010 WHERE D_E_L_E_T_ <> '+QuotedStr('*')).ShowModal;
   if frm_principal.pubRet1 <> '' then
      edtCentroCusto.Text := frm_principal.pubRet1;
end;

procedure Tfrm_visita.btnContatoClick(Sender: TObject);
begin
   frm_principal.pubRet1 := '';
   Tfrm_busca.Create(Self,'SELECT RA_MAT, RA_NOMECMP FROM SRA010 WHERE D_E_L_E_T_ <> '+QuotedStr('*')).ShowModal;
   if frm_principal.pubRet1 <> '' then
      edtMatricula.Text := frm_principal.pubRet1;
end;

procedure Tfrm_visita.btnVisitaClick(Sender: TObject);
begin
   BitBtn1Click(Sender);
end;

procedure Tfrm_visita.btnVisitanteClick(Sender: TObject);
begin
   frm_principal.pubRet1 := '';
   Tfrm_busca.Create(Self,'SELECT PW_VISITA, PW_NOMFULL FROM SPW010 WHERE D_E_L_E_T_ <> '+QuotedStr('*')).ShowModal;
   if frm_principal.pubRet1 <> '' then
      edtVisitante.Text := frm_principal.pubRet1;
end;

procedure Tfrm_visita.edtCentroCustoChange(Sender: TObject);
begin
   edtDCentroCusto.Clear;
   tab_busca.Open('SELECT CTT_DESC01 FROM CTT010 WHERE CTT_CUSTO = '+QuotedStr(edtCentroCusto.Text));
   if Trim(tab_busca.Fields[0].AsString) <> '' then begin
      edtDCentroCusto.Text := tab_busca.Fields[0].AsString;
      edtCentroCusto.Enabled := False;
   end;
end;

procedure Tfrm_visita.edtMatriculaChange(Sender: TObject);
begin
   edtContato.Clear;
   tab_busca.Open('SELECT RA_NOMECMP, RA_CC FROM SRA010 WHERE RA_MAT = '+QuotedStr(edtMatricula.Text));
   if Trim(tab_busca.Fields[0].AsString) <> '' then begin
      edtContato.Text := tab_busca.Fields[0].AsString;
      edtCentroCusto.Text := tab_busca.Fields[1].AsString;
   end;
end;

procedure Tfrm_visita.edtVisitanteChange(Sender: TObject);
begin
   edtNVisitante.Clear;
   tab_busca.Open('SELECT PW_NOMFULL FROM SPW010 WHERE PW_VISITA = '+QuotedStr(edtVisitante.Text));
   if Trim(tab_busca.Fields[0].AsString) <> '' then
      edtNVisitante.Text := tab_busca.Fields[0].AsString;
end;

procedure Tfrm_visita.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Key = VK_ESCAPE) then begin
      JvMonthCalendar1.Visible := False;
   end;
   if Key = VK_F1 then img_incluirClick(Sender);
   if Key = VK_F2 then img_excluirClick(Sender);
end;

procedure Tfrm_visita.FormShow(Sender: TObject);
var
   varCont : Integer;
begin
   tab_principal.Open('SELECT TOP 0 * FROM SPY010');
   tab_principal.Append;

   edtTipoVisita.ItemIndex := 0;
   edtClassificacao.ItemIndex := 0;
   edtVisita.Text := FormatDateTime('yyyymmdd',now());

   tab_busca.Open('SELECT MAX(CAST(PY_CRACHA AS INTEGER)) + 1 FROM SPY010');
   tab_principal.FieldByName('PY_CRACHA').AsString:= LPAD(tab_busca.Fields[0].AsString,6,'0');

   if Trim(frm_principal.pubPar1) <> '' then begin
      tab_busca_reg.Open('SELECT * FROM SPY010 WHERE R_E_C_N_O_ = '+frm_principal.pubPar1);
      frm_principal.pubPar1 := '';
      for varCont := 0 to tab_principal.FieldDefs.Count -1 do begin
         if (tab_principal.Fields[varCont].FieldName <> 'R_E_C_N_O_') and (tab_principal.Fields[varCont].FieldName <> 'PY_NUMERO') then begin
            if (tab_principal.Fields[varCont].FieldName = 'PY_ENTRADA') then
               tab_principal.Fields[varCont].AsFloat := 00.00
            else if (tab_principal.Fields[varCont].FieldName = 'PY_SAIDA') then
               tab_principal.Fields[varCont].AsFloat :=  00.00
            else if (tab_principal.Fields[varCont].FieldName = 'PY_DTBAIXA') then
               tab_principal.Fields[varCont].AsString := ' '
            else if (tab_principal.Fields[varCont].FieldName = 'PY_DATAS') then
               tab_principal.Fields[varCont].AsString :=  ' '
            else if (tab_principal.Fields[varCont].FieldName = 'PY_DATAE') then
               tab_principal.Fields[varCont].AsString :=  ' '
            else if (tab_principal.Fields[varCont].FieldName = 'PY_DTVISIT') then
               tab_principal.Fields[varCont].AsString := FormatDateTime('yyyymmdd',now())
            else
               tab_principal.Fields[varCont].AsString := tab_busca_reg.FieldByName(tab_principal.Fields[varCont].FieldName).AsString;
         end;
      end;
   end;
end;

procedure Tfrm_visita.img_excluirClick(Sender: TObject);
begin
   tab_principal.Cancel;
   tab_principal.Close;
   Close;
end;

procedure Tfrm_visita.img_incluirClick(Sender: TObject);
var
   varCodigo : String;
   varNumero : String;
   varCont   : Integer;
begin
   if Trim(edtNVisitante.Text) = '' then begin
      ShowMessage('Visitante Não Selecionado!');
      Abort;
   end;
   if (Trim(edtContato.Text) = '') and (Trim(edtDCentroCusto.Text) = '') then begin
      ShowMessage('Contato\Departamento Não Selecionado!');
      Abort;
   end;
   if (Trim(edtVisita.Text) = '') then begin
      ShowMessage('Data Visita não Preenchida!');
      Abort;
   end;

   edtTipoVisita.ItemIndex := StrToInt(IfThen(edtTipoVisita.ItemIndex = -1,'0',IntToStr(edtTipoVisita.ItemIndex)));
   edtClassificacao.ItemIndex := StrToInt(IfThen(edtClassificacao.ItemIndex = -1,'0',IntToStr(edtClassificacao.ItemIndex)));

   tab_busca.Open('SELECT COALESCE(MAX(R_E_C_N_O_),0) + 1 FROM SPY010');
   varCodigo := tab_busca.Fields[0].AsString;

   tab_busca.Open('SELECT MAX(CAST(PY_NUMERO AS INTEGER)) + 1 FROM SPY010');
   varNumero := LPAD(tab_busca.Fields[0].AsString,9,'0');

   for varCont := 0 to tab_principal.FieldDefs.Count -1 do begin
      if (tab_principal.Fields[varCont].FieldName = 'PY_ENTRADA') and (Trim(tab_principal.Fields[varCont].AsString) =  '.') then begin
           tab_principal.Fields[varCont].AsFloat := 00.00;
      end
      else if (tab_principal.Fields[varCont].FieldName = 'PY_SAIDA') and (Trim(tab_principal.Fields[varCont].AsString) =  '.') then begin
           tab_principal.Fields[varCont].AsFloat := 00.00;
      end
      else begin
         if Trim(tab_principal.Fields[varCont].AsString) =  '' then begin
            if (tab_principal.Fields[varCont].FieldName = 'R_E_C_N_O_') then
               tab_principal.Fields[varCont].AsString := varCodigo
            else if (tab_principal.Fields[varCont].FieldName = 'PY_NUMERO') then
               tab_principal.Fields[varCont].AsString := varNumero
            else if (tab_principal.Fields[varCont].FieldName = 'R_E_C_D_E_L_') then
               tab_principal.Fields[varCont].AsString := '0'
            else if (tab_principal.Fields[varCont].FieldName = 'PY_ENTRADA') then
               tab_principal.Fields[varCont].AsFloat := 00.00
            else if (tab_principal.Fields[varCont].FieldName = 'PY_SAIDA') then
               tab_principal.Fields[varCont].AsFloat := 00.00
            else
               tab_principal.Fields[varCont].AsString := ' ';
         end;
      end;
   end;

   tab_principal.FieldByName('PY_FILIAL').AsString := '01';
//   tab_principal.FieldByName('PY_ENTRADA').AsString := IFTHEN(Trim(tab_principal.FieldByName('PY_ENTRADA').AsString) = '.','0',tab_principal.FieldByName('PY_ENTRADA').AsString);
//   tab_principal.FieldByName('PY_SAIDA').AsString := IFTHEN(Trim(tab_principal.FieldByName('PY_SAIDA').AsString) = '.','0',tab_principal.FieldByName('PY_SAIDA').AsString);
//   ShowMessage(tab_principal.FieldByName('PY_ENTRADA').AsString);
//   ShowMessage(tab_principal.FieldByName('PY_SAIDA').AsString);

   tab_principal.Post;
   Close;
end;

procedure Tfrm_visita.BitBtn1Click(Sender: TObject);
begin
   if tab_principal.State in [dsEdit, dsInsert] then begin
      JvMonthCalendar1.Top := 370;

      if (Sender as TObject).ClassName = 'TBitBtn' then begin
         if (Sender as TBitBtn).name = 'btnVisita' then begin
            pub_campo := 'Visita';
            JvMonthCalendar1.Left := 202;
         end
         else if (Sender as TBitBtn).name = 'btnBaixa' then begin
            pub_campo := 'Baixa';
            JvMonthCalendar1.Left := 202;
         end
         else if (Sender as TBitBtn).name = 'btnEntrada' then begin
            pub_campo := 'Entrada';
            JvMonthCalendar1.Left := 202;
         end
         else begin
            pub_campo := 'Saida';
            JvMonthCalendar1.Left := 95;
         end;
      end;
      JvMonthCalendar1.Visible := True;
   end;
end;

function LPad(value:string; tamanho:integer; caractere:char): string;
var
   i : integer;
begin
   Result := value;
   if(Length(value) > tamanho) then
      exit;
   for i := 1 to (tamanho - Length(value)) do
      Result := caractere + Result;
end;

function RPad(value:string; tamanho:integer; caractere:char): string;
var
   i : integer;
begin
   Result := value;
   if(Length(value) > tamanho)then
      exit;
   for i := 1 to (tamanho - Length(value)) do
      Result := Result + caractere;
end;

end.
