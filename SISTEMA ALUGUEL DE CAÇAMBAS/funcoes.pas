unit funcoes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, JvMenus, Vcl.ImgList,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, Data.DB, FireDAC.Comp.Client, FireDAC.VCLUI.Wait, DBMaskEdit,
  FireDAC.Comp.UI, FireDAC.Phys.MySQL, Winapi.MultiMon, Vcl.Themes,
  Vcl.StdCtrls, Vcl.ComCtrls, JvExComCtrls, JvMonthCalendar, IniFiles,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet, JvDBLookup, f_principal, Registry, jpeg, GIFimg,
  RxDBCtrl, Vcl.DBCtrls, StrUtils, ACBrSMSClass, JvExControls, JvLabel, Vcl.Mask,
  JvNavigationPane, JvExMask, JvToolEdit, JvMaskEdit, JvDBControls, JvBaseEdits, Printers;

  function Nosso_Numero_Soma(pub_nosso_numero: String; pub_soma: Integer) : string;
  function Round_Real(Valor : Real ; Decimais : Byte) : Extended;
  function Zeros(varValor : String; Tamanho : integer; Inverter : Boolean): String;
  function justify(const texto: TStringList; Colunas: integer): TStringList;
  function Str_Zero(Numero:Real; Tamanho:Byte): string;
  procedure Impressora_Padrao_Define;
  function DecCompetencia(CompAno: Integer; CompMes: Integer; Dec: Integer): String;
  function VerificaForm(Form : TFormClass) : Integer;
  procedure ConvertBmp(const InputFileName: string; BM: TBitmap);
  procedure BuscaCep(Cep : String; Cidade, Estado, Bairro, Endereco : TEdit);
  procedure PreencheComboBox(Combo: TDBComboBox);
  procedure CarregaConfiguracoesSMS;
  procedure CarregaConfiguracoes;
  procedure PreencheCombo(Combo: TJvDBLookupCombo; Query : String); overload;
  procedure PreencheCombo(Combo: TDBLookupComboBox; Query : String); overload;
  procedure Registro_Grava(sSistema, sNomeValue, sValue: string);
  procedure LancaFinanceiro(Conta, Historico, Valor, Tipo, Observacao: String);
  procedure LancaSaldoFinanceiro(Conta, Tipo, Valor : String);
  procedure VerificaHora(Sender : TDBMaskEdit);
  procedure CarregaUsuarios(Codigo : String);
  function SelecionaConta: String;
  function SelecionaHistorico(Tipo : String): String;
  function InputBoxValor(ACaption, APrompt1: string): string;
  function InputBoxPagamento(ACaption, APrompt1: string): string;
  function InputBoxData(ACaption, APrompt1: string): TDateTime;
  function DecimalMysql(Campo: String): String;
  function RetornaCampo(Campo, Tabela: String): String;
  function Gera_Codigo(Tabela: String): String;
  function Registro_Leitura(sSistema, sNomeValue: String): String;
  function CriarForm(FormClass: TFormClass; Show_Modal : Boolean = False) : TForm;
  function Criptografa(Texto : AnsiString; Chave : Integer): AnsiString;
  function Descriptografa(Texto : AnsiString; Chave : Integer): AnsiString;
  function Mensagem(const Text: PWideChar; Flags: Longint): Integer;
  procedure Aviso(Msg : PWideChar);
  function QtdMesesCompetencia(AnoIni, MesIni, AnoFim, MesFim: integer): integer;
  {       |N | W |  H|  A|  E|  - N : Normal; W : Warning; H : Help; A : Aviso; E : Exclamação.
   Flags: | 0| 16| 32| 48| 64|  - OK                                ________________________________________________
          | 1| 17| 33| 49| 65|  - OK / Cancelar                    |  Retornos 1 - OK          |    2 - Cancelar    |
          | 2| 18| 34| 50| 66|  - Anular / Repetir / Ignorar       |           3 - Anular      |    4 - Repetir     |
          | 3| 19| 35| 51| 67|  - Sim / Não / Cancelar             |           5 - Ignorar     |    6 - Sim         |
          | 4| 20| 36| 52| 68|  - Sim / Não                        |           7 - Não         |                    |
          | 5| 21| 37| 53| 69|  - Repetir / Cancelar               |           10 - Tentar     |    11 - Continuar  |
          | 6| 22| 38| 54| 70|  - Cancelar / Tentar / Continuar    |________________________________________________| }

implementation

uses f_cadastro, f_localizar;

procedure Aviso(Msg : PWideChar);
begin
   Mensagem(Msg, 48);
   Abort;
