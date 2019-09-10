unit frame_visitas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black, StrUtils,
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
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, dxGDIPlusClasses,
  Vcl.ExtCtrls, JvExControls, JvLabel, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.ComCtrls, Vcl.ColorGrd, cxMaskEdit, cxCurrencyEdit, cxCalendar, cxTextEdit,
  cxContainer, cxGroupBox, Vcl.StdCtrls, Vcl.Mask, RxToolEdit;

type
  Tfrm_visitas = class(TFrame)
    Panel1: TPanel;
    dts_principal: TDataSource;
    tab_principal: TFDQuery;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxgEntradaR: TcxGridDBColumn;
    cxghEntradaR: TcxGridDBColumn;
    cxgSaidaR: TcxGridDBColumn;
    cxghSaidaR: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    dts_finalizadas: TDataSource;
    tab_finalizadas: TFDQuery;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    Panel4: TPanel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxgFun: TcxGridDBColumn;
    cxGrid1DBTableView1Column10: TcxGridDBColumn;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    cxGrid1DBTableView1Column9: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxgEntrada: TcxGridDBColumn;
    cxghEntrada: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    dts_principals: TDataSource;
    tab_principals: TFDQuery;
    JvLabel1: TJvLabel;
    cxgTipo: TcxGridDBColumn;
    cxGroupBox2: TcxGroupBox;
    img_sair: TImage;
    Panel5: TPanel;
    cxGrid3: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn14: TcxGridDBColumn;
    cxGridDBColumn15: TcxGridDBColumn;
    cxgTipoS: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    Panel2: TPanel;
    Label1: TLabel;
    edtDe: TDateEdit;
    Label2: TLabel;
    edtAte: TDateEdit;
    cgbIncluir: TcxGroupBox;
    img_incluir: TImage;
    cgbExcluir: TcxGroupBox;
    img_excluir: TImage;
    procedure img_sairClick(Sender: TObject);
    procedure cxGrid1DBTableView1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure cxGridDBTableView2CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure TabSheet1Show(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure Tfrm_visitas.cxGrid1DBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
   if (AViewInfo.GridRecord.Values[cxgTipo.Index] = '3') then
      ACanvas.Brush.Color := $00DCC2E2
   else
      ACanvas.Brush.Color := $00B9FFB9
end;

procedure Tfrm_visitas.cxGridDBTableView2CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
   if (AViewInfo.GridRecord.Values[cxgTipoS.Index] = '3') then
      ACanvas.Brush.Color := $00FFB9B9
   else
      ACanvas.Brush.Color := $00C4C4FF;
end;

procedure Tfrm_visitas.img_sairClick(Sender: TObject);
begin
   Visible := False
end;

procedure Tfrm_visitas.TabSheet1Show(Sender: TObject);
var
   varTela : Integer;
begin
   varTela := Round(TabSheet1.Height / 2) - 10;
   Panel4.Height :=  varTela;
   Panel5.Height :=  varTela;
   Panel4.Align := alTop;
   Panel5.Align := alTop;
end;

end.
