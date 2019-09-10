unit f_login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, System.Actions, Vcl.ActnList, Vcl.Touch.GestureMgr,
  dxGDIPlusClasses, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
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
  dxSkinXmas2008Blue, cxGroupBox;

type
  Tfrm_login = class(TForm)
    ActionList1: TActionList;
    Action1: TAction;
    GestureManager1: TGestureManager;
    Label1: TLabel;
    edt_usuario: TEdit;
    edt_senha: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    tab_usuario: TFDQuery;
    ckb_usuario: TCheckBox;
    cxGroupBox1: TcxGroupBox;
    img_sair: TImage;
    cxGroupBox2: TcxGroupBox;
    img_incluir: TImage;
    procedure img_sairClick(Sender: TObject);
    procedure img_incluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_login: Tfrm_login;

implementation

{$R *.dfm}

uses f_principal, funcoes;

procedure Tfrm_login.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if frm_principal.pub_usuario = '' then begin
      Application.Terminate;
   end
   else begin
      if ckb_usuario.Checked then Registro_Grava('SGO_','Usuario',edt_usuario.Text)
      else Registro_Grava('SGO_','Usuario','invalido');
   end;
end;

procedure Tfrm_login.FormShow(Sender: TObject);
begin
   tab_usuario.Open('SELECT * FROM usuario');
   if Registro_Leitura('SGO_','Usuario') <> 'invalido' then begin
       edt_usuario.Text:=Registro_Leitura('SGO_','Usuario');
       ckb_usuario.Checked := True;
       edt_senha.SetFocus;
      if (edt_usuario.text = 'Supervisor') and (DebugHook <> 0) then begin
          edt_senha.Text := '96118896';
       end;
   end;
end;

procedure Tfrm_login.img_incluirClick(Sender: TObject);
begin
   if edt_usuario.Text <> 'Supervisor' then begin
      if tab_usuario.Locate('Usuario',edt_usuario.Text,[loCaseInsensitive]) then begin
         if Descriptografa(tab_usuario.FieldByName('Senha').AsString,15) = edt_senha.Text then begin
            frm_principal.pub_usuario := tab_usuario.FieldByName('Usuario').AsString;
            frm_principal.ManutenodeBancodeDados1.Visible := False;
            Close;
         end
         else
            Mensagem('Usuario e Senha Não Conferem',48);
      end
      else
         Mensagem('Usuario Não Conferem',48);
   end
   else if (edt_usuario.Text = 'Supervisor') and (edt_senha.Text = '96118896') then begin
      frm_principal.pub_usuario := 'Supervisor';
      frm_principal.ManutenodeBancodeDados1.Visible := True;
      Close;
   end
   else
      Mensagem('Usuario e Senha Não Conferem',48);
end;

procedure Tfrm_login.img_sairClick(Sender: TObject);
begin
   Application.Terminate;
end;

end.
