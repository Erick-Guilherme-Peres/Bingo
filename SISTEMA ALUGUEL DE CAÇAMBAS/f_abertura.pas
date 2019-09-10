unit f_abertura;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, System.Actions, Vcl.ActnList, Vcl.Touch.GestureMgr,
  Vcl.Mask, JvExMask, JvToolEdit, JvExControls, JvDBLookup, JvLabel,
  dxGDIPlusClasses, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  Tfrm_abertura = class(TForm)
    ActionList1: TActionList;
    Action1: TAction;
    GestureManager1: TGestureManager;
    Panel1: TPanel;
    img_incluir: TImage;
    img_sair: TImage;
    JvLabel1: TJvLabel;
    Label7: TLabel;
    edt_conta: TJvDBLookupCombo;
    Label1: TLabel;
    edt_abertura: TJvDateEdit;
    edt_movimento: TJvDateEdit;
    Label2: TLabel;
    tab_principal: TFDQuery;
    tab_verifica: TFDQuery;
    tab_verifica_historico: TFDQuery;
    procedure img_sairClick(Sender: TObject);
    procedure img_incluirClick(Sender: TObject);
    procedure edt_contaEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_abertura: Tfrm_abertura;

implementation

{$R *.dfm}

uses f_principal, funcoes;

procedure Tfrm_abertura.edt_contaEnter(Sender: TObject);
begin
   PreencheCombo(edt_conta,'SELECT Codigo, Descricao FROM conta');
end;

procedure Tfrm_abertura.img_incluirClick(Sender: TObject);
var
   varSaldo : String;
begin
   tab_principal.Open('SELECT * FROM saldo_conta');
   if Trim(edt_conta.Text) = '' then begin
      Mensagem('Obrigatório Selecionar a Conta!',48);
      Abort;
   end;
   if Trim(edt_abertura.Text) = '/  /' then begin
      Mensagem('Obrigatório Selecionar a Data de Abertura!',48);
      Abort;
   end;
   if Trim(edt_movimento.Text) = '/  /' then begin
      Mensagem('Obrigatório Selecionar a Data de Movimento Anterior!',48);
      Abort;
   end;

   if StrToInt(RetornaCampo('COALESCE(COUNT(*),0) Cod','saldo_conta WHERE Fechado <> -1 AND Codigo_Conta = '+FloatToStr(edt_conta.KeyValue))) > 0 then begin
      Mensagem('Essa conta já está Aberta!',48);
      Abort;
   end;

   tab_verifica.Open('SELECT COALESCE(Saldo_Final,0) Saldo_Final FROM saldo_conta WHERE Data_Fechamento <= '+QuotedStr(FormatDateTime('yyyy-mm-dd',edt_movimento.Date))+' ORDER BY Data_Fechamento DESC LIMIT 1');
   tab_verifica_historico.Open('SELECT Codigo FROM historico WHERE Implementacao_Saldo = -1');

   tab_principal.Append;
   tab_principal.FieldByName('Codigo_Conta').AsFloat := edt_conta.KeyValue;
   tab_principal.FieldByName('Data_Abertura').AsDateTime := edt_abertura.Date;
   if (tab_verifica_historico.RecordCount = 1) and (tab_verifica.FieldByName('Saldo_Final').AsFloat = 0) then begin
      varSaldo := InputBoxValor(frm_principal.Caption,'Implementar Saldo Inicial (Apenas Numeros)');
      if StrToFloat(varSaldo) <> 0 then begin
         tab_principal.FieldByName('Saldo_Inicial').AsString := DecimalMySQL(varSaldo);
         frm_principal.sql_conecta.ExecSQL('INSERT INTO lancamento_financeiro '+
                                           'SET Codigo_Conta = ' + FloatToStr(edt_conta.KeyValue) +
                                           ', Codigo_Historico = ' + tab_verifica_historico.Fields[0].AsString +
                                           ', Valor = ' + QuotedStr(DecimalMySQL(varSaldo)) +
                                           ', Tipo = "Entrada"' +
                                           ', Observacoes = "Implementação de Saldo na Conta"');
      end;
   end;
   if tab_verifica.FieldByName('Saldo_Final').AsFloat > 0 then tab_principal.FieldByName('Saldo_Inicial').AsFloat := tab_verifica.FieldByName('Saldo_Final').AsFloat;
   tab_principal.FieldByName('Entrada').AsFloat := 0;
   tab_principal.FieldByName('Saida').AsFloat := 0;
   tab_principal.FieldByName('Saldo_Final').AsFloat := 0;
   tab_principal.FieldByName('Fechado').AsFloat := 0;
   tab_principal.Post;

   ShowMessage('Abertura Processada com Sucesso!');
end;

procedure Tfrm_abertura.img_sairClick(Sender: TObject);
begin
   Close;
end;

end.
