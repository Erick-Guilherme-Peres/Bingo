unit f_rlancamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, f_relatorio, Vcl.StdCtrls, Vcl.Mask,
  JvExMask, JvToolEdit, JvExControls, JvDBLookup, Vcl.Touch.GestureMgr,
  System.Actions, Vcl.ActnList, JvLabel, dxGDIPlusClasses, Vcl.ExtCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, QRCtrls, QuickRpt, qrpctrls;

type
  Tfrm_rlancamento = class(Tfrm_relatorio)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    edt_conta: TJvDBLookupCombo;
    edt_historico: TJvDBLookupCombo;
    edt_inicio: TJvDateEdit;
    edt_fim: TJvDateEdit;
    edt_tipo: TComboBox;
    qrp_principal: TQuickRep;
    QRBand1: TQRPBand;
    QRExpr1: TQRExpr;
    QRSubDetail1: TQRSubDetail;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRBand3: TQRBand;
    QRSysData1: TQRSysData;
    QRGroup1: TQRGroup;
    QRLabel2: TQRLabel;
    QRShape1: TQRShape;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRLabel7: TQRLabel;
    tab_principal: TFDQuery;
    QRBand2: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRImage1: TQRImage;
    procedure img_imprimirClick(Sender: TObject);
    procedure img_visualizarClick(Sender: TObject);
    procedure edt_contaEnter(Sender: TObject);
    procedure edt_historicoEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_rlancamento: Tfrm_rlancamento;

implementation

{$R *.dfm}

uses f_principal, funcoes;

procedure Tfrm_rlancamento.edt_contaEnter(Sender: TObject);
begin
   PreencheCombo(edt_conta,'SELECT Codigo, Descricao FROM conta');
end;

procedure Tfrm_rlancamento.edt_historicoEnter(Sender: TObject);
begin
   PreencheCombo(edt_historico,'SELECT Codigo, Descricao FROM historico');
end;

procedure Tfrm_rlancamento.img_imprimirClick(Sender: TObject);
var
   varSQL : String;
   varData: String;
begin
   varSQL := '';
   varData := '';

   if Trim(edt_conta.Text) = '' then begin
      Mensagem('Obrigatório Selecionar uma conta',48);
      Abort;
   end;

   varSQL := varSQL + ' WHERE Codigo_Conta = ' + FloatToStr(edt_conta.KeyValue);
   if Trim(edt_historico.Text) <> '' then varSQL := varSQL + ' AND Codigo_Historico = ' + FloatToStr(edt_historico.KeyValue);
   if Trim(edt_tipo.Text) <> '' then varSQL := varSQL + ' AND lf.Tipo = ' + QuotedStr(edt_tipo.Text);
   if Trim(edt_inicio.Text) <> '/  /' then begin
      varSQL := varSQL + ' AND Data_Lancamento >= '+ QuotedStr(FormatDateTime('yyyy-mm-dd',edt_inicio.Date));
      varData := varData + ' AND Data_Fechamento = ' + QuotedStr(FormatDateTime('yyyy-mm-dd',edt_inicio.Date));
   end;
   if Trim(edt_fim.Text) <> '/  /' then varSQL := varSQL + ' AND Data_Lancamento <= '+ QuotedStr(FormatDateTime('yyyy-mm-dd',edt_fim.Date));

   frm_principal.sql_conecta.ExecSQL('SET @CT := 0');
   tab_principal.Open('SELECT (SELECT @CT := @CT + 1) CT, '+
                      '		   IF(lf.Tipo = "Entrada",Valor,0) Entrada, '+
                      '		   IF(lf.Tipo = "Saida",Valor,0) Saida, '+
                      '		   lf.Codigo_Conta, '+
                      '		   h.Descricao Historico, '+
                      '		   c.Descricao Conta, '+
                      '		   (SELECT @SP := 0) Saldo_Inicial, '+
                      '		   IF((SELECT @CT) = 1, (SELECT @STP := @SP), 0) VL, '+
                      '		   IF(lf.Tipo = "Entrada",(SELECT @STP  := @STP + Valor),(SELECT @STP  := @STP - Valor)) Total_Parcial, '+
                      '		   lf.Tipo '+
                      'FROM lancamento_financeiro lf '+
                      'LEFT JOIN conta c ON c.Codigo = lf.Codigo_Conta '+
                      'LEFT JOIN historico h ON h.Codigo = lf.Codigo_Historico ' + varSQL);

   if tab_principal.RecordCount = 0 then begin
      Mensagem('Não há dados para exibição',0);
      Abort;
   end;
   qrp_principal.PrinterSetup;
   if qrp_principal.Tag = 0 then qrp_principal.Print;
end;

procedure Tfrm_rlancamento.img_visualizarClick(Sender: TObject);
var
   varSQL : String;
   varData: String;
begin
   varSQL := '';
   varData := '';

   if Trim(edt_conta.Text) = '' then begin
      Mensagem('Obrigatório Selecionar uma conta',48);
      Abort;
   end;

   varSQL := varSQL + ' WHERE Codigo_Conta = ' + FloatToStr(edt_conta.KeyValue);
   if Trim(edt_historico.Text) <> '' then varSQL := varSQL + ' AND Codigo_Historico = ' + FloatToStr(edt_historico.KeyValue);
   if Trim(edt_tipo.Text) <> '' then varSQL := varSQL + ' AND Tipo = ' + QuotedStr(edt_tipo.Text);
   if Trim(edt_inicio.Text) <> '/  /' then begin
      varSQL := varSQL + ' AND Data_Lancamento >= '+ QuotedStr(FormatDateTime('yyyy-mm-dd',edt_inicio.Date));
      varData := varData + ' AND Data_Fechamento = ' + QuotedStr(FormatDateTime('yyyy-mm-dd',edt_inicio.Date));
   end;
   if Trim(edt_fim.Text) <> '/  /' then varSQL := varSQL + ' AND Data_Lancamento <= '+ QuotedStr(FormatDateTime('yyyy-mm-dd',edt_fim.Date));

   frm_principal.sql_conecta.ExecSQL('SET @CT := 0');
   tab_principal.Open('SELECT (SELECT @CT := @CT + 1) CT, '+
                      '		   IF(lf.Tipo = "Entrada",Valor,0) Entrada, '+
                      '		   IF(lf.Tipo = "Saida",Valor,0) Saida, '+
                      '		   lf.Codigo_Conta, '+
                      '		   h.Descricao Historico, '+
                      '		   c.Descricao Conta, '+
                      '		   (SELECT @SP := 0) Saldo_Inicial, '+
                      '		   IF((SELECT @CT) = 1, (SELECT @STP := @SP), 0) VL, '+
                      '		   IF(lf.Tipo = "Entrada",(SELECT @STP  := @STP + Valor),(SELECT @STP  := @STP - Valor)) Total_Parcial, '+
                      '		   lf.Tipo '+
                      'FROM lancamento_financeiro lf '+
                      'LEFT JOIN conta c ON c.Codigo = lf.Codigo_Conta '+
                      'LEFT JOIN historico h ON h.Codigo = lf.Codigo_Historico ' + varSQL);

   if tab_principal.RecordCount = 0 then begin
      Mensagem('Não há dados para exibição',0);
      Abort;
   end;
   qrp_principal.Preview;
end;

end.
