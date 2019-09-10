unit f_cadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, System.Actions, Vcl.ActnList, Vcl.Touch.GestureMgr,
  JvExControls, JvLabel, dxGDIPlusClasses, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, RxDBCtrl,
  JvNavigationPane, JvDBCombobox, Vcl.Buttons, DBCtrls, Winapi.ShellAPI, DBGrids,
  JvDBControls, JvDBLookup, JvDBSpinEdit, DBMaskEdit;

type
  Tfrm_cadastro = class(TForm)
    ActionList1: TActionList;
    Action1: TAction;
    GestureManager1: TGestureManager;
    tab_principal: TFDQuery;
    dts_principal: TDataSource;
    Panel1: TPanel;
    img_proximo: TImage;
    img_incluir: TImage;
    img_alterar: TImage;
    img_excluir: TImage;
    img_sair: TImage;
    JvLabel1: TJvLabel;
    img_anterior: TImage;
    procedure img_sairClick(Sender: TObject);
    procedure Bloqueia_Botoes(Ativo:Boolean;Botao, Botao2:String);
    procedure Habilita(Ativo:Boolean);
    procedure img_proximoClick(Sender: TObject);
    procedure img_incluirClick(Sender: TObject);
    procedure img_alterarClick(Sender: TObject);
    procedure img_excluirClick(Sender: TObject);
    procedure img_anteriorClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    FOnSoltaArquivo: TNotifyEvent;
    varFechado : Boolean;
    procedure WMDROPFILES(var msg: TWMDropFiles); message WM_DROPFILES;
    { Private declarations }
  public
   FArquivos : string;
   property OnSoltaArquivo: TNotifyEvent read FOnSoltaArquivo write FOnSoltaArquivo;
   procedure Incluir; virtual; abstract;
   procedure Alterar; virtual; abstract;
   procedure Excluir; virtual; abstract;
    { Public declarations }
  end;

var
  frm_cadastro: Tfrm_cadastro;

implementation

{$R *.dfm}

uses f_principal, funcoes;

procedure Tfrm_cadastro.WMDROPFILES(var msg: TWMDropFiles);
const
  MAXFILENAME = 255;
var
  cnt, Qtde: integer;
  Nome: array [0..MAXFILENAME] of char;
begin
  //quantos arquivos estão sendo "soltados" na aplicação
  Qtde := DragQueryFile(msg.Drop, $FFFFFFFF, Nome, MAXFILENAME);

  FArquivos :='';

  //percorre a lista de arquivos
  for cnt := 0 to Qtde-1 do begin
    //recupera o nome
    DragQueryFile(msg.Drop, cnt, Nome, MAXFILENAME) ;

    if Trim(FArquivos) <> '' then FArquivos:=FArquivos+';';
    FArquivos:=FArquivos+Nome;
  end;

  //libera a memória
  DragFinish(msg.Drop) ;

  if Assigned(FOnSoltaArquivo) then FOnSoltaArquivo(Self);
end;


procedure Tfrm_cadastro.Bloqueia_Botoes(Ativo:Boolean;Botao, Botao2:String);
var
   var_percorre : Integer;
begin
   for var_percorre:= 0 to self.ComponentCount -1 do begin
      if Self.Components[var_percorre] is TImage then begin
         if Ativo = False then begin
           if ((Self.Components[var_percorre] as TImage).Name <> Botao) and
              ((Self.Components[var_percorre] as TImage).Name <> Botao2) then
              (Self.Components[var_percorre] as TImage).Enabled := False;
               img_anterior.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'Botoes\Anterior.png');
               img_proximo.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'Botoes\Proximo.png');
//               img_procurar.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'Botoes\Procurar.png');
               img_sair.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'Botoes\Sair.png');

               if Botao = 'img_incluir' then
                  img_alterar.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'Botoes\Editar.png')
               else
                  img_incluir.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'Botoes\Incluir.png');
         end
         else begin
            (Self.Components[var_percorre] as TImage).Enabled := True;
         end;
      end;
   end;
   if (Botao = '') And (Botao2 = '') then begin
      img_anterior.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'Botoes\AAnterior.png');
      img_proximo.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'Botoes\AProximo.png');
      img_incluir.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'Botoes\AIncluir.png');
      img_excluir.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'Botoes\AExcluir.png');
      img_alterar.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'Botoes\AEditar.png');
//      img_procurar.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'Botoes\AProcurar.png');
      img_sair.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'Botoes\ASair.png');
   end;
end;

procedure Tfrm_cadastro.FormShow(Sender: TObject);
begin
   Bloqueia_Botoes(True,'','');
end;

procedure Tfrm_cadastro.Habilita(Ativo:Boolean);
var
   var_percorre : Integer;
