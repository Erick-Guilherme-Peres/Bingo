unit f_empresa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, System.Actions, Vcl.ActnList, Vcl.Touch.GestureMgr,
  JvExControls, JvLabel, dxGDIPlusClasses, JvExMask, JvToolEdit, JvMaskEdit,
  JvDBControls, Vcl.Mask, Vcl.DBCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  Tfrm_empresa = class(TForm)
    AppBar: TPanel;
    CloseButton: TImage;
    ActionList1: TActionList;
    Action1: TAction;
    GestureManager1: TGestureManager;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    edt_nome: TDBEdit;
    edt_documento: TDBEdit;
    edt_endereco: TDBEdit;
    edt_complemento: TDBEdit;
    edt_bairro: TDBEdit;
    edt_cidade: TDBEdit;
    edt_uf: TDBEdit;
    edt_telefone: TJvDBMaskEdit;
    edt_celular: TJvDBMaskEdit;
    Panel1: TPanel;
    img_incluir: TImage;
    img_sair: TImage;
    JvLabel1: TJvLabel;
    tab_principal: TFDQuery;
    dts_principal: TDataSource;
    procedure img_sairClick(Sender: TObject);
    procedure img_incluirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_empresa: Tfrm_empresa;

implementation

{$R *.dfm}

uses f_principal, funcoes;

procedure Tfrm_empresa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if tab_principal.RecordCount = 0 then begin
      Mensagem('Cadastre os dados da Empresa',0);
      Abort;
   end;
end;

procedure Tfrm_empresa.FormShow(Sender: TObject);
begin
   tab_principal.Open('SELECT * FROM empresa');
   if tab_principal.RecordCount = 1 then tab_principal.Edit
   else tab_principal.Append;
end;

procedure Tfrm_empresa.img_incluirClick(Sender: TObject);
begin
   if Trim(edt_nome.Text) = '' then begin
      Mensagem('Preencha o Nome',48);
      Abort;
   end;
   tab_principal.Post;
   Close;
end;

procedure Tfrm_empresa.img_sairClick(Sender: TObject);
begin
   tab_principal.Cancel;
   Close;
end;

end.
