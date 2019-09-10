unit f_retirar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, f_relatorio, Vcl.Touch.GestureMgr,
  System.Actions, Vcl.ActnList, JvExControls, JvLabel, dxGDIPlusClasses,
  Vcl.ExtCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, QRCtrls, QuickRpt;

type
  Tfrm_retirar = class(Tfrm_relatorio)
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
    QRLabel5: TQRLabel;
    QRLabel12: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText7: TQRDBText;
    tab_principal: TFDQuery;
    QRImage1: TQRImage;
    procedure img_imprimirClick(Sender: TObject);
    procedure img_visualizarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_retirar: Tfrm_retirar;

implementation

{$R *.dfm}

procedure Tfrm_retirar.img_imprimirClick(Sender: TObject);
begin
   tab_principal.Open('SELECT pedido.Codigo, pedido.Nome, produto.Descricao Cacamba, CONCAT(Endereco," nº.",Numero) Endereco, bairro '+
                      'FROM pedido LEFT JOIN produto on produto.codigo = pedido.CodigoProduto WHERE (pedidoFinalizado <> -1 OR pedidoFinalizado IS NULL) AND DATE(dataFinalizado) <= DATE(now())');
   if tab_principal.RecordCount = 0 then begin
      ShowMessage('Não há caçambas para serem recolhidas');
      Abort;
   end;

   qrp_principal.PrinterSetup;
   if qrp_principal.Tag = 0 then
      qrp_principal.Print
end;

procedure Tfrm_retirar.img_visualizarClick(Sender: TObject);
begin
   tab_principal.Open('SELECT pedido.Codigo, pedido.Nome, produto.Descricao Cacamba, CONCAT(Endereco," nº.",Numero) Endereco, bairro '+
                      'FROM pedido LEFT JOIN produto on produto.codigo = pedido.CodigoProduto WHERE (pedidoFinalizado <> -1 OR pedidoFinalizado IS NULL) AND DATE(dataFinalizado) <= DATE(now())');
   if tab_principal.RecordCount = 0 then begin
      ShowMessage('Não há caçambas para serem recolhidas');
      Abort;
   end;
   qrp_principal.Preview;
end;

end.
