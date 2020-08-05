unit U_funcoes;


interface

uses vcl.dialogs, system.sysutils,System.NetEncoding;
//declara funcoes e variaveis

// criad funcao TestarPermissao, com a variavel NOME_FORM do tipo STRING
//, esperado retorno do tipo boolean
function TestarPermissao (NOME_FORM:STRING):boolean;
function EAN13 ():string;
function MsgConfirm(aMessage: string): boolean;



implementation

uses
  u_DM, Winapi.Windows,Vcl.Forms;
//implementando as funcoes

function MsgConfirm(aMessage: string): boolean;
begin
  Result := Application.MessageBox(PWideChar(aMessage), 'SistemVendas',
  MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = ID_YES;
end;


function TestarPermissao (NOME_FORM:STRING):boolean;
begin
  Result := False;
  dm.SQL_acesso.Close;
  dm.SQL_acesso.SQL.Clear;
  dm.SQL_acesso.SQL.Add('select * from view_testar_permissao');
  dm.SQL_acesso.SQL.Add('where acesso_user = :user');
  dm.SQL_acesso.SQL.Add('and forms_nome = :forms');
  dm.SQL_acesso.ParamByName('user').AsInteger := dm.SQL_usuariouser_id.AsInteger;
  dm.SQL_acesso.ParamByName('forms').Value := NOME_FORM;
  dm.SQL_acesso.Open;
  begin
    if dm.SQL_acesso.RecordCount > 0 then
    begin
      Result := True;
    end
    else
    begin
      Result := False;
    end;
     if dm.SQL_usuariouser_id.Value = 1 then
    begin
      Result := true;
    end;
  end;

  if Result = False then
  ShowMessage('Acesso Negado!');
end;

    // funcao  para gerar codigo de barras ------------------------


Function EAN13() : String;
var nX, nDigito, nPeso : Integer;
var nSoma, nMaior  : Double;
var base:string;

Begin
  // aqui eu seto o valor base para gerar o digito verificador
 base  := FormatDateTime('yymmdd', Date) + FormatDateTime('hhmmss', Time);
 nPeso := 3;
 nSoma := 0;

     For nX := 12 DownTo 1 do
     Begin

     nSoma := nSoma + StrToInt( base[ nX ] ) * nPeso;

         If nPeso = 3 Then
         nPeso := 1
         Else
         nPeso := 3;

     End;

 nMaior   := ( ( Trunc( nSoma / 10 ) + 1 ) * 10 );
 nDigito  := Trunc( nMaior ) - Trunc( nSoma );

     If nDigito = 10 Then
     nDigito   := 0;
     //devolto o codigo base + o digito verificador prontos
     Result    := base + IntToStr( nDigito );

End;
// ------------fim do gera codigo de barras ----------------------




end.
