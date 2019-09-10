unit f_cacambas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, f_cadastro, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Touch.GestureMgr, System.Actions, Vcl.ActnList,
  JvExControls, JvLabel, dxGDIPlusClasses, Vcl.ExtCtrls, Vcl.ComCtrls,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxCheckBox, cxMaskEdit;

type
  Tfrm_cacambas = class(Tfrm_cadastro)
    pnlTopo: TPanel;
    edt_descricao: TDBEdit;
    edt_codigo: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    edt_tamanho: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    cxg_dadosDBTableView1: TcxGridDBTableView;
    cxg_dadosLevel1: TcxGridLevel;
    cxg_dados: TcxGrid;
    cxg_dadosDBTableView1Column1: TcxGridDBColumn;
    cxg_dadosDBTableView1Column2: TcxGridDBColumn;
    cxg_dadosDBTableView1Column3: TcxGridDBColumn;
    cxg_dadosDBTableView1Column4: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Excluir; override;
    procedure Alterar; override;
    procedure Incluir; override;
  end;

var
  frm_cacambas: Tfrm_cacambas;

implementation

{$R *.dfm}

procedure Tfrm_cacambas.Excluir; begin end;
procedure Tfrm_cacambas.Alterar; begin end;
procedure Tfrm_cacambas.Incluir; begin end;

procedure Tfrm_cacambas.FormShow(Sender: TObject);
begin
   tab_principal.Open('SELECT * FROM produto');
end;

end.
