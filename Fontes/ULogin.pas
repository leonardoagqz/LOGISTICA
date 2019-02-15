unit ULogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.DBCtrls, Data.DB, Vcl.AppEvnts;

type
  TFLogin = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    LkComboBoxUsuario: TDBLookupComboBox;
    LblUsuario: TLabel;
    EdtSenha: TEdit;
    LblSenha: TLabel;
    dsUsuarios: TDataSource;
    ApplicationEvents1: TApplicationEvents;
    BtnConfirmar: TButton;
    BtnCancelar: TButton;
    procedure BtnCancelarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure BtnConfirmarClick(Sender: TObject);
    procedure LkComboBoxUsuarioKeyPress(Sender: TObject; var Key: Char);
    procedure ApplicationEvents1Message(var Msg: tagMSG; var Handled: Boolean);
    procedure EdtSenhaChange(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FLogin: TFLogin;

implementation

{$R *.dfm}

uses UDM;

procedure TFLogin.ApplicationEvents1Message(var Msg: tagMSG;
  var Handled: Boolean);
begin
    if Msg.wParam = VK_TAB then             //se a tecla TAB for pressionada ent�o
    if LkComboBoxUsuario.Text = '' then
    begin
        ShowMessage('Usu�rio n�o Informado!');
        LkComboBoxUsuario.SetFocus;
    end


end;

procedure TFLogin.BtnCancelarClick(Sender: TObject);
begin
   Application.Terminate;
end;

procedure TFLogin.BtnConfirmarClick(Sender: TObject);
//procedimento ao clicar no bot�o Confirmar

begin
    if LkComboBoxUsuario.Text = '' then //se o usu�rio estiver vazio ent�o
     begin
         ShowMessage('Usu�rio n�o Informado!'); //exibir menssagem
         LkComboBoxUsuario.SetFocus;            //logo ap�s exibir a msg voltat o foco do mouse para lkcombobox
                                                //e sair, para n�o executar o pr�ximo bloco de instru��o

         Exit
     end;

     if EdtSenha.Text = '' then //se a senha estiver vazia
     begin
         ShowMessage('Senha n�o Informada!'); //exibir msg
         EdtSenha.SetFocus;                   //setar foco do mouse no campo senha
                                             //sair para n�o executar o pr�ximo bloco de instru��o

         Exit
     end;


    //liberando acesso ao sistema
    if EdtSenha.Text = DM.cdsUsuariosSENHA.AsString then //se a senha informada for igual a senha que consta no banco
    begin                                                //inicie
        dm.vLogin:=True;                                 //ir no data module, na vari�vel login e dizer que ela � ok=True
        Close;                                           //fechar
    end
    else                                                 //se n�o
        ShowMessage('Senha Inv�lida');                   //exibir msg

end;


procedure TFLogin.EdtSenhaChange(Sender: TObject);
begin
   if EdtSenha.Text = DM.cdsUsuariosSENHA.AsString then
    begin
        keybd_event(WM_NEXTDLGCTL, 0, 0, 0);
    end
end;

procedure TFLogin.FormCreate(Sender: TObject);
//procedimento ao criar o form FLogin
begin
    DM.cdsUsuarios.Close;  //fechar tabela
    DM.cdsUsuarios.Open;   //abrir tabela
end;

procedure TFLogin.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
  //procedimento ao pressionar algum bot�o

begin
    if key=VK_ESCAPE then  //se a tecla ESC for pressionada ent�o
    BtnCancelar.Click;     //ser� executado o procedimento BtnCancelar.Clik
                           //BtnCancelar termina a aplica��o


    if key = VK_TAB then  //se a tecla TAB for pressionada ent�o
      ShowMessage('Usu�rio n�o Informado!') ;   //N�O TA FUNCIONANDO


    if key = VK_RETURN then
    keybd_event(VK_TAB, 0, 0, 0);    //ao clicar enter, passar foco para pr�ximo campo
                                     //Perform(WM_NEXTDLGCTL,0,0); << poderia ser assim


end;





procedure TFLogin.LkComboBoxUsuarioKeyPress(Sender: TObject; var Key: Char);
 //procedimento ao ser pressionado algum bot�o
begin

     //validar ao clicar ENTER, se usu�rio estiver vazio exibir mensagem...
    if key = #13  then
    if LkComboBoxUsuario.Text = '' then
    ShowMessage('Usu�rio n�o Informado!');
    LkComboBoxUsuario.SetFocus;

   {  //validar ao clicar TAB, se usu�rio estiver vazio exibir mensagem...
    if key = (#9) then
    if LkComboBoxUsuario.Text = ''  then
    ShowMessage('Usu�rio n�o Informado!');//N�O TA FUNCIONANDO!!}
end;

end.
