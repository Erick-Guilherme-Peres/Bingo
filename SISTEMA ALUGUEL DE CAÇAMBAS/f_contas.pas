unit f_contas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, f_cadastro, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Touch.GestureMgr, System.Actions, Vcl.ActnList,
  JvExControls, JvLabel, dxGDIPlusClasses, Vcl.ExtCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxCheckBox, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid;

type
  Tfrm_contas = class(Tfrm_cadastro)
    Panel2: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    edt_codigo: TDBEdit;
    edt_descricao: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    cxg_dados: TcxGrid;
    cxg_dadosDBTableView1: TcxGridDBTableView;
    cxg_dadosDBTableView1Column1: TcxGridDBColumn;
    cxg_dadosDBTableView1Column2: TcxGridDBColumn;
    cxg_dadosDBTableView1Column4: TcxGridDBColumn;
    cxg_dadosLevel1: TcxGridLevel;
    procedure FormShow(Sender: TObject);
    procedure img_incluirClick(Sender: TObject);
    procedure img_alterarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Excluir; override;
    procedure Alterar; override;
    procedure Incluir; override;
  end;

var
  frm_contas: Tfrm_contas;

implementation

{$R *.dfm}

uses f_principal, funcoes;

procedure Tfrm_contas.Excluir; begin end;
procedure Tfrm_contas.Alterar; begin end;
procedure Tfrm_contas.Incluir; begin end;

procedure Tfrm_contas.FormShow(Sender: TObject);
begin
   tab_principal.Open('SELECT * FROM conta');
end;

procedure Tfrm_contas.img_alterarClick(Sender: TObject);
begin
   if img_alterar.Hint = 'Gravar' then begin
      if Trim(edt_descricao.Text) = '' then begin
         Mensagem('Obrigatório Descrever a Conta!',48);
         Abort;
      end;
   end;
   inherited;
end;

procedure Tfrm_contas.img_incluirClick(Sender: TObject);
begin
   if img_incluir.Hint = 'Gravar' then begin
      if Trim(edt_descricao.Text) = '' then begin
         Mensagem('Obrigatório Descrever a Conta!',48);
         Abort;
      end;
   end;
   inherited;
end;

end.
