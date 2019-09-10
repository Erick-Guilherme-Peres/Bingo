unit f_aluguel;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, System.Actions, Vcl.ActnList, Vcl.Touch.GestureMgr,
  dxGDIPlusClasses, JvExExtCtrls, JvImage, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, JvComponentBase,
  JvBalloonHint, dxScreenTip, cxClasses, dxCustomHint, cxHint, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
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
  dxSkinXmas2008Blue, cxGroupBox;

type
  Tfrm_aluguel = class(TForm)
    ActionList1: TActionList;
    Action1: TAction;
    GestureManager1: TGestureManager;
    Panel1: TPanel;
    tab_principal: TFDQuery;
    dts_principal: TDataSource;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    cxHint: TBalloonHint;
    cxGroupBox2: TcxGroupBox;
    scb_Cacambas: TScrollBox;
    cxGroupBox1: TcxGroupBox;
    scbCacambas: TScrollBox;
    edt_Pedido: TEdit;
    Label4: TLabel;
    procedure FormShow(Sender: TObject);
    procedure ImagemClick(Sender: TObject);
    procedure Label3Click(Sender: TObject);
    procedure edt_PedidoKeyPress(Sender: TObject; var Key: Char);
  private
    procedure PopulaTela;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_aluguel: Tfrm_aluguel;

implementation

{$R *.dfm}

uses f_dados_aluguel, funcoes;

procedure Tfrm_aluguel.edt_PedidoKeyPress(Sender: TObject; var Key: Char);
var
   vImagem : TImage;
   varCacamba : String;
begin
   if Key = #13 then begin
      if (Trim(edt_pedido.Text) <> '') and (tab_principal.Locate('Pedido',edt_pedido.Text,[]))  then begin
         varCacamba := tab_principal.Fields[0].AsString;
         Tfrm_dados_aluguel.Create(Self,'','', '1',edt_Pedido.Text).ShowModal;

         tab_principal.Refresh;
         tab_principal.Locate('Codigo',varCacamba,[]);

         vImagem := Nil;

         if tab_principal.Fields[3].AsString = '3' then
            vImagem := TImage(scb_Cacambas.FindComponent('Cacamba'+tab_principal.Fields[0].AsString))
         else
            vImagem := TImage(scbCacambas.FindComponent('Cacamba'+tab_principal.Fields[0].AsString));


         if Assigned(vImagem) then begin
            vImagem.HelpKeyword := Trim(tab_principal.Fields[2].AsString);
            if Trim(tab_principal.Fields[2].AsString) <> '' then
               vImagem.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'Botoes\CacambaInativa.png')
            else
               vImagem.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'Botoes\CacambaAtiva.png');
         end;
      end;
   end;
end;

procedure Tfrm_aluguel.FormShow(Sender: TObject);
begin
   tab_principal.Open('SELECT Codigo, CONCAT(Descricao," - ",dias,"m³") Descr, (SELECT IF(pedidoFinalizado = 0,Codigo,"") FROM pedido WHERE codigoProduto = produto.codigo AND pedidoFinalizado = 0 ORDER BY codigo DESC LIMIT 1) Pedido, dias '+
                      'FROM produto WHERE ativo = -1');
   PopulaTela;
end;

procedure Tfrm_aluguel.ImagemClick(Sender: TObject);
begin
   Tfrm_dados_aluguel.Create(Self,StringReplace((Sender as TImage).Name,'Cacamba','',[]),(Sender as TImage).Hint, (Sender as TImage).HelpKeyword,'').ShowModal;
   tab_principal.Refresh;
   tab_principal.Locate('Codigo',StringReplace((Sender as TImage).Name,'Cacamba','',[]),[]);

   (Sender as TImage).HelpKeyword := Trim(tab_principal.Fields[2].AsString);
   if Trim(tab_principal.Fields[2].AsString) <> '' then
       (Sender as TImage).Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'Botoes\CacambaInativa.png')
   else
       (Sender as TImage).Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'Botoes\CacambaAtiva.png');

end;

procedure Tfrm_aluguel.Label3Click(Sender: TObject);
begin
   Close;
end;

procedure Tfrm_aluguel.PopulaTela;
var
   TamLTela : Integer;
   varLTela5 : Integer;
   varLTela3 : Integer;
   varATela5 : Integer;
   varATela3 : Integer;
   Imagem   : TImage;
begin
   TamLTela := Self.Width;
   varLTela5 := 10;
   varLTela3 := 10;
   varATela5 := 10;
   varATela3 := 10;

   tab_principal.First;
   while not tab_principal.Eof do begin
      if True then
      if tab_principal.Fields[3].AsString = '5' then begin
         Imagem := TImage.Create(scbCacambas);
         Imagem.Parent := scbCacambas;
         Imagem.Top := varATela5;
         Imagem.Left := varLTela5;
         varLTela5 := varLTela5 + 80;
         if varLTela5 >= TamLTela -60 then begin
            varATela5 := varATela5 + 80;
            varLTela5 := 10;
         end;
      end
      else begin
         Imagem := TImage.Create(scb_Cacambas);
         Imagem.Parent := scb_Cacambas;
         Imagem.Top := varATela3;
         Imagem.Left := varLTela3;
         varLTela3 := varLTela3 + 80;
         if varLTela3 >= TamLTela -60 then begin
            varATela3 := varATela3 + 80;
            varLTela3 := 10;
         end;
      end;

      Imagem.CustomHint := cxHint;
      Imagem.Visible := True;
      Imagem.OnClick := ImagemClick;
      Imagem.Name := 'Cacamba'+tab_principal.Fields[0].AsString;
      Imagem.Hint := tab_principal.Fields[1].AsString;
      Imagem.Height := 70;
      Imagem.Width := 70;
      Imagem.Stretch := True;
      Imagem.ShowHint := True;
      Imagem.HelpKeyword := tab_principal.Fields[2].AsString;
      if Trim(tab_principal.Fields[2].AsString) <> '' then
          Imagem.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'Botoes\CacambaInativa.png')
      else
          Imagem.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'Botoes\CacambaAtiva.png');

      tab_principal.Next;
   end
end;

end.
