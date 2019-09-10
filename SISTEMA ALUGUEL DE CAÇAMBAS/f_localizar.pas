unit f_localizar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, StrUtils,
  Vcl.Imaging.pngimage, System.Actions, Vcl.ActnList, Vcl.Touch.GestureMgr,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, cxGraphics, cxControls, cxLookAndFeels,
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
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, dxGDIPlusClasses,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, JvExControls, JvLabel,
  JvNavigationPane, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  Tfrm_localizar = class(TForm)
    ActionList1: TActionList;
    Action1: TAction;
    GestureManager1: TGestureManager;
    tab_principal: TFDQuery;
    dts_principal: TDataSource;
    JvNavPanelHeader1: TJvNavPanelHeader;
    dbg_busca: TcxGrid;
    dbg_buscaDBTableView1: TcxGridDBTableView;
    dbg_buscaLevel1: TcxGridLevel;
    img_sair: TImage;
    img_incluir: TImage;
    JvLabel1: TJvLabel;
    procedure img_sairClick(Sender: TObject);
    procedure img_incluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbg_buscaDBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure dbg_buscaDBTableView1EditKeyPress(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Char);
    procedure dbg_buscaDBTableView1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    pub_captions : String;
    pub_filtro   : String;
    pub_campos   : String;
    pub_tabela   : String;
    pub_group    : String;
    { Public declarations }
  end;

var
  frm_localizar: Tfrm_localizar;
  pub_busca_dados, pub_busca_dados_1, pub_busca_dados_2 : String;

implementation

{$R *.dfm}

procedure Tfrm_localizar.dbg_buscaDBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
   img_incluirClick(Sender);
end;

procedure Tfrm_localizar.dbg_buscaDBTableView1EditKeyPress(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  AEdit: TcxCustomEdit; var Key: Char);
begin
   if Key = #13 then dbg_buscaDBTableView1.Focused := True;
end;

procedure Tfrm_localizar.dbg_buscaDBTableView1KeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then img_incluirClick(Sender);
end;

procedure Tfrm_localizar.FormShow(Sender: TObject);
begin
   tab_principal.Open('SELECT '+ pub_campos + ' FROM ' + pub_tabela + IfThen(pub_filtro <> '', ' WHERE ' + pub_filtro,''));
   dbg_buscaDBTableView1.ClearItems;
   dbg_buscaDBTableView1.DataController.CreateAllItems(True);
end;

procedure Tfrm_localizar.img_incluirClick(Sender: TObject);
begin
   pub_busca_dados:='';
   pub_busca_dados_1:='';
   pub_busca_dados_2:='';

   if tab_principal.Active = True then begin
      if tab_principal.RecordCount > 0 then begin
         pub_busca_dados:=tab_principal.FieldByName( dbg_buscaDBTableView1.Columns[0].DataBinding.FieldName ).AsString;
         if dbg_buscaDBTableView1.ColumnCount >1 then begin
            pub_busca_dados_1:=tab_principal.FieldByName( dbg_buscaDBTableView1.Columns[1].DataBinding.FieldName ).AsString;
         end;
         if dbg_buscaDBTableView1.ColumnCount > 2 then begin
            pub_busca_dados_2:=tab_principal.FieldByName( dbg_buscaDBTableView1.Columns[2].DataBinding.FieldName ).AsString;
         end;
         Close;
      end;
   end;
end;

procedure Tfrm_localizar.img_sairClick(Sender: TObject);
begin
   pub_busca_dados:='';
   Close;
end;

end.
