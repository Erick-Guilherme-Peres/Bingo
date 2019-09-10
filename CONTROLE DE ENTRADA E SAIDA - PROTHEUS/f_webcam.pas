
unit f_webcam;

interface

uses
  Windows, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, StdCtrls,
  Buttons, MMSystem, Menus, ComCtrls, JPEG,
  VFrames, Frame_Video;


type
  Tfrm_webcam = class(TForm)
    Panel_Left: TPanel;
    Frame_Video1: TFrame1;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Quit1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Frame_Video1SpeedButton_StopClick(Sender: TObject);
  private
    { Private declarations }
    SplitterRatio : double;
  public
    { Public declarations }
  end;

var
  frm_webcam: Tfrm_webcam;

implementation

{$R *.dfm}

uses f_principal;

procedure Tfrm_webcam.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  Screen.Cursor := crHourGlass;
  Application.ProcessMessages;
  Frame_Video1.Stop;
  Screen.Cursor := crdefault;
end;

procedure Tfrm_webcam.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Frame_Video1.Close;
end;

procedure Tfrm_webcam.FormShow(Sender: TObject);
begin
  Frame_Video1.InitFrame;
end;

procedure Tfrm_webcam.Frame_Video1SpeedButton_StopClick(Sender: TObject);
begin
   Frame_Video1.SpeedButton_StopClick(Sender);
   Frame_Video1.Image1.Picture.Bitmap.SaveToFile('\\srv-erp-testes\TOTVS\Protheus_Data\system\fotoces\'+frm_principal.pubPar1+'.bmp');
   Close;
end;

procedure Tfrm_webcam.Quit1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrm_webcam.FormCreate(Sender: TObject);
begin
  SplitterRatio := 0.5;
end;

end.
