unit f_bingo;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Controls.Presentation, FMX.Edit, FMX.ComboEdit;

function ZeroLeft(vZero: string; vQtd: integer): string;

type
  TForm1 = class(TForm)
    Ellipse01: TEllipse;
    Ellipse02: TEllipse;
    Ellipse04: TEllipse;
    Ellipse03: TEllipse;
    Ellipse05: TEllipse;
    Rectangle2: TRectangle;
    Ellipse06: TEllipse;
    Ellipse07: TEllipse;
    Ellipse09: TEllipse;
    Ellipse08: TEllipse;
    Ellipse10: TEllipse;
    Circle1: TCircle;
    Text2: TText;
    Circle2: TCircle;
    Text3: TText;
    Text4: TText;
    Text5: TText;
    Text6: TText;
    Text7: TText;
    Text8: TText;
    Text9: TText;
    Text10: TText;
    Text11: TText;
    Text12: TText;
    Ellipse11: TEllipse;
    Text13: TText;
    Ellipse12: TEllipse;
    Text14: TText;
    Ellipse13: TEllipse;
    Text15: TText;
    Ellipse14: TEllipse;
    Text16: TText;
    Ellipse15: TEllipse;
    Text17: TText;
    Ellipse16: TEllipse;
    Text18: TText;
    Ellipse17: TEllipse;
    Text19: TText;
    Ellipse18: TEllipse;
    Text20: TText;
    Ellipse19: TEllipse;
    Text21: TText;
    Ellipse20: TEllipse;
    Text22: TText;
    Ellipse21: TEllipse;
    Text23: TText;
    Ellipse22: TEllipse;
    Text24: TText;
    Ellipse23: TEllipse;
    Text25: TText;
    Ellipse24: TEllipse;
    Text26: TText;
    Ellipse25: TEllipse;
    Text27: TText;
    Ellipse26: TEllipse;
    Text28: TText;
    Ellipse27: TEllipse;
    Text29: TText;
    Ellipse28: TEllipse;
    Text30: TText;
    Ellipse29: TEllipse;
    Text31: TText;
    Ellipse30: TEllipse;
    Text32: TText;
    Ellipse31: TEllipse;
    Text33: TText;
    Ellipse32: TEllipse;
    Text34: TText;
    Ellipse33: TEllipse;
    Text35: TText;
    Ellipse34: TEllipse;
    Text36: TText;
    Ellipse35: TEllipse;
    Text37: TText;
    Ellipse36: TEllipse;
    Text38: TText;
    Ellipse37: TEllipse;
    Text39: TText;
    Ellipse38: TEllipse;
    Text40: TText;
    Ellipse39: TEllipse;
    Text41: TText;
    Ellipse40: TEllipse;
    Text42: TText;
    Ellipse41: TEllipse;
    Text43: TText;
    Ellipse42: TEllipse;
    Text44: TText;
    Ellipse43: TEllipse;
    Text45: TText;
    Ellipse44: TEllipse;
    Text46: TText;
    Ellipse45: TEllipse;
    Text47: TText;
    Ellipse46: TEllipse;
    Text48: TText;
    Ellipse47: TEllipse;
    Text49: TText;
    Ellipse48: TEllipse;
    Text50: TText;
    Ellipse49: TEllipse;
    Text51: TText;
    Ellipse50: TEllipse;
    Text52: TText;
    Ellipse51: TEllipse;
    Text53: TText;
    Ellipse52: TEllipse;
    Text54: TText;
    Ellipse53: TEllipse;
    Text55: TText;
    Ellipse54: TEllipse;
    Text56: TText;
    Ellipse55: TEllipse;
    Text57: TText;
    Ellipse56: TEllipse;
    Text58: TText;
    Ellipse57: TEllipse;
    Text59: TText;
    Ellipse58: TEllipse;
    Text60: TText;
    Ellipse59: TEllipse;
    Text61: TText;
    Ellipse60: TEllipse;
    Text62: TText;
    Ellipse61: TEllipse;
    Text63: TText;
    Ellipse62: TEllipse;
    Text64: TText;
    Ellipse63: TEllipse;
    Text65: TText;
    Ellipse64: TEllipse;
    Text66: TText;
    Ellipse65: TEllipse;
    Text67: TText;
    Ellipse66: TEllipse;
    Text68: TText;
    Ellipse67: TEllipse;
    Text69: TText;
    Ellipse68: TEllipse;
    Text70: TText;
    Ellipse69: TEllipse;
    Text71: TText;
    Ellipse70: TEllipse;
    Text72: TText;
    Ellipse71: TEllipse;
    Text73: TText;
    Ellipse72: TEllipse;
    Text74: TText;
    Ellipse73: TEllipse;
    Text75: TText;
    Ellipse74: TEllipse;
    Text76: TText;
    Ellipse75: TEllipse;
    Text77: TText;
    Ellipse76: TEllipse;
    Text78: TText;
    Ellipse77: TEllipse;
    Text79: TText;
    Ellipse78: TEllipse;
    Text80: TText;
    Ellipse79: TEllipse;
    Text81: TText;
    Ellipse80: TEllipse;
    Text82: TText;
    Ellipse81: TEllipse;
    Text83: TText;
    Ellipse82: TEllipse;
    Text84: TText;
    Ellipse83: TEllipse;
    Text85: TText;
    Ellipse84: TEllipse;
    Text86: TText;
    Ellipse85: TEllipse;
    Text87: TText;
    Ellipse86: TEllipse;
    Text88: TText;
    Ellipse87: TEllipse;
    Text89: TText;
    Ellipse88: TEllipse;
    Text90: TText;
    Ellipse89: TEllipse;
    Text91: TText;
    Ellipse90: TEllipse;
    Text92: TText;
    Bola1: TText;
    Circle4: TCircle;
    Bola2: TText;
    Circle3: TCircle;
    Bola3: TText;
    BolaSorteada: TComboEdit;
    Pie1: TPie;
    Pie2: TPie;
    Text93: TText;
    Edit1: TEdit;
    procedure BolaSorteadaClick(Sender: TObject);
    procedure BolaSorteadaKeyUp(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure FormKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.BolaSorteadaClick(Sender: TObject);
begin
//   Bola3.Text := Bola2.Text;
//   Bola2.Text := Bola1.Text;
//   Bola1.Text := BolaSorteada.Text;
//
//   BolaSorteada.Text := '';
end;

procedure TForm1.BolaSorteadaKeyUp(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
   if Key = vkReturn then begin
      if FindComponent('Ellipse'+BolaSorteada.Text) <> nil then begin
         if TEllipse(FindComponent('Ellipse'+BolaSorteada.Text)).Visible = False then begin
            Bola3.Text := Bola2.Text;
            Bola2.Text := Bola1.Text;
            Bola1.Text := BolaSorteada.Text;

            TEllipse(FindComponent('Ellipse'+BolaSorteada.Text)).Visible := True;
         end;
         BolaSorteada.Text := '';
      end;
   end;
end;

procedure TForm1.FormKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
  Shift: TShiftState);
var
   varCnt : Integer;
begin
   if Key = vkEscape then begin
      for varCnt := 1 to 90 do begin
         TEllipse(FindComponent('Ellipse'+ZeroLeft(IntToStr(varCnt),2))).Visible := False;

         Bola3.Text := '';
         Bola2.Text := '';
         Bola1.Text := '';
         BolaSorteada.Text := '';
         BolaSorteada.SetFocus
      end;
   end;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
   BolaSorteada.MaxLength := 2;
end;

function ZeroLeft(vZero: string; vQtd: integer): String;
var
   i, vTam: integer;
   vAux: string;
begin
   vAux := vZero;
   vTam := length( vZero );
   vZero := '';

   for i := 1 to vQtd - vTam do
      vZero := '0' + vZero;

   vAux := vZero + vAux;
   result := vAux;
end;

end.
