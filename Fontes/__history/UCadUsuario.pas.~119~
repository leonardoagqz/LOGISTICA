unit UCadUsuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.EngExt,
  Vcl.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope, Vcl.Mask,
  Vcl.DBCtrls;

type
  TFCadUsuarios = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    BtnCancelar: TButton;
    BtnSalvar: TButton;
    Label1: TLabel;
    Label2: TLabel;
    CbMaster: TCheckBox;
    DsCadUsuario: TDataSource;
    BSDBCadUsuario: TBindSourceDB;
    BLCadUsuario: TBindingsList;
    LinkControlToField3: TLinkControlToField;
    EdtLogin: TDBEdit;
    EdtSenha: TDBEdit;
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnCancelarKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure BtnSalvarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnSalvarKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCadUsuarios: TFCadUsuarios;

implementation

{$R *.dfm}

uses UDM, UUsuarios;

procedure TFCadUsuarios.BtnCancelarClick(Sender: TObject); //procedimento ao clicar em cancelar
begin                                                     //inicie
    dm.cdsUsuarios.Cancel;                                //cancelar o estado da tabela
    Close;                                                //fechar
end;                                                      //fimbegin

procedure TFCadUsuarios.BtnCancelarKeyDown(Sender: TObject; var Key: Word; //procedimento botão ESC
  Shift: TShiftState);
begin                                                                     //inicie
    if key=VK_ESCAPE then                                                 //se a tecla ESC for pressionada então
    BtnCancelar.Click;                                                    //btncancelarclick será acionado
end;                                                                      //fimbegin

procedure TFCadUsuarios.BtnSalvarClick(Sender: TObject);
begin
  {if EdtLogin.Text = '' then
  begin
    ShowMessage('Usuário não Informado!');
    EdtLogin.SetFocus;
    Exit
  end;

  if EdtSenha.Text = '' then
  begin
    ShowMessage('Senha não Informada!');
    EdtSenha.SetFocus;
    Exit
  end;

  if dm.cdsUsuarios.State=dsInsert then
  begin
    dm.QryIdUsuario.Close;
    dm.QryIdUsuario.Open;
    dm.cdsUsuariosLOGIN.AsString:=EdtLogin.Text;
    dm.cdsUsuariosSENHA.AsInteger:=StrToInt(EdtSenha.Text);
  end;
  dm.cdsUsuarios.Post;
  dm.cdsUsuarios.ApplyUpdates(0);
  ShowMessage('Informações Armazenadas com sucesso!');
  dm.cdsUsuarios.Refresh;
  Close;}

  //--

   if EdtLogin.Text = '' then
  begin
    ShowMessage('Usuário não Informado!');
    EdtLogin.SetFocus;
    Exit
  end;

  if EdtSenha.Text = '' then
  begin
    ShowMessage('Senha não Informada!');
    EdtSenha.SetFocus;
    Exit
  end;

  if DM.sql_usuario.State=dsInsert then
  begin

    DM.sql_Gen_usuario.Close;
    DM.sql_Gen_usuario.Open;
    DM.sql_usuarioID_USUARIO.AsInteger :=DM.sql_Gen_usuarioID.Value;
    dm.sql_usuarioLOGIN.AsString       :=EdtLogin.Text;
    dm.sql_usuarioSENHA.AsString       :=EdtSenha.Text;
    if CbMaster.Checked = True then
    begin
      dm.sql_usuarioMASTER.AsString    :='S';
    end
    else
    dm.sql_usuarioMASTER.AsString      :='N';
    DM.sql_usuario.Post;

    ShowMessage('Usuário cadastrado com sucesso!');
    DM.sql_usuario.Refresh;
    Close;
  end;

  if DM.sql_usuario.State=dsEdit then
  begin

    dm.sql_usuarioLOGIN.AsString       :=EdtLogin.Text;
    dm.sql_usuarioSENHA.AsString       :=EdtSenha.Text;
    if CbMaster.Checked = True then
    begin
      dm.sql_usuarioMASTER.AsString    :='S';
    end
    else
    dm.sql_usuarioMASTER.AsString      :='N';
    DM.sql_usuario.Post;

    ShowMessage('Usuário alterado com sucesso!');
    DM.sql_usuario.Refresh;
    Close;
  end;





  {dm.sql_usuario.Close;
  dm.sql_usuario.open;
  dm.tb_usuarioLOGIN.AsString := EdtLogin.Text;
  dm.tb_usuarioSENHA.AsString := EdtSenha.Text;
  dm.tb_usuario.ApplyUpdates(0);
  ShowMessage('Informações Armazenadas com sucesso!');
  dm.tb_usuario.Refresh; }



end;

procedure TFCadUsuarios.BtnSalvarKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_ESCAPE then
  BtnCancelar.Click;
end;

procedure TFCadUsuarios.FormClose(Sender: TObject; var Action: TCloseAction);//procedimento ao fechar form
begin                                                                       //inicie
    if dm.cdsUsuarios.State in [dsInsert,dsEdit] then                       //se minha tabela usuarios estiver com status insert ou edit então
    dm.cdsUsuarios.Cancel;                                                  //cancela qualquer operação na tabela
end;                                                                        //fim

procedure TFCadUsuarios.FormCreate(Sender: TObject);
begin
    //CbMaster.Checked:=false;

 end;

end.
