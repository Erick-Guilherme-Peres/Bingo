unit f_data;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, System.Actions, Vcl.ActnList, Vcl.Touch.GestureMgr,
  Vcl.Mask, RxToolEdit, dxGDIPlusClasses, StrUtils;

type
  Tfrm_data = class(TForm)
    Panel1: TPanel;
    img_incluir: TImage;
    img_excluir: TImage;
    edtDe: TDateEdit;
    edtAte: TDateEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure img_incluirClick(Sender: TObject);
    procedure img_excluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_data: Tfrm_data;

implementation

{$R *.dfm}

uses f_principal;

procedure Tfrm_data.FormShow(Sender: TObject);
begin
   if Trim(frm_principal.pubVDt1) <> '' then edtDe.Date := StrToDate(CONCAT(RightStr(frm_principal.pubVDt1,2),'/',MidStr(frm_principal.pubVDt1,5,2),'/',LeftStr(frm_principal.pubVDt1,4),'/'));

   if Trim(frm_principal.pubVDt2) <> '' then edtAte.Date := StrToDate(CONCAT(RightStr(frm_principal.pubVDt2,2),'/',MidStr(frm_principal.pubVDt2,5,2),'/',LeftStr(frm_principal.pubVDt2,4),'/'));
end;

procedure Tfrm_data.img_excluirClick(Sender: TObject);
begin
   frm_principal.pubRet1 := '        ';
   frm_principal.pubRet2 := '        ';
   Close;
end;

procedure Tfrm_data.img_incluirClick(Sender: TObject);
begin
   frm_principal.pubRet1 := IfThen(Trim(edtDe.Text) = '','        ',FormatDateTime('yyyymmdd',edtDe.Date));
   frm_principal.pubRet2 := IfThen(Trim(edtAte.Text) = '','        ',FormatDateTime('yyyymmdd',edtAte.Date));
   frm_principal.pubVDt1 := IfThen(Trim(edtDe.Text) = '','        ',FormatDateTime('yyyymmdd',edtDe.Date));
   frm_principal.pubVDt2 := IfThen(Trim(edtAte.Text) = '','        ',FormatDateTime('yyyymmdd',edtAte.Date));
   Close;
end;

end.
