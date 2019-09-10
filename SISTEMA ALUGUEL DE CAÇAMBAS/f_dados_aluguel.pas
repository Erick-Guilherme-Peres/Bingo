unit f_dados_aluguel;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, f_cadastro, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Touch.GestureMgr, System.Actions, Vcl.ActnList,
  JvExControls, JvLabel, dxGDIPlusClasses, Vcl.ExtCtrls, JvExMask, JvToolEdit,
  JvMaskEdit, JvDBControls, Vcl.Buttons, SHDocVw, Winapi.UrlMon, Winapi.ActiveX,
  JvBaseEdits, QRCtrls, QuickRpt;

type
  TBrowser = class(SHDocVw.TWebbrowser, IDispatch)
  protected
    FUserAgent: string;
    function Invoke(DispID: Integer; const IID: TGUID; LocaleID: Integer; Flags: Word; var Params; VarResult, ExcepInfo, ArgErr: Pointer): HRESULT; stdcall;
  public
    procedure SetUserAgent(const Value: string);
    property UserAgent: string read FUserAgent write SetUserAgent;
    constructor Create(AOwner: TComponent); override;
  end;


type
  Tfrm_dados_aluguel = class(Tfrm_cadastro)
    pnlDados: TPanel;
    edtNome: TDBEdit;
    Label10: TLabel;
    Label17: TLabel;
    btnProfissional: TBitBtn;
    edt_documento: TJvDBMaskEdit;
    edtCelular: TJvDBMaskEdit;
    Label12: TLabel;
    Label11: TLabel;
    edtTelefone: TJvDBMaskEdit;
    edtCep: TJvDBMaskEdit;
    Label3: TLabel;
    Label4: TLabel;
    edtEndereco: TDBEdit;
    Label5: TLabel;
    edtNumero: TDBEdit;
    Label6: TLabel;
    edtComplemento: TDBEdit;
    edtBairro: TDBEdit;
    Label9: TLabel;
    edtEstado: TDBComboBox;
    Label8: TLabel;
    edtCidade: TDBLookupComboBox;
    Label7: TLabel;
    Label13: TLabel;
    edtObservacao: TDBEdit;
    pnl_browser: TPanel;
    Label2: TLabel;
    edtData: TJvDBDateEdit;
    edt_periodo: TJvDBCalcEdit;
    Label1: TLabel;
    Label16: TLabel;
    edt_retirada: TJvDBDateEdit;
    edtValor: TJvDBCalcEdit;
    Label14: TLabel;
    img_finalizar: TImage;
    DBCheckBox1: TDBCheckBox;
    qrp_recibo: TQuickRep;
    img_imprimir: TImage;
    img_visualizar: TImage;
    QRBand1: TQRBand;
    QRLabel40: TQRLabel;
    QRLabel17: TQRLabel;
    Número: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    qrlCacamba: TQRLabel;
    qrlCacamba1: TQRLabel;
    qrlTamanho1: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRLabel30: TQRLabel;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRLabel31: TQRLabel;
    QRDBText19: TQRDBText;
    QRLabel32: TQRLabel;
    QRLabel35: TQRLabel;
    QRDBText22: TQRDBText;
    QRLabel36: TQRLabel;
    QRDBText23: TQRDBText;
    QRLabel13: TQRLabel;
    QRDBText9: TQRDBText;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText20: TQRDBText;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel46: TQRLabel;
    QRDBText21: TQRDBText;
    QRDBText24: TQRDBText;
    QRLabel47: TQRLabel;
    QRDBText25: TQRDBText;
    QRLabel48: TQRLabel;
    QRLabel51: TQRLabel;
    QRDBText28: TQRDBText;
    QRLabel52: TQRLabel;
    QRLabel53: TQRLabel;
    QRLabel54: TQRLabel;
    QRLabel55: TQRLabel;
    QRLabel56: TQRLabel;
    QRLabel57: TQRLabel;
    QRLabel58: TQRLabel;
    QRLabel59: TQRLabel;
    QRImage1: TQRImage;
    QRImage2: TQRImage;
    qrlTamanho: TQRLabel;
    QRDBText26: TQRDBText;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRDBText27: TQRDBText;
    procedure FormShow(Sender: TObject);
    procedure dts_principalDataChange(Sender: TObject; Field: TField);
    procedure edtCidadeEnter(Sender: TObject);
    procedure img_incluirClick(Sender: TObject);
    procedure img_alterarClick(Sender: TObject);
    procedure btnProfissionalClick(Sender: TObject);
    procedure edtCepExit(Sender: TObject);
    procedure edt_periodoExit(Sender: TObject);
    procedure img_finalizarClick(Sender: TObject);
    procedure img_visualizarClick(Sender: TObject);
    procedure img_imprimirClick(Sender: TObject);
    procedure img_excluirClick(Sender: TObject);
  private
    varCacamba : String;
    varCodigo : String;
    wbb_local  : TBrowser;
    varCont : Integer;
    { Private declarations }
  public
    { Public declarations }
     constructor Create(AOwner: TComponent; CodCacamba, Cacamba, Tipo, Codigo : String);
     procedure wbb_localDocumentComplete(ASender: TObject;  const pDisp: IDispatch; const URL: OleVariant);
     procedure Excluir; override;
     procedure Alterar; override;
     procedure Incluir; override;
  end;