begin
   for var_percorre:= 0 to self.ComponentCount -1 do begin
      if (Self.Components[var_percorre] is TDBEdit) then
         (Self.Components[var_percorre] as TDBEdit).Enabled := Ativo
      else if (Self.Components[var_percorre] is TDBMaskEdit) then
         (Self.Components[var_percorre] as TDBMaskEdit).Enabled := Ativo
      else if (Self.Components[var_percorre] is TDBComboBox) then
         (Self.Components[var_percorre] as TDBComboBox).Enabled := Ativo
      else if (Self.Components[var_percorre] is TDBLookupComboBox) then
         (Self.Components[var_percorre] as TDBLookupComboBox).Enabled := Ativo
      else if (Self.Components[var_percorre] is TRxDBCalcEdit) then
         (Self.Components[var_percorre] as TRxDBCalcEdit).Enabled := Ativo
      else if (Self.Components[var_percorre] is TJvDBCalcEdit) then
         (Self.Components[var_percorre] as TJvDBCalcEdit).Enabled := Ativo
      else if (Self.Components[var_percorre] is TJvDBLookupCombo) then
         (Self.Components[var_percorre] as TJvDBLookupCombo).Enabled := Ativo
      else if (Self.Components[var_percorre] is TJvDBComboBox) then
         (Self.Components[var_percorre] as TJvDBComboBox).Enabled := Ativo
      else if (Self.Components[var_percorre] is TDBDateEdit) then
         (Self.Components[var_percorre] as TDBDateEdit).Enabled := Ativo
      else if (Self.Components[var_percorre] is TJvDBDateEdit) then
         (Self.Components[var_percorre] as TJvDBDateEdit).Enabled := Ativo
      else if (Self.Components[var_percorre] is TJvDBSpinEdit) then
         (Self.Components[var_percorre] as TJvDBSpinEdit).Enabled := Ativo
      else if (Self.Components[var_percorre] is TJvDBMaskEdit) then
         (Self.Components[var_percorre] as TJvDBMaskEdit).Enabled := Ativo
      else if (Self.Components[var_percorre] is TDBMemo) then
         (Self.Components[var_percorre] as TDBMemo).Enabled := Ativo
      else if (Self.Components[var_percorre] is TDBGrid) then
         (Self.Components[var_percorre] as TDBGrid).Enabled := not Ativo;
   end;
end;

procedure Tfrm_cadastro.img_alterarClick(Sender: TObject);
begin
  if (img_alterar.Hint = 'Alterar') and (tab_principal.RecordCount > 0) then begin
      Bloqueia_Botoes(False,'img_alterar','img_excluir');
      Habilita(True);
      img_alterar.Hint := 'Gravar';
      img_excluir.Hint := 'Cancelar';
      frm_principal.pub_status := 1;
      tab_principal.Edit;
      varFechado := True;
   end
   else if img_alterar.Hint = 'Gravar' then begin
      Bloqueia_Botoes(True,'','');
      Habilita(False);
      img_alterar.Hint := 'Alterar';
      img_excluir.Hint := 'Excluir';
      frm_principal.pub_status := 0;
      tab_principal.Post;
      varFechado := False;
   end;
end;

procedure Tfrm_cadastro.img_anteriorClick(Sender: TObject);
begin
   tab_principal.Prior;
end;

procedure Tfrm_cadastro.img_excluirClick(Sender: TObject);
begin
   if img_excluir.Hint = 'Excluir' then begin
      if tab_principal.RecordCount > 0 then begin
         if Mensagem('Deseja Realmente Excluir este Registro',4) = 6 then begin
            Excluir;
            tab_principal.Delete;
         end;
      end;
   end
   else if img_excluir.Hint = 'Cancelar' then begin
      Bloqueia_Botoes(True,'','');
      Habilita(False);
      img_incluir.Hint := 'Incluir';
      img_alterar.Hint := 'Alterar';
      img_excluir.Hint := 'Excluir';
      frm_principal.pub_status := 0;
      tab_principal.Cancel;
      varFechado := False;
   end;
end;

procedure Tfrm_cadastro.img_incluirClick(Sender: TObject);
begin
   if img_incluir.Hint = 'Incluir' then begin
      Bloqueia_Botoes(False,'img_incluir','img_excluir');
      Habilita(True);
      img_incluir.Hint := 'Gravar';
      img_excluir.Hint := 'Cancelar';
      frm_principal.pub_status := 1;
      tab_principal.Append;
      varFechado := True;
   end
   else if img_incluir.Hint = 'Gravar' then begin
      Bloqueia_Botoes(True,'','');
      Habilita(False);
      img_incluir.Hint := 'Incluir';
      img_excluir.Hint := 'Excluir';
      frm_principal.pub_status := 0;
      Incluir;
      tab_principal.Post;
      varFechado := False;
   end;
end;

procedure Tfrm_cadastro.img_proximoClick(Sender: TObject);
begin
   tab_principal.Next;
end;

procedure Tfrm_cadastro.img_sairClick(Sender: TObject);
begin
   Close;
end;

end.
