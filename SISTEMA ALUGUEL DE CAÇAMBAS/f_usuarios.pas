unit f_usuarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, f_cadastro, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Data.DB, FireDAC.Comp.DataSet,
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
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid;

type
  Tfrm_usuarios = class(Tfrm_cadastro)
    cxg_dados: TcxGrid;
    cxg_dadosDBTableView1: TcxGridDBTableView;
    cxg_dadosDBTableView1Column1: TcxGridDBColumn;
    cxg_dadosDBTableView1Column2: TcxGridDBColumn;
    cxg_dadosLevel1: TcxGridLevel;
    pnlTopo: TPanel;
    edt_codigo: TDBEdit;
    edt_senha: TEdit;
    edt_usuario: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure img_incluirClick(Sender: TObject);
    procedure img_alterarClick(Sender: TObject);
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
  frm_usuarios: Tfrm_usuarios;

implementation

{$R *.dfm}

uses f_principal, funcoes;

procedure Tfrm_usuarios.Excluir; begin end;
procedure Tfrm_usuarios.Alterar; begin end;
procedure Tfrm_usuarios.Incluir; begin end;


procedure Tfrm_usuarios.FormShow(Sender: TObject);
begin
   tab_principal.Open('SELECT * FROM usuario');
end;

procedure Tfrm_usuarios.img_alterarClick(Sender: TObject);
begin
   if img_alterar.Hint = 'Gravar' then begin
      if (Trim(edt_usuario.Text) = '') or (Trim(edt_usuario.Text) = 'Supervisor') then begin
         Mensagem('Preenchimento do Usuário Obrigatorio',48);
         Abort;
      end;
      if Trim(edt_senha.Text) = '' then begin
         Mensagem('Preenchimento da Senha Obrigatorio',48);
         Abort;
      end;
      tab_principal.FieldByName('Senha').AsString := Criptografa(edt_senha.Text,15);
   end
   else
      edt_senha.Text := Descriptografa(tab_principal.FieldByName('Senha').AsString,15);
   inherited;
end;

procedure Tfrm_usuarios.img_incluirClick(Sender: TObject);
begin
   if img_incluir.Hint = 'Gravar' then begin
      if (Trim(edt_usuario.Text) = '') or (Trim(edt_usuario.Text) = 'Supervisor') then begin
         Mensagem('Preenchimento do Usuário Obrigatorio',48);
         Abort;
      end;
      if Trim(edt_senha.Text) = '' then begin
         Mensagem('Preenchimento da Senha Obrigatorio',48);
         Abort;
      end;
      tab_principal.FieldByName('Senha').AsString := Criptografa(edt_senha.Text,15);
   end;
   inherited;
end;

end.