var
  frm_dados_aluguel: Tfrm_dados_aluguel;

implementation

{$R *.dfm}

uses f_principal, funcoes, f_localizar;

procedure Tfrm_dados_aluguel.Incluir; begin end;
procedure Tfrm_dados_aluguel.Excluir; begin end;
procedure Tfrm_dados_aluguel.Alterar; begin end;

constructor TBrowser.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FUserAgent:='';
end;

function TBrowser.Invoke(DispID: Integer; const IID: TGUID; LocaleID: Integer; Flags: Word; var Params; VarResult, ExcepInfo, ArgErr: Pointer): HRESULT;
begin
  //check if the DISPID_AMBIENT_USERAGENT flag is being processed and if the User Agent to set is not empty
  if (FUserAgent <> '') and (Flags and DISPATCH_PROPERTYGET <> 0) and Assigned(VarResult) and (DispId=DISPID_AMBIENT_USERAGENT) then
  begin
    //set the user agent
    POleVariant(VarResult)^:= FUserAgent+#13#10;
    Result := S_OK; //return S_OK
  end
  else
  Result := inherited Invoke(DispID, IID, LocaleID, Flags, Params, VarResult, ExcepInfo, ArgErr); //call the default Invoke method
end;

procedure TBrowser.SetUserAgent(const Value: string);
begin
  FUserAgent := Value;
  UrlMkSetSessionOption(URLMON_OPTION_USERAGENT, PAnsiString(AnsiString(Value)), Length(Value), 0);
end;

procedure Tfrm_dados_aluguel.btnProfissionalClick(Sender: TObject);
var
   tabCliente : TFDQuery;
   varCodigo  : String;
begin
   tabCliente:= TFDQuery.Create(Application);
   tabCliente.Connection := frm_principal.sql_conecta;

   if tab_principal.State in [dsInsert, dsEdit] then begin
      if not Assigned (frm_localizar) then
         Application.CreateForm(Tfrm_localizar, frm_localizar);
      frm_localizar.pub_campos:='codigo, nome, Documento, CONCAT(Endereco," nº",Numero) Endereco, CEP';
      frm_localizar.pub_captions:='Codigo, Nome;Documento;Endereco;CEP';
      frm_localizar.pub_tabela:='pedido GROUP BY Nome, Documento, Endereco, CEP';
      frm_localizar.pub_filtro:='';
      frm_localizar.ShowModal;
      if pub_busca_dados <> '' then begin
         tabCliente.Open('SELECT * FROM pedido WHERE codigo = '+pub_busca_dados);
         tab_principal.FieldByName('telefone').AsString := tabCliente.FieldByName('telefone').AsString;
         tab_principal.FieldByName('celular').AsString := tabCliente.FieldByName('celular').AsString;
         tab_principal.FieldByName('nome').AsString := tabCliente.FieldByName('Nome').AsString;
         tab_principal.FieldByName('cep').AsString := tabCliente.FieldByName('Cep').AsString;
         tab_principal.FieldByName('Endereco').AsString := tabCliente.FieldByName('endereco').AsString;
         tab_principal.FieldByName('bairro').AsString := tabCliente.FieldByName('bairro').AsString;
         tab_principal.FieldByName('cidade').AsString := tabCliente.FieldByName('cidade').AsString;
         tab_principal.FieldByName('estado').AsString := tabCliente.FieldByName('estado').AsString;
         tab_principal.FieldByName('complemento').AsString := tabCliente.FieldByName('complemento').AsString;
         tab_principal.FieldByName('numero').AsString := tabCliente.FieldByName('numero').AsString;
         edtCepExit(Sender);
      end;
   end;
end;