end;

function QtdMesesCompetencia(AnoIni, MesIni, AnoFim, MesFim: integer): integer;
var var_qtd_meses: integer;
    var_aux, var_cnt, var_exercicio, var_meses : Integer;
    var_ano : integer;
begin
   var_qtd_meses:=0;

   var_exercicio:=(1+(AnoFim-AnoIni));
   for var_aux:=1 to var_exercicio do begin
      var_ano:= (((AnoIni)-1)+var_aux);
      if AnoIni = AnoFim then
         var_meses:=(1+(MesFim-MesIni))
      else begin
         if var_ano=AnoIni then
            var_meses:=(1+(12-MesIni))
         else if var_ano=AnoFim then
            var_meses:=(1+(MesFim-01))
         else begin
            var_meses:=12;
         end;
      end;
      for var_cnt:=1 to var_meses do begin
         var_qtd_meses:=var_qtd_meses+1;
      end;
   end;

   result:=var_qtd_meses;
end;

function Nosso_Numero_Soma(pub_nosso_numero: String; pub_soma: Integer) : string;
var loc_resultado : String;
    loc_nosso_numero : Extended;
    loc_tam : Integer;
begin
   loc_tam:=Length(pub_nosso_numero);
   loc_nosso_numero:=(StrToFloat(pub_nosso_numero)+pub_soma);
   Str(loc_nosso_numero:50:0,loc_resultado);
   loc_tam:=Length(Trim(loc_resultado));
   loc_resultado:=Str_Zero(StrToFloat(Trim(loc_resultado)),loc_tam);
   Result :=loc_resultado;
end;

function Round_Real(Valor : Real ; Decimais : Byte) : Extended;
// Arredonda as casas decimais de um valor Float
var i : Byte;
   ML, RR : string;
begin
   ML:='0.';
   for i := 1 To Decimais do begin
      Application.ProcessMessages;
      ML:=ML + '0';
   end;
   RR:=FormatFloat(ML,Valor);
   Result:=StrToFloat(RR);
end;

function justify(const texto: TStringList; Colunas: integer): TStringList;
var
  Tamanho, x, y, z: Integer;
  Lista: TStringList;
  LinhaCompleta, Inicio, Resto: String;
