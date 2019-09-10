unit f_receber;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, f_relatorio, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  QRCtrls, QuickRpt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Touch.GestureMgr, System.Actions, Vcl.ActnList, JvExControls, JvLabel,
  dxGDIPlusClasses, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask, JvExMask, JvToolEdit;

type
  Tfrm_receber = class(Tfrm_relatorio)
    tab_principal: TFDQuery;
    dts_principal: TDataSource;
    qrp_principal: TQuickRep;
    QRBand1: TQRBand;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    Label1: TLabel;
    Label2: TLabel;
    edt_inicio: TJvDateEdit;
    edt_fim: TJvDateEdit;
    QRImage1: TQRImage;
    procedure img_imprimirClick(Sender: TObject);
    procedure img_visualizarClick(Sender: TObject);
    procedure img_sairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_receber: Tfrm_receber;

implementation

{$R *.dfm}

procedure Tfrm_receber.img_imprimirClick(Sender: TObject);
var
   varFiltro : String;
begin
   varfiltro := '';

   if TRIM(edt_inicio.Text) <> '/  /' then
      varfiltro := varfiltro + ' AND DATE(dataOrcamento) >= '+QuotedStr(FormatDateTime('yyyy-mm-dd',edt_inicio.Date));

   if TRIM(edt_fim.Text) <> '/  /' then
      varfiltro := varfiltro + ' AND DATE(dataOrcamento) <= '+QuotedStr(FormatDateTime('yyyy-mm-dd',edt_fim.Date));

   tab_principal.Open('SELECT pedido.Codigo, pedido.Nome, produto.Descricao Cacamba, DATE(dataOrcamento) Entrada, DATE(dataFinalizado) Retirada, periodo, valorTotal '+
                      'FROM pedido INNER JOIN produto on produto.codigo = pedido.CodigoProduto WHERE recebido <> -1 '+ varfiltro);
   qrp_principal.PrinterSetup;
   if qrp_principal.Tag = 0 then
      qrp_principal.Print;
end;

procedure Tfrm_receber.img_sairClick(Sender: TObject);
begin
   Close;
end;

procedure Tfrm_receber.img_visualizarClick(Sender: TObject);
var
   varFiltro : String;
begin
   varfiltro := '';

   if TRIM(edt_inicio.Text) <> '/  /' then
      varfiltro := varfiltro + ' AND DATE(dataOrcamento) >= '+QuotedStr(FormatDateTime('yyyy-mm-dd',edt_inicio.Date));

   if TRIM(edt_fim.Text) <> '/  /' then
      varfiltro := varfiltro + ' AND DATE(dataOrcamento) <= '+QuotedStr(FormatDateTime('yyyy-mm-dd',edt_fim.Date));

   tab_principal.Open('SELECT pedido.Codigo, pedido.Nome, produto.Descricao Cacamba, DATE(dataOrcamento) Entrada, DATE(dataFinalizado) Retirada, periodo, valorTotal '+
                   'FROM pedido INNER JOIN produto on produto.codigo = pedido.CodigoProduto WHERE recebido <> -1 '+ varfiltro);
   qrp_principal.Preview;
end;

end.
