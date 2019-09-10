unit f_baixa_alugadas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
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
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, JvExControls, JvLabel, dxGDIPlusClasses, Vcl.ExtCtrls, cxMaskEdit,
  cxCheckBox, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  cxButtonEdit, System.Actions, Vcl.ActnList;

type
  Tfrm_baixa_alugadas = class(TForm)
    Panel1: TPanel;
    img_sair: TImage;
    JvLabel1: TJvLabel;
    cxg_dados: TcxGrid;
    cxg_dadosDBTableView1: TcxGridDBTableView;
    cxg_dadosLevel1: TcxGridLevel;
    tab_principal: TFDQuery;
    dts_principal: TDataSource;
    cxg_dadosDBTableView1Codigo: TcxGridDBColumn;
    cxg_dadosDBTableView1Nome: TcxGridDBColumn;
    cxg_dadosDBTableView1Endereco: TcxGridDBColumn;
    cxg_dadosDBTableView1Telefone: TcxGridDBColumn;
    cxg_dadosDBTableView1Celular: TcxGridDBColumn;
    cxg_dadosDBTableView1DataOrcamento: TcxGridDBColumn;
    ActionList1: TActionList;
    actBaixar: TAction;
    cxg_dadosDBTableView1Column1: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure img_sairClick(Sender: TObject);
    procedure actBaixarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_baixa_alugadas: Tfrm_baixa_alugadas;

implementation

{$R *.dfm}

uses f_principal, funcoes;

procedure Tfrm_baixa_alugadas.actBaixarExecute(Sender: TObject);
var
   cMsg : String;
   varConta : String;
   varHistorico : String;
begin
   cMsg := tab_principal.FieldByName('Codigo').AsString;

   varConta := '1';
   varHistorico := '1';

   LancaFinanceiro(varConta, varHistorico, DecimalMysql(tab_principal.FieldByName('valorTotal').AsString), 'Entrada', 'Recebimento do Pedido :'+tab_principal.FieldByName('Codigo').AsString);

   frm_principal.sql_conecta.ExecSQL('UPDATE pedido SET Recebido = -1 WHERE Codigo = ' + cMsg);
   tab_principal.Refresh;
end;

procedure Tfrm_baixa_alugadas.FormShow(Sender: TObject);
begin
   tab_principal.Open('SELECT pedido.Codigo, Nome, Endereco, Telefone, Celular, DataOrcamento, valorTotal FROM pedido INNER JOIN produto ON produto.Codigo = pedido.CodigoProduto WHERE recebido = 0');
end;

procedure Tfrm_baixa_alugadas.img_sairClick(Sender: TObject);
begin
   Close;
end;

end.