constructor Tfrm_dados_aluguel.Create(AOwner: TComponent; CodCacamba, Cacamba, Tipo, Codigo : String);
begin
   varCont := 1;
   inherited Create(AOwner);
   varCacamba := CodCacamba;
   varCodigo := Codigo;

   img_finalizar.Visible := False;
   if Trim(Tipo) <> '' then begin
      img_finalizar.Visible := True;
      img_alterar.Visible := True;
      img_incluir.Visible := False;
   end
   else begin
      img_finalizar.Visible := False;
      img_alterar.Visible := False;
      img_incluir.Visible := True;
   end;


   JvLabel1.Caption := JvLabel1.Caption + ' (' + Cacamba + ')';

   wbb_local := TBrowser.Create(pnl_browser);
//   wbb_local.SetUserAgent('Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.3319.102 Safari/537.36');
//   wbb_local.SetUserAgent('Mozilla/5.0 (Windows; U; Windows NT 6.1; rv:2.2) Gecko/20110201');
   TControl(wbb_local).Parent := pnl_browser;
   wbb_local.Visible := True;
   wbb_local.Align := alClient;
   wbb_local.Silent := True;
   wbb_local.OnDocumentComplete := wbb_localDocumentComplete;
end;

procedure Tfrm_dados_aluguel.wbb_localDocumentComplete(ASender: TObject;
  const pDisp: IDispatch; const URL: OleVariant);
begin
   if not(tab_principal.State in [dsEdit, dsInsert]) and (Trim(tab_principal.FieldByName('codigo').AsString) <> '') and (varCont = 1) then begin
      varCont := 2;
      wbb_local.SetUserAgent('Mozilla/5.0 (Windows; U; Win 9x 4.90; SG; rv:1.9.2.4) Gecko/20101104 Netscape/9.1.0285');
      if edtCep.Text <> '' then begin
         wbb_local.Navigate('www.google.com.br/maps?q='+StringReplace(StringReplace(edtCep.Text,'.','',[]),'-','',[]));
      end;
      if edtEndereco.Text <> '' then begin
         wbb_local.Navigate('www.google.com.br/maps?q='+StringReplace(StringReplace(edtEndereco.Text,'.','',[]),'-','',[])+',Jau-SP');
      end;
   end;
end;


procedure Tfrm_dados_aluguel.dts_principalDataChange(Sender: TObject;
  Field: TField);
begin
   if not(tab_principal.State in [dsEdit, dsInsert]) and (Trim(tab_principal.FieldByName('codigo').AsString) <> '') then begin
      if edtCep.Text <> '' then begin
         wbb_local.Navigate('www.google.com.br/maps?q='+StringReplace(StringReplace(edtCep.Text,'.','',[]),'-','',[]));
      end;
      if edtEndereco.Text <> '' then begin
         wbb_local.Navigate('www.google.com.br/maps?q='+StringReplace(StringReplace(edtEndereco.Text,'.','',[]),'-','',[])+',Jau-SP');
      end;
   end;
   edtCidadeEnter(Sender);
end;

procedure Tfrm_dados_aluguel.edtCepExit(Sender: TObject);
var
   tabCep : TFDQuery;
   tabCidade : TFDQuery;
begin
   inherited;
   if tab_principal.State in [dsEdit, dsInsert] then begin
      //Busca no Banco o CEP e preenche se encontra.
      tabCep := TFDQuery.Create(Application);
      tabCep.Connection := frm_principal.sql_conecta;

      tabCidade := TFDQuery.Create(Application);
      tabCidade.Connection := frm_principal.sql_conecta;

      tabCep.Open('SELECT Logradouro, Bairro, Estado, Cidade FROM cep WHERE cep = "' + StringReplace(StringReplace(edtCep.Text,'.','',[rfReplaceAll]),'-','',[rfReplaceAll]) + '"');
      if tabCep.RecordCount > 0 then begin
         tab_principal.FieldByName('endereco').AsString := tabCep.Fields[0].AsString;
         tab_principal.FieldByName('bairro').AsString   := tabCep.Fields[1].AsString;
         tab_principal.FieldByName('estado').AsString   := tabCep.Fields[2].AsString;
         edtCidadeEnter(Sender);
         edtCidade.KeyValue                             := tabCep.Fields[3].AsString;
         tab_principal.FieldByName('cidade').AsString   := tabCep.Fields[3].AsString;
      end;
   end;
end;

procedure Tfrm_dados_aluguel.edtCidadeEnter(Sender: TObject);
begin
   if Trim(edtEstado.Text) <> '' then
      PreencheCombo(edtCidade, 'SELECT Cidade "Cidades", Cidade FROM cidades WHERE UF = ' + QuotedStr(edtEstado.Text));
end;

procedure Tfrm_dados_aluguel.edt_periodoExit(Sender: TObject);
begin
   if (tab_principal.State in [dsEdit,dsInsert]) and ((Trim(edt_periodo.Text) <> '') and (Trim(edtData.Text) <> '/  /')) then
      edt_retirada.Date := edtData.Date + StrToInt(edt_periodo.Text)
