program SAC;

uses
  Vcl.Forms,
  Vcl.Themes,
  Vcl.Styles,
  f_principal in 'f_principal.pas' {frm_principal},
  f_cadastro in 'f_cadastro.pas' {frm_cadastro},
  funcoes in 'funcoes.pas',
  uTradutor in 'uTradutor.pas',
  f_cacambas in 'f_cacambas.pas' {frm_cacambas},
  f_contas in 'f_contas.pas' {frm_contas},
  f_historico in 'f_historico.pas' {frm_historico},
  f_abertura in 'f_abertura.pas' {frm_abertura},
  f_fechamento in 'f_fechamento.pas' {frm_fechamento},
  f_lancamento in 'f_lancamento.pas' {frm_lancamento},
  f_aluguel in 'f_aluguel.pas' {frm_aluguel},
  f_dados_aluguel in 'f_dados_aluguel.pas' {frm_dados_aluguel},
  f_localizar in 'f_localizar.pas' {frm_localizar},
  f_login in 'f_login.pas' {frm_login},
  f_sobre in 'f_sobre.pas' {frm_sobre},
  f_empresa in 'f_empresa.pas' {frm_empresa},
  f_usuarios in 'f_usuarios.pas' {frm_usuarios},
  f_check_tabelas in 'f_check_tabelas.pas' {frm_check_tabelas},
  financeiro in 'financeiro.pas',
  f_relatorio in 'f_relatorio.pas' {frm_relatorio},
  f_recebida in 'f_recebida.pas' {frm_recebida},
  f_receber in 'f_receber.pas' {frm_receber},
  f_alugadas in 'f_alugadas.pas' {frm_alugadas},
  f_rlancamento in 'f_rlancamento.pas' {frm_rlancamento},
  f_retirar in 'f_retirar.pas' {frm_retirar},
  f_baixa_alugadas in 'f_baixa_alugadas.pas' {frm_baixa_alugadas};

{$R *.res}

begin
  Application.Initialize;
  Application.UseMetropolisUI;
  TStyleManager.TrySetStyle('Metropolis UI Blue');
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Metropolis UI Application';
  Application.CreateForm(Tfrm_principal, frm_principal);
  Application.Run;
end.
