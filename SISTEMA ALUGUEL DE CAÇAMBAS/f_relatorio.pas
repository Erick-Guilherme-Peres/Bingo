unit f_relatorio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, System.Actions, Vcl.ActnList, Vcl.Touch.GestureMgr,
  JvExControls, JvLabel, dxGDIPlusClasses;

type
  Tfrm_relatorio = class(TForm)
    ActionList1: TActionList;
    Action1: TAction;
    GestureManager1: TGestureManager;
    Panel1: TPanel;
    img_sair: TImage;
    JvLabel1: TJvLabel;
    img_imprimir: TImage;
    img_visualizar: TImage;
    procedure img_sairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_relatorio: Tfrm_relatorio;

implementation

{$R *.dfm}


procedure Tfrm_relatorio.img_sairClick(Sender: TObject);
begin
   Close;
end;

end.
