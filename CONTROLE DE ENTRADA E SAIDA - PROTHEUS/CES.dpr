program CES;

uses
  Vcl.Forms,
  Vcl.Themes,
  Vcl.Styles,
  f_principal in 'f_principal.pas' {frm_principal},
  frame_cadastro in 'frame_cadastro.pas' {frm_cadastro: TFrame},
  frame_visitas in 'frame_visitas.pas' {frm_visitas: TFrame},
  f_visita in 'f_visita.pas' {frm_visita},
  f_busca in 'f_busca.pas' {frm_busca},
  f_data in 'f_data.pas' {frm_data},
  VFrames in 'VFrames.pas',
  VSample in 'VSample.pas',
  Direct3D9 in 'DirectX\Direct3D9.pas',
  DirectDraw in 'DirectX\DirectDraw.pas',
  DirectShow9 in 'DirectX\DirectShow9.pas',
  DirectSound in 'DirectX\DirectSound.pas',
  DXTypes in 'DirectX\DXTypes.pas',
  Frame_Video in 'Frame_Video.pas' {Frame1: TFrame},
  f_webcam in 'f_webcam.pas' {frm_webcam},
  uTradutor in 'uTradutor.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.UseMetropolisUI;
  TStyleManager.TrySetStyle('Iceberg Classico');
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Metropolis UI Application';
  Application.CreateForm(Tfrm_principal, frm_principal);
  Application.Run;
end.