end;

procedure Tfrm_dados_aluguel.FormShow(Sender: TObject);
begin
   if varCacamba <> '' then
      tab_principal.Open('SELECT * FROM pedido WHERE pedidoFinalizado = 0 AND codigoProduto = ' + varCacamba)
   else
      tab_principal.Open('SELECT * FROM pedido WHERE pedidoFinalizado = 0 AND codigo = ' + varCodigo);

   if img_finalizar.Visible = False then img_incluirClick(Sender);
end;

procedure Tfrm_dados_aluguel.img_visualizarClick(Sender: TObject);
begin
   if Trim(tab_principal.FieldByName('codigoProduto').AsString) <> '' then begin
      frm_principal.tabBusca.Open('SELECT * FROM produto WHERE codigo = '+tab_principal.FieldByName('codigoProduto').AsString);

      qrlCacamba.Caption := frm_principal.tabBusca.FieldByName('Descricao').AsString;
      qrlTamanho.Caption := frm_principal.tabBusca.FieldByName('Dias').AsString;
      qrlCacamba1.Caption := qrlCacamba.Caption;
      qrlTamanho1.Caption := qrlTamanho.Caption;
      qrp_recibo.Preview;
   end;
end;

procedure Tfrm_dados_aluguel.img_alterarClick(Sender: TObject);
begin
   if tab_principal.State = dsEdit then begin
      if Trim(edtNome.Text) = '' then Aviso('Preencha o Nome');
      if Trim(edtTelefone.Text) = '' then Aviso('Preencha o Telefone');
      if Trim(edtCelular.Text) = '' then Aviso('Preencha o Celular');
      if Trim(edtEndereco.Text) = '' then Aviso('Preencha o Endereço');
      pnlDados.Enabled := False;
   end;
   inherited;
   if tab_principal.State = dsEdit then begin
      tab_principal.FieldByName('codigoProduto').AsString := varCacamba;
      pnlDados.Enabled := True;
   end
   else begin
      tab_principal.Refresh;
   end;
end;

procedure Tfrm_dados_aluguel.img_excluirClick(Sender: TObject);
begin
   inherited;
   pnlDados.Enabled := False;
end;

procedure Tfrm_dados_aluguel.img_finalizarClick(Sender: TObject);
var
   varConta, varHistorico : String;
begin
   tab_principal.Edit;
   tab_principal.FieldByName('pedidoFinalizado').AsInteger := -1;
   tab_principal.Post;

   if tab_principal.FieldByName('recebido').AsInteger = -1 then begin
      varConta := '1';
      varHistorico := '1';

      LancaFinanceiro(varConta, varHistorico, DecimalMysql(tab_principal.FieldByName('valorTotal').AsString), 'Entrada', 'Recebimento do Pedido :'+tab_principal.FieldByName('Codigo').AsString);
   end;

   Close;
end;

procedure Tfrm_dados_aluguel.img_imprimirClick(Sender: TObject);
begin
   if Trim(tab_principal.FieldByName('codigoProduto').AsString) <> '' then begin
      frm_principal.tabBusca.Open('SELECT * FROM produto WHERE codigo = '+tab_principal.FieldByName('codigoProduto').AsString);

      qrlCacamba.Caption := frm_principal.tabBusca.FieldByName('Descricao').AsString;
      qrlTamanho.Caption := frm_principal.tabBusca.FieldByName('Dias').AsString;
      qrlCacamba1.Caption := qrlCacamba.Caption;
      qrlTamanho1.Caption := qrlTamanho.Caption;

      qrp_recibo.PrinterSetup;
      if qrp_recibo.Tag = 0 then
            qrp_recibo.Print;
   end;
end;

procedure Tfrm_dados_aluguel.img_incluirClick(Sender: TObject);
begin
   if tab_principal.State = dsinsert then begin
      if Trim(edtNome.Text) = '' then Aviso('Preencha o Nome');
      if Trim(edtTelefone.Text) = '' then Aviso('Preencha o Telefone');
      if Trim(edtCelular.Text) = '' then Aviso('Preencha o Celular');
      if Trim(edtEndereco.Text) = '' then Aviso('Preencha o Endereço');
      pnlDados.Enabled := False;
   end;
   inherited;
   if tab_principal.State = dsinsert then begin
      tab_principal.FieldByName('dataOrcamento').AsDateTime := now();
      tab_principal.FieldByName('codigoProduto').AsString := varCacamba;
      pnlDados.Enabled := True;
   end
   else begin
      tab_principal.Refresh;
   end;
end;

end.
