unit financeiro;

interface

uses f_check_tabelas;

procedure financeiros;

implementation

uses f_principal, funcoes;

procedure financeiros;
begin
   with frm_check_tabelas do begin
      Backup_Arquivo('lancamento_financeiro');
      sql_conecta.ExecSQL('CREATE TABLE lancamento_financeiro( '+
                     'Codigo SERIAL, '+
                     'Codigo_Conta BIGINT, '+
                     'Codigo_Historico BIGINT, '+
                     'Valor DECIMAL(15,2), '+
                     'Tipo ENUM("Entrada","Saida"), '+
                     'Observacoes TEXT, '+
                     'Data_Lancamento TIMESTAMP '+
                     ')');
      Check_Arquivo_MySQL('lancamento_financeiro');

      Backup_Arquivo('conta');
      sql_conecta.ExecSQL('CREATE TABLE conta( '+
                     'Codigo SERIAL, '+
                     'Descricao VARCHAR(50), '+
                     'Ativo TINYINT DEFAULT -1 '+
                     ')');
      Check_Arquivo_MySQL('conta');

      Backup_Arquivo('historico');
      sql_conecta.ExecSQL('CREATE TABLE historico( '+
                     'Codigo SERIAL, '+
                     'Descricao VARCHAR(50), '+
                     'Ativo TINYINT DEFAULT -1, '+
                     'Tipo ENUM("Entrada","Saida"), '+
                     'Implementacao_Saldo TINYINT '+
                     ')');
      Check_Arquivo_MySQL('historico');

      Backup_Arquivo('saldo_conta');
      sql_conecta.ExecSQL('CREATE TABLE saldo_conta( '+
                     'Codigo           SERIAL, '+
                     'Codigo_Conta     VARCHAR(50), '+
                     'Data_Abertura    TIMESTAMP, '+
                     'Saldo_Inicial    DECIMAL(15,2), '+
                     'Entrada          DECIMAL(15,2), '+
                     'Saida            DECIMAL(15,2), '+
                     'Saldo_Final      DECIMAL(15,2), '+
                     'Fechado          TINYINT DEFAULT 0, '+
                     'Data_Fechamento  DATE '+
                     ')');
      Check_Arquivo_MySQL('saldo_conta');

   end;
end;

end.