begin
   Lista := TStringList.Create;
   for x := 0 to Texto.Count - 1 do begin
      // Substitui tab por tres espaços
      while Pos(''#9'', Texto.Strings[x]) > 0 do
         Texto.Strings[x] := Copy(Texto.Strings[x], 1,Pos(''#9'', Texto.Strings[x]) - 1) +' ' + Copy(Texto.Strings[x], Pos(''#9'', Texto.Strings[x]) + 1,Length(Texto.Strings[x]));
      if Length(TrimRight(Texto.Strings[x])) <= Colunas then
         Lista.Add(TrimRight(Texto.Strings[x]))
      else begin
         if Copy(Texto.Strings[x], 1, Colunas + 1) = ' ' then
            Lista.Add(Copy(Texto.Strings[x], 1, Colunas))
         else begin
            LinhaCompleta := Texto.Strings[x];
            y := Colunas;
            while (LinhaCompleta <> '') do begin
               for y := Colunas downto 1 do begin
                  Inicio := Copy(LinhaCompleta, 1, y);
                  Resto := Copy(LinhaCompleta, y + 1, Length(LinhaCompleta));
                  if (Inicio= '') then
                     break
                  else if Length(TrimRight(LinhaCompleta)) <= Colunas then begin
                     Lista.Add(TrimRight(Inicio));
                     LinhaCompleta := '';
                     break;
                  end
                  else if (Inicio[y] = ' ') then begin
                     if Inicio <> '' then begin
                        Inicio := TrimRight(Inicio);
                        // justifica o texto
                        while Length(Inicio) < Colunas do begin
                           if Inicio = '' then
                              break;
                              Tamanho := Length(Inicio);
                           for z := Tamanho downto 1 do begin
                              if inicio[z] = ' ' then begin
                                 Inicio := (Copy(Inicio, 1, z) + ' ' +
                                 Copy(Inicio, z + 1, Length(Inicio)));
                                 if (Length(Inicio) = Colunas) then
                                    break;
                              end
                              else if (Pos(' ', Inicio) = 0)then begin
                                 Lista.Add(TrimRight(Inicio));
                                 Inicio := '';
                                 break;
                              end;
                           end;
                        end;
                        Lista.Add(TrimRight(Inicio));
                        LinhaCompleta := Resto;
                        break;
                     end
                     else
                        Break;
                  end;
               end;
               if LinhaCompleta <> Resto then
               LinhaCompleta := Resto;
            end;
         end;
      end;
   end;
   Result := Lista;
end;

function Zeros(varValor : String; Tamanho : integer; Inverter : Boolean): String;
var
   i, add : integer;
begin
   add := tamanho - length(varValor);
   result := varValor;
   if add > 0 then begin
      for i := 1 to add do begin
         if Inverter = false then
            result := '0' + result
         else
            result := result + '0';
      end;
   end;
end;


function Str_Zero(Numero:Real; Tamanho:Byte): string;
var fnc_contador : integer;
    fnc_resultado : string;
begin
   fnc_resultado:='';
   for fnc_contador:=1 to Tamanho do fnc_resultado:=fnc_resultado+'0';
   fnc_resultado:=fnc_resultado+FloatToStr(Numero);
   fnc_resultado:=Copy(fnc_resultado, ((Length(fnc_resultado)-Tamanho)+1), Tamanho);
   Result:=fnc_resultado;
end;

procedure Impressora_Padrao_Define;
var
  Res: DWORD;
  Device : array[0..255] of char;
  Driver : array[0..255] of char;
  Port   : array[0..255] of char;
  WindowsStr: array[0..255] of char;
  hDeviceMode: THandle;
begin
   // Pega dados da impressora atual
   Printer.GetPrinter(Device, Driver, Port, hDeviceMode);
   // Monta string exigida pela API do Windows
   StrCat( Device, ',');
   StrCat( Device, Driver );
   StrCat( Device, ',');
   StrCat( Device, Port );
   StrPCopy(WindowsStr, 'windows');
   // Torna a impressora a atual;
   WriteProfileString(WindowsStr, 'device', Device);
   SendMessageTimeout(HWND_BROADCAST, WM_WININICHANGE, 0, DWORD(@WindowsStr), SMTO_NORMAL, 1000, Res);
end;

function DecCompetencia(CompAno: Integer; CompMes: Integer; Dec: Integer): String;
var i, m, a : integer;
begin
   // ano
   a:= CompAno;

   // mês
   m:= CompMes;

   for i:=1 to Dec do begin
      Application.ProcessMessages;
      if m = 1 then begin
         m:= 12;
         a:= a - 1;
       end
      else m:= m - 1;
   end;

   Result:= ( Str_Zero(a, 4) + Str_Zero(m, 2) );
end;

function VerificaForm(Form : TFormClass) : Integer;
var
   I : Integer;
begin
   Result := -1;
   for I := 0 to Screen.FormCount - 1 do begin
      if (Screen.Forms[I] is Form) then begin
         (Screen.Forms[I] as Form).BringToFront;
         Result := I;
      end;
   end;
end;

procedure BuscaCep(Cep : String; Cidade, Estado, Bairro, Endereco : TEdit);
var
   Tabela : TFDQuery;
begin
   if Cep <> '' then begin
      Tabela := TFDQuery.Create(Application);
      Tabela.Connection := frm_principal.sql_conecta;

      Tabela.Open('SELECT Cidade, Estado, Bairro, Logradouro FROM cep WHERE cep = "'+Cep+'"');
      if Tabela.RecordCount > 0 then begin
         Estado.Text   := Tabela.Fields[1].AsString;
         Cidade.Text   := Tabela.Fields[0].AsString;
         Bairro.Text   := Tabela.Fields[2].AsString;
         Endereco.Text := Tabela.Fields[3].AsString;
      end;
   end;
end;

procedure ConvertBmp(const InputFileName: string; BM: TBitmap);
var
  FS: TFileStream;
  FirstBytes: AnsiString;
  Graphic: TGraphic;
begin
  Graphic := nil;
  FS := TFileStream.Create(InputFileName, fmOpenRead);
  try
    SetLength(FirstBytes, 8);
    FS.Read(FirstBytes[1], 8);
    if Copy(FirstBytes, 1, 2) = 'BM' then
    begin
      Graphic := TBitmap.Create;
    end else
//     if FirstBytes = #137'PNG'#13#10#26#10 then
//    begin
//      Graphic := TPNGObject.Create;
//    end else
    if Copy(FirstBytes, 1, 3) =  'GIF' then
    begin
      Graphic := TGIFImage.Create;
    end else
    if Copy(FirstBytes, 1, 2) = #$FF#$D8 then
    begin
      Graphic := TJPEGImage.Create;
    end
    else begin
       ShowMessage('Formato de arquivo inválido. Extensões suportadas são PNG, JPG, GIF e BMP.');
       Exit;
    end;
    if Assigned(Graphic) then
    begin
      try
        FS.Seek(0, soFromBeginning);
        Graphic.LoadFromStream(FS);
        BM.Assign(Graphic);
      except
      end;
      Graphic.Free;
    end;
  finally
    FS.Free;
  end;
end;

procedure PreencheComboBox(Combo: TDBComboBox);
var
   Tabela : TFDQuery;
begin
   Tabela := TFDQuery.Create(Application);
   Tabela.Connection := frm_principal.sql_conecta;

   Tabela.Open('SELECT * FROM modulos');
   Combo.Clear;   //
   if Tabela.Fields[2].AsString = '-1' then Combo.Items.Add('Odonto');
   if Tabela.Fields[3].AsString = '-1' then Combo.Items.Add('Oftalmo');
end;

procedure CarregaConfiguracoesSMS;
var
   Tabela : TFDQuery;
   IndiceMsgEnviada : String;
begin
   Tabela := TFDQuery.Create(Application);
   Tabela.Connection := frm_principal.sql_conecta;

   Tabela.Open('SELECT * FROM empresa');
   if Tabela.FieldByName('modelo').AsInteger > 0 then begin
      if frm_principal.ACBRSms.Ativo then frm_principal.ACBrSms.Desativar;
      if frm_principal.ACBrSms.Ativo = false then begin
         frm_principal.ACBRSms.Modelo       := TACBrSMSModelo(Tabela.FieldByName('modelo').AsInteger);
         frm_principal.ACBRSms.Device.Porta := Tabela.FieldByName('porta').AsString;
         frm_principal.ACBRSms.Device.Baud  := StrToInt(Tabela.FieldByName('velocidade').AsString);
         try
            frm_principal.ACBRSms.Ativar;
         except
            Abort;
         end;
         if not frm_principal.ACBRSms.Ativo then begin
            Mensagem('Dispositivo não encontrado',48);
            Abort;
         end;
         if frm_principal.ACBRSms.EstadoSincronismo = sinErro            then Mensagem('Erro ao Conectar',0)
         else if frm_principal.ACBRSms.EstadoSincronismo = sinSincronizado    then Mensagem('Sincronizando',0)
         else if frm_principal.ACBRSms.EstadoSincronismo = sinNaoSincronizado then Mensagem('Não Sincronizado',0)
         else if frm_principal.ACBRSms.EstadoSincronismo = sinBucandoRede     then Mensagem('Buscando Rede',0);
         if frm_principal.ACBRSms.Ativo then Mensagem('Conexão Estabilizada!',0);
      end;
   end;
end;

procedure CarregaConfiguracoes;
var
   Tabela : TFDQuery;
begin
   Tabela := TFDQuery.Create(Application);
   Tabela.Connection := frm_principal.sql_conecta;

   Tabela.Open('SELECT * FROM empresa');
   frm_principal.ACBrMail1.Clear;
   case AnsiIndexStr(Tabela.FieldByName('servidorEmail').AsString,['Gmail','Yahoo','Uol','Hotmail / Outlook']) of
      0 : begin
         frm_principal.ACBrMail1.Host := 'smtp.gmail.com';
         frm_principal.ACBrMail1.Port := '465';
         frm_principal.ACBrMail1.SetTLS := False;
         frm_principal.ACBrMail1.SetSSL := True;
      end;
      1 : begin
          frm_principal.ACBrMail1.Host := 'smtp.mail.yahoo.com';
          frm_principal.ACBrMail1.Port := '465';
          frm_principal.ACBrMail1.SetTLS := False;
          frm_principal.ACBrMail1.SetSSL := True;
       end;
      2 : begin
          frm_principal.ACBrMail1.Host := 'smtps.uol.com.br';
          frm_principal.ACBrMail1.Port := '465';
          frm_principal.ACBrMail1.SetTLS := False;
          frm_principal.ACBrMail1.SetSSL := True;
      end;
      3 :begin
          frm_principal.ACBrMail1.Host := 'smtp.live.com';
          frm_principal.ACBrMail1.Port := '587';
          frm_principal.ACBrMail1.SetTLS := True;
          frm_principal.ACBrMail1.SetSSL := False;
      end;
   end;
   frm_principal.ACBrMail1.IsHTML := True;
   frm_principal.ACBrMail1.From := Tabela.FieldByName('eMail').AsString;
   frm_principal.ACBrMail1.FromName := Tabela.FieldByName('nome').AsString;
   frm_principal.ACBrMail1.Username := Tabela.FieldByName('eMail').AsString;
   frm_principal.ACBrMail1.Password := Tabela.FieldByName('senhaEmail').AsString;
end;

procedure PreencheCombo(Combo: TJvDBLookupCombo; Query : String);
var
   Tabela : TFDQuery;
   DTSource : TDataSource;
begin
   Tabela := TFDQuery.Create(Application);
   Tabela.Connection := frm_principal.sql_conecta;

   DTSource := TDataSource.Create(Application);
   DTSource.DataSet := Tabela;

   Tabela.Open(Query);

   Combo.LookupField := Tabela.Fields[0].FieldName;
   Combo.LookupDisplay := Tabela.Fields[1].FieldName;
   Combo.LookupSource := DTSource;
end;

procedure PreencheCombo(Combo: TDBLookupComboBox; Query : String);
var
   Tabela : TFDQuery;
   DTSource : TDataSource;
begin
   Tabela := TFDQuery.Create(Application);
   Tabela.Connection := frm_principal.sql_conecta;

   DTSource := TDataSource.Create(Application);
   DTSource.DataSet := Tabela;

   Tabela.Open(Query);

   Combo.KeyField := Tabela.Fields[0].FieldName;
   Combo.ListField := Tabela.Fields[1].FieldName;
   Combo.ListSource := DTSource;
end;


procedure Registro_Grava(sSistema, sNomeValue, sValue: string);
var Reg: TRegistry;
begin
   Reg:=TRegistry.Create;
   try
      Reg.RootKey:=HKey_Local_Machine;
      Reg.OpenKey('Software\Sistemas\'+sSistema+'_', True);
      Reg.WriteString(sNomeValue,sValue);
   finally
      Reg.Free;
   end;
end;

procedure LancaFinanceiro(Conta, Historico, Valor, Tipo, Observacao: String);
begin
   frm_principal.sql_conecta.ExecSQL('INSERT INTO lancamento_financeiro '+
                                     'SET Codigo_Conta = ' + Conta +
                                     ', Codigo_Historico =' + Historico +
                                     ', Valor = ' + QuotedStr(Valor) +
                                     ', Tipo = ' + QuotedStr(Tipo) +
                                     ', Observacoes = ' + QuotedStr(Observacao));
   LancaSaldoFinanceiro(Conta,Tipo,Valor);
end;

procedure LancaSaldoFinanceiro(Conta, Tipo, Valor : String);
begin
   if Tipo = 'Entrada' then begin
      frm_principal.sql_conecta.ExecSQL('UPDATE saldo_conta SET Entrada = COALESCE(Entrada,0) + COALESCE(' + QuotedStr(Valor) + ',0) ' +
                                        ',Saldo_Final = COALESCE(Saldo_Inicial,0) + COALESCE(Entrada,0) - COALESCE(Saida,0) ' +
                                        'WHERE Codigo_Conta = '+ Conta);
   end
   else begin
      frm_principal.sql_conecta.ExecSQL('UPDATE saldo_conta SET Saida = COALESCE(Saida,0) + COALESCE(' + QuotedStr(Valor) + ',0) ' +
                                        ',Saldo_Final = COALESCE(Saldo_Inicial,0) + COALESCE(Entrada,0) - COALESCE(Saida,0) ' +
                                        'WHERE Codigo_Conta = '+ Conta);
   end;

end;

procedure VerificaHora(Sender : TDBMaskEdit);
begin
   if Length(Trim(Sender.Text)) < 6 then begin
      Mensagem('Digite uma Hora Valida',48);
      Sender.SetFocus;
      Abort;
   end
   else begin
      try
         StrToTime(Sender.Text);
      except
         Mensagem('Digite uma Hora Valida',48);
         Sender.SetFocus;
         Abort;
      end;
   end;
end;

procedure CarregaUsuarios(Codigo : String);
var
   tab_usuario_acesso : TFDQuery;
   var_cnt : Integer;
begin
   tab_usuario_acesso := TFDQuery.Create(Application);
   tab_usuario_acesso.Connection := frm_principal.sql_conecta;

   tab_usuario_acesso.Open('SELECT * FROM usuario_telas WHERE Codigo_Usuario = '+Codigo);
   for var_cnt := 0 to frm_principal.ComponentCount -1 do begin
       if (frm_principal.Components[var_cnt] is TMenuItem) then begin
         if (frm_principal.Components[var_cnt] as TMenuItem).Caption <> '-' then begin
            if tab_usuario_acesso.Locate('Tela',(frm_principal.Components[var_cnt] as TMenuItem).Name,[]) then
               (frm_principal.Components[var_cnt] as TMenuItem).Enabled := True
            else
               (frm_principal.Components[var_cnt] as TMenuItem).Enabled := False;
         end;
      end;
   end;
end;

function SelecionaConta: String;
begin
   f_localizar.pub_busca_dados:='';
   if not Assigned (frm_localizar) then
      Application.CreateForm(Tfrm_localizar, frm_localizar);
   frm_localizar.pub_campos:='Codigo, Descricao';
   frm_localizar.pub_captions:='Código;Descricao';
   frm_localizar.pub_tabela:='conta';
   frm_localizar.pub_filtro:='Codigo IN (SELECT codigo FROM saldo_conta WHERE Fechado <> -1)';
   frm_localizar.ShowModal;
   if (Trim(f_localizar.pub_busca_dados) <> '') then Result := f_localizar.pub_busca_dados
   else Result := '';
end;

function SelecionaHistorico(Tipo : String): String;
begin
   f_localizar.pub_busca_dados:='';
   if not Assigned (frm_localizar) then
      Application.CreateForm(Tfrm_localizar, frm_localizar);
   frm_localizar.pub_campos:='Codigo, Descricao, Tipo';
   frm_localizar.pub_captions:='Código;Descricao;Tipo';
   frm_localizar.pub_tabela:='historico';
   frm_localizar.pub_filtro:='Tipo = '+QuotedStr(Tipo);
   frm_localizar.ShowModal;
   if (Trim(f_localizar.pub_busca_dados) <> '') then Result := f_localizar.pub_busca_dados
   else Result := '';
end;

function InputBoxPagamento(ACaption, APrompt1: string): string;
var
   Form: TForm;
   Prompt1: TLabel;
   Prompt2: TLabel;
   EdtValor : TComboBox;
   DialogUnits: TPoint;
   ButtonTop, ButtonWidth, ButtonHeight: Integer;
   Value: string;
   I: Integer;
   Buffer: array[0..51] of Char;
begin
   Result := '';
   Form := TForm.Create(Application);
   with Form do try
      Canvas.Font := Font;
      for I := 0 to 25 do Buffer[I] := Chr(I + Ord('A'));
      for I := 0 to 25 do Buffer[I + 26] := Chr(I + Ord('a'));
      GetTextExtentPoint(Canvas.Handle, Buffer, 52, TSize(DialogUnits));
      DialogUnits.X := DialogUnits.X div 52;
      BorderStyle := bsNone;
      Caption := ACaption;

      ClientWidth := MulDiv(180, DialogUnits.X, 4);
      ClientHeight := MulDiv(55, DialogUnits.Y, 8);

      Position := poScreenCenter;
      Prompt1 := TLabel.Create(Form);
      with Prompt1 do begin
         Parent := Form;
         AutoSize := True;
         Left := MulDiv(8, DialogUnits.X, 4);
         Top := MulDiv(9, DialogUnits.Y, 8);
         Caption := APrompt1;
      end;
      EdtValor := TComboBox.Create(Form);
      with EdtValor do begin
         Parent := Form;
         Left := Prompt1.Left;
         Top := MulDiv(19, DialogUnits.Y, 8);
         Width := MulDiv(164, DialogUnits.X, 4);
         MaxLength := 255;
         Items.Clear;
         Items.Add('Cartão');
         Items.Add('Dinheiro');
         Items.Add('Cheque');
         ItemIndex := 0;
      end;

      ButtonTop := MulDiv(40, DialogUnits.Y, 8);
      ButtonWidth := MulDiv(164, DialogUnits.X, 4);
      ButtonHeight := MulDiv(14, DialogUnits.Y, 8);
      with TButton.Create(Form) do begin
         Parent := Form;
         Caption := 'OK';
         ModalResult := mrOk;
         Default := True;
         SetBounds(MulDiv(8, DialogUnits.X, 4),ButtonTop, ButtonWidth,ButtonHeight);
      end;

      if ShowModal = mrOk then begin
         Value := EdtValor.Text;
         Result := Value;
      end;
   finally
      Form.Free;
      Form:=nil;
   end;
end;

function InputBoxValor(ACaption, APrompt1: string): string;
var
   Form: TForm;
   Prompt1: TLabel;
   Prompt2: TLabel;
   EdtValor : TJvCalcEdit;
   DialogUnits: TPoint;
   ButtonTop, ButtonWidth, ButtonHeight: Integer;
   Value: string;
   I: Integer;
   Buffer: array[0..51] of Char;
begin
   Result := '';
   Form := TForm.Create(Application);
   with Form do try
      Canvas.Font := Font;
      for I := 0 to 25 do Buffer[I] := Chr(I + Ord('A'));
      for I := 0 to 25 do Buffer[I + 26] := Chr(I + Ord('a'));
      GetTextExtentPoint(Canvas.Handle, Buffer, 52, TSize(DialogUnits));
      DialogUnits.X := DialogUnits.X div 52;
      BorderStyle := bsNone;
      Caption := ACaption;

      ClientWidth := MulDiv(180, DialogUnits.X, 4);
      ClientHeight := MulDiv(55, DialogUnits.Y, 8);

      Position := poScreenCenter;
      Prompt1 := TLabel.Create(Form);
      with Prompt1 do begin
         Parent := Form;
         AutoSize := True;
         Left := MulDiv(8, DialogUnits.X, 4);
         Top := MulDiv(9, DialogUnits.Y, 8);
         Caption := APrompt1;
      end;
      EdtValor := TJvCalcEdit.Create(Form);
      EdtValor.ButtonWidth := 0;
      with EdtValor do begin
         ReadOnly := False;
         Parent := Form;
         Left := Prompt1.Left;
         Top := MulDiv(19, DialogUnits.Y, 8);
         Width := MulDiv(164, DialogUnits.X, 4);
         MaxLength := 255;
         Value := 0;
      end;

      ButtonTop := MulDiv(40, DialogUnits.Y, 8);
      ButtonWidth := MulDiv(164, DialogUnits.X, 4);
      ButtonHeight := MulDiv(14, DialogUnits.Y, 8);
      with TButton.Create(Form) do begin
         Parent := Form;
         Caption := 'OK';
         ModalResult := mrOk;
         Default := True;
         SetBounds(MulDiv(8, DialogUnits.X, 4),ButtonTop, ButtonWidth,ButtonHeight);
      end;

      if ShowModal = mrOk then begin
         Value := FloatToStr(EdtValor.Value);
         Result := Value;
      end;
   finally
      Form.Free;
      Form:=nil;
   end;
end;

function InputBoxData(ACaption, APrompt1: string): TDateTime;
var
   Form: TForm;
   Prompt1: TLabel;
   Prompt2: TLabel;
   EdtValor : TJvDateEdit;
   DialogUnits: TPoint;
   ButtonTop, ButtonWidth, ButtonHeight: Integer;
   Value: string;
   I: Integer;
   Buffer: array[0..51] of Char;
begin
   Result := StrToDate('00/00/0000');
   Form := TForm.Create(Application);
   with Form do try
      Canvas.Font := Font;
      for I := 0 to 25 do Buffer[I] := Chr(I + Ord('A'));
      for I := 0 to 25 do Buffer[I + 26] := Chr(I + Ord('a'));
      GetTextExtentPoint(Canvas.Handle, Buffer, 52, TSize(DialogUnits));
      DialogUnits.X := DialogUnits.X div 52;
      BorderStyle := bsNone;
      Caption := ACaption;

      ClientWidth := MulDiv(180, DialogUnits.X, 4);
      ClientHeight := MulDiv(55, DialogUnits.Y, 8);

      Position := poScreenCenter;
      Prompt1 := TLabel.Create(Form);
      with Prompt1 do begin
         Parent := Form;
         AutoSize := True;
         Left := MulDiv(8, DialogUnits.X, 4);
         Top := MulDiv(9, DialogUnits.Y, 8);
         Caption := APrompt1;
      end;
      EdtValor := TJvDateEdit.Create(Form);
      EdtValor.ButtonWidth := 0;
      with EdtValor do begin
         ReadOnly := False;
         Parent := Form;
         Left := Prompt1.Left;
         Top := MulDiv(19, DialogUnits.Y, 8);
         Width := MulDiv(164, DialogUnits.X, 4);
         MaxLength := 255;
      end;

      ButtonTop := MulDiv(40, DialogUnits.Y, 8);
      ButtonWidth := MulDiv(164, DialogUnits.X, 4);
      ButtonHeight := MulDiv(14, DialogUnits.Y, 8);
      with TButton.Create(Form) do begin
         Parent := Form;
         Caption := 'OK';
         ModalResult := mrOk;
         Default := True;
         SetBounds(MulDiv(8, DialogUnits.X, 4),ButtonTop, ButtonWidth,ButtonHeight);
      end;

      if ShowModal = mrOk then begin
         if Trim(EdtValor.Text) <> '/  /' then Result := EdtValor.Date
         else Result := StrToDate('00/00/0000');
      end;
   finally
      Form.Free;
      Form:=nil;
   end;
end;

function DecimalMysql(Campo: String): String;
begin
   Campo:=StringReplace(Campo,'.','',[rfReplaceAll]);
   Campo:=StringReplace(Campo,',','.',[rfReplaceAll]);
   Result:=Campo;
end;

function RetornaCampo(Campo, Tabela: String): String;
var
   Tabelas : TFDQuery;
begin
   Tabelas := TFDQuery.Create(Application);
   Tabelas.Connection := frm_principal.sql_conecta;

   Tabelas.Open('SELECT ' + Campo + ' FROM ' + Tabela);

   Result := Tabelas.Fields[0].AsString;
end;



function Gera_Codigo(Tabela: String): String;
var
   Tabelas : TFDQuery;
begin
   Tabelas := TFDQuery.Create(Application);
   Tabelas.Connection := frm_principal.sql_conecta;

   Tabelas.Open('SELECT COALESCE(MAX(Codigo),0) + 1 FROM '+Tabela);

   Result := Tabelas.Fields[0].AsString;
end;

function Registro_Leitura(sSistema, sNomeValue: String): String;
var Reg: TRegistry;
begin
   Reg:=TRegistry.Create(KEY_READ);
   try
      Reg.RootKey:=HKey_Local_Machine;
      if Reg.KeyExists('Software\Sistemas\'+sSistema+'_') then begin
         Reg.OpenKey('Software\Sistemas\'+sSistema+'_', false);
         if Reg.ValueExists(sNomeValue) then
         try
            result:=Reg.ReadString(sNomeValue)
         except
            result:='invalido'
          end
         else
            result:='invalido'
          end
         else result:='invalido'
   finally
      Reg.Free;
   end;
end;


function CriarForm(FormClass: TFormClass; Show_Modal : Boolean = False) : TForm;
var I : Integer;
begin
   Result := nil;
   for I := 0 to Screen.FormCount - 1 do begin
      if Screen.Forms[I] is FormClass then begin
         Result := Screen.Forms[i];
      end;
   end;
   if Result = nil then begin
      Application.CreateForm(FormClass, result);
      if Show_Modal then result.ShowModal
      else Result.Show;
   end
   else begin
      if (result.WindowState = wsMinimized) then result.WindowState := wsNormal;
      Result.Show;
   end;
end;

function Mensagem(const Text: PWideChar;Flags: Longint): Integer;
var
   ActiveWindow, TaskActiveWindow: HWnd;
   MBMonitor, AppMonitor: HMonitor;
   MonInfo: TMonitorInfo;
   Rect: TRect;
   FocusState: TFocusState;
   WindowList: TTaskWindowList;
begin
   ActiveWindow := 0;
   if ActiveWindow = 0 then
    TaskActiveWindow := 0
   else
    TaskActiveWindow := ActiveWindow;
   MBMonitor := MonitorFromWindow(ActiveWindow, MONITOR_DEFAULTTONEAREST);
   AppMonitor := MonitorFromWindow(HANDLE_FLAG_INHERIT, MONITOR_DEFAULTTONEAREST);
   if MBMonitor <> AppMonitor then
   begin
   {$IF DEFINED(CLR)}
    MonInfo.cbSize := Marshal.SizeOf(TypeOf(TMonitorInfo));
   {$ELSE}
    MonInfo.cbSize := Sizeof(TMonitorInfo);
   {$ENDIF}
    GetMonitorInfo(MBMonitor, {$IFNDEF CLR}@{$ENDIF}MonInfo);
    GetWindowRect(HANDLE_FLAG_INHERIT, Rect);
   end;
   WindowList := DisableTaskWindows(ActiveWindow);
   FocusState := SaveFocusState;
   try
    Result := Winapi.Windows.MessageBox(TaskActiveWindow, Text, PWideChar(frm_principal.Caption), Flags);
   finally
    if MBMonitor <> AppMonitor then
    EnableTaskWindows(WindowList);
    SetActiveWindow(ActiveWindow);
    RestoreFocusState(FocusState);
   end;
end;

function Criptografa(Texto : AnsiString; Chave : Integer): AnsiString;
var
   cont1 : Integer;
   tam_texto : Integer;
begin
   tam_texto := Length(Texto);
   for cont1 := 1 to tam_texto do Texto[cont1] := AnsiChar(Integer(Texto[cont1])+Chave);
   Criptografa := Texto;
end;

function Descriptografa(Texto : AnsiString; Chave : Integer): AnsiString;
var
   cont1 : Integer;
   tam_texto : Integer;
begin
   tam_texto := Length(Texto);
   for cont1 := 1 to tam_texto do Texto[cont1] := AnsiChar(Integer(Texto[cont1])-Chave);
   Descriptografa := Texto;
end;

end.

