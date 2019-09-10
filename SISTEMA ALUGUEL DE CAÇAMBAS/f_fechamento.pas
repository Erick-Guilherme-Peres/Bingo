unit f_fechamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, System.Actions, Vcl.ActnList, Vcl.Touch.GestureMgr,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, JvExControls, JvLabel, dxGDIPlusClasses, JvDBLookup;

type
  Tfrm_fechamento = class(TForm)
    ActionList1: TActionList;
    Action1: TAction;
    GestureManager1: TGestureManager;
    edt_conta: TJvDBLookupCombo;
    Label7: TLabel;
    Panel1: TPanel;
    img_incluir: TImage;
    img_sair: TImage;
    JvLabel1: TJvLabel;
    tab_principal: TFDQuery;
    tab_verifica: TFDQuery;
    tab_verifica_historico: TFDQuery;
    procedure edt_contaEnter(Sender: TObject);
    procedure img_sairClick(Sender: TObject);
    procedure img_incluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_fechamento: Tfrm_fechamento;

implementation

{$R *.dfm}

uses f_principal, funcoes;

procedure Tfrm_fechamento.edt_contaEnter(Sender: TObject);
begin
   PreencheCombo(edt_conta,'SELECT Codigo, Descricao FROM conta WHERE Codigo IN (SELECT Codigo_Conta FROM saldo_conta WHERE Fechado = 0)');
end;

procedure Tfrm_fechamento.FormShow(Sender: TObject);
begin
   tab_principal.Open('SELECT * FROM saldo_conta');
end;

procedure Tfrm_fechamento.img_incluirClick(Sender: TObject);
begin
   if Trim(edt_conta.Text) = '' then begin
      Mensagem('Obrigatório Selecionar a Conta!',48);
      Abort;
   end;

   tab_principal.Locate('Codigo_Conta;Fechado',varArrayOf([edt_conta.KeyValue,0]),[]);

   if tab_principal.RecordCount > 0 then begin
      frm_principal.sql_conecta.ExecSQL('UPDATE saldo_conta SET Fechado = -1, Data_Fechamento = DATE(now()) WHERE Codigo = ' + tab_principal.FieldByName('Codigo').AsString);
      tab_principal.Refresh;
   end;
   ShowMessage('Fechamento Processado com Sucesso!');
end;

procedure Tfrm_fechamento.img_sairClick(Sender: TObject);
begin
   Close;
end;

end.
