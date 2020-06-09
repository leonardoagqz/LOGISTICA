unit UCadUsuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.EngExt,
  Vcl.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope;

type
  TFCadUsuario = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    BtnCancelar: TButton;
    BtnSalvar: TButton;
    EdtLogin: TEdit;
    EdtSenha: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    CbMaster: TCheckBox;
    DsCadUsuario: TDataSource;
    BSDBCadUsuario: TBindSourceDB;
    BLCadUsuario: TBindingsList;
    LinkControlToField1: TLinkControlToField;
    LinkControlToField2: TLinkControlToField;
    LinkControlToField3: TLinkControlToField;
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnCancelarKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure BtnSalvarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCadUsuario: TFCadUsuario;

implementation

{$R *.dfm}

uses UDM, UUsuarios;

procedure TFCadUsuario.BtnCancelarClick(Sender: TObject); //procedimento ao clicar em cancelar
begin                                                     //inicie
    dm.cdsUsuarios.Cancel;                                //cancelar o estado da tabela
    Close;                                                //fechar
end;                                                      //fimbegin

procedure TFCadUsuario.BtnCancelarKeyDown(Sender: TObject; var Key: Word; //procedimento bot�o ESC
  Shift: TShiftState);
begin                                                                     //inicie
    if key=VK_ESCAPE then                                                 //se a tecla ESC for pressionada ent�o
    BtnCancelar.Click;                                                    //btncancelarclick ser� acionado
end;                                                                      //fimbegin

procedure TFCadUsuario.BtnSalvarClick(Sender: TObject); //procedimento ao clicar no bot�o salvar
begin                                                   //inicie
                                                        //validando usu�rio
     if EdtLogin.Text = '' then                         //se o usu�rio estiver vazio ent�o
     begin                                              //inicie
         ShowMessage('Usu�rio n�o Informado!');         //exibir menssagem
         EdtLogin.SetFocus;                             //logo ap�s exibir a msg voltat o foco do mouse para EdtLogin
                                                               //e sair, para n�o executar o pr�ximo bloco de instru��o

         Exit
     end;

                                              //validando senha
     if EdtSenha.Text = '' then               //se a senha estiver vazia
     begin                                    //inicie
         ShowMessage('Senha n�o Informada!'); //exibir msg
         EdtSenha.SetFocus;                   //setar foco do mouse no campo senha
                                              //sair para n�o executar o pr�ximo bloco de instru��o
         Exit
     end;                                     //fim



                                                               //cadastrando usu�rio
     if dm.cdsUsuarios.State=dsInsert then                     //se o estado for igual a INSERT ent�o
     begin                                                     //inicie
        dm.QryIdUsuario.Close;                                 //fechar query
        dm.QryIdUsuario.Open;                                  //abrir query
        dm.cdsUsuariosLOGIN.AsString:=EdtLogin.Text;           //quero que o campo login no BD seja igual ao login do campo edtlogin
        dm.cdsUsuariosSENHA.AsInteger:=StrToInt(EdtSenha.Text);//quero que a senha no BD seja igual a senha do campo edtsenha
     end;                                                      //fim
        dm.cdsUsuarios.Post;                                   //postar
        dm.cdsUsuarios.ApplyUpdates(0);                        //aplicar modifica��es
        ShowMessage('Informa��es Armazenadas com sucesso!');   //exibir mensagem
        dm.cdsUsuarios.Refresh;                                //atualizar cdsusuarios
        Close;                                                 //fechar

end;

procedure TFCadUsuario.FormClose(Sender: TObject; var Action: TCloseAction);//procedimento ao fechar form
begin                                                                       //inicie
    if dm.cdsUsuarios.State in [dsInsert,dsEdit] then                       //se minha tabela usuarios estiver com status insert ou edit ent�o
    dm.cdsUsuarios.Cancel;                                                  //cancela qualquer opera��o na tabela
end;                                                                        //fim

procedure TFCadUsuario.FormCreate(Sender: TObject);
begin
    //CbMaster.Checked:=false;

 end;

end.