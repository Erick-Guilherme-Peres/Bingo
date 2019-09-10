unit f_lancamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, f_cadastro, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxCurrencyEdit,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, Vcl.StdCtrls, JvExStdCtrls, JvCombobox,
  JvDBCombobox, RxCurrEdit, RxDBCtrl, Vcl.Mask, RxToolEdit, Vcl.DBCtrls,
  JvExControls, JvDBLookup, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Touch.GestureMgr, System.Actions, Vcl.ActnList, JvLabel, dxGDIPlusClasses,
  Vcl.ExtCtrls, cxDBLookupComboBox;

type
  Tfrm_lancamento = class(Tfrm_cadastro)
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    edt_conta: TJvDBLookupCombo;
    edt_historico: TJvDBLookupCombo;
    edt_observacoes: TDBMemo;
    edt_data: TDBDateEdit;
    edt_valor: TRxDBCalcEdit;
    edt_tipo: TJvDBComboBox;
    cxg_dados: TcxGrid;
    cxg_dadosDBTableView1: TcxGridDBTableView;
    cxg_dadosDBTableView1Column1: TcxGridDBColumn;
    cxg_dadosDBTableView1Column2: TcxGridDBColumn;
    cxg_dadosDBTableView1Column3: TcxGridDBColumn;
    cxg_dadosDBTableView1Column4: TcxGridDBColumn;
    cxg_dadosLevel1: TcxGridLevel;
    cxg_dadosDBTableView1Column5: TcxGridDBColumn;
    cxg_dadosDBTableView1Column6: TcxGridDBColumn;
    tab_conta: TFDQuery;
    dts_conta: TDataSource;
    tab_historico: TFDQuery;
    dts_historico: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure edt_contaEnter(Sender: TObject);
    procedure edt_historicoEnter(Sender: TObject);
    procedure img_alterarClick(Sender: TObject);
    procedure img_incluirClick(Sender: TObject);
    procedure dts_principalDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Excluir; override;
    procedure Alterar; override;
    procedure Incluir; override;
  end;

var
  frm_lancamento: Tfrm_lancamento;

implementation

{$R *.dfm}

uses f_principal, funcoes;

procedure Tfrm_lancamento.Excluir; begin end;
procedure Tfrm_lancamento.Alterar; begin end;
procedure Tfrm_lancamento.Incluir; begin end;

procedure Tfrm_lancamento.dts_principalDataChange(Sender: TObject;
  Field: TField);
begin
   if not (tab_principal.State in ([dsEdit, dsInsert])) then
      PreencheCombo(edt_historico,'SELECT Codigo, Descricao FROM historico');
end;

procedure Tfrm_lancamento.edt_contaEnter(Sender: TObject);
begin
   PreencheCombo(edt_conta,'SELECT Codigo, Descricao FROM conta');
end;

procedure Tfrm_lancamento.edt_historicoEnter(Sender: TObject);
begin
   if Trim(edt_tipo.Text) = '' then begin
      Mensagem('Selecione o Tipo de Movimento',48);
      Abort;
   end;

   PreencheCombo(edt_historico,'SELECT Codigo, Descricao FROM historico WHERE Ativo = -1 AND Tipo = ' + QuotedStr(edt_tipo.Text));
end;

procedure Tfrm_lancamento.FormShow(Sender: TObject);
begin
   tab_conta.Open('SELECT * FROM conta');
   tab_historico.Open('SELECT * FROM historico');
   tab_principal.Open('SELECT * FROM lancamento_financeiro');
   if tab_principal.RecordCount > 0 then begin
      edt_contaEnter(Sender);
      edt_historicoEnter(Sender);
      tab_principal.Cancel;
   end;
end;

procedure Tfrm_lancamento.img_alterarClick(Sender: TObject);
begin
   inherited;
   if tab_principal.State = dsEdit then begin
      edt_data.Enabled := False;
      edt_tipo.Enabled := False;
      edt_conta.Enabled := False;
      edt_valor.Enabled := False;
      edt_historico.Enabled := False;
   end;
end;

procedure Tfrm_lancamento.img_incluirClick(Sender: TObject);
begin
   if img_incluir.Hint = 'Gravar' then begin
      if Trim(edt_tipo.Text) = '' then begin
         Mensagem('Obrigatório Selecionar Tipo de Movimento!',48);
         Abort;
      end;
      if Trim(edt_historico.Text) = '' then begin
         Mensagem('Obrigatório Selecionar Historico!',48);
         Abort;
      end;
      if Trim(edt_conta.Text) = '' then begin
         Mensagem('Obrigatório Selecionar a Conta!',48);
         Abort;
      end;
      if (Trim(edt_valor.Text) = '') or (edt_valor.Value = 0) then begin
         Mensagem('Obrigatório Valor Maior que Zero!',48);
         Abort;
      end;
      if (StrToInt(RetornaCampo('COALESCE(COUNT(*),0) Cnt','saldo_conta WHERE Fechado <> -1 AND Codigo_Conta = '+ FloatToStr(edt_conta.KeyValue))) = 0) then begin
         Mensagem('Contas de Lançamento Financeiro Sem Abertura de Saldo!',48);
         Abort;
      end;

      LancaSaldoFinanceiro(FloatToStr(edt_conta.KeyValue),edt_tipo.Text,DecimalMySQL(edt_valor.Text));
   end;
   inherited;
end;

end.
