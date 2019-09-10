program Bingo;

uses
  System.StartUpCopy,
  FMX.Forms,
  f_bingo in 'f_bingo.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
