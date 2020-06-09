unit UUsuarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Data.DB, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls;

type
  TFUsuarios = class(TForm)
    EdtLocalizarUsuarios: TEdit;
    LblLocalizarUsuarios: TLabel;
    G1Grid: TDBGrid;
    PainelUsuarios1: TPanel;
    PainelUsuarios2: TPanel;
    DsUsuarios: TDataSource;
    BtnIncluir: TBitBtn;
    BtnAlterar: TBitBtn;
    BtnExcluir: TBitBtn;
    BtnSair: TButton;
    procedure EdtLocalizarUsuariosChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BtnIncluirClick(Sender: TObject);
    procedure G1GridDblClick(Sender: TObject);
    procedure BtnAlterarClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure BtnSairClick(Sender: TObject);
    procedure DsUsuariosDataChange(Sender: TObject; Field: TField);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FUsuarios: TFUsuarios;

implementation

{$R *.dfm}

uses UDM, UCadUsuario;

procedure TFUsuarios.BtnAlterarClick(Sender: TObject);//procedimento ao clicar no bot�o alterar
begin                                                 //inicie
    if not dm.cdsUsuarios.IsEmpty then                //se n�o estiver vazio ent�o
    begin                                             //inicie
    Self.Visible:=False;                              //esconde formulario UUsuario
    dm.cdsUsuarios.Edit;                              //editar cadastro de usu�rios
    dm.CriarFormulario(TFCadUsuario,FCadUsuario);     //criar form
    Self.Visible:=True;                               //mostrar formulario UUsuario
    end;                                              //fimse
end;                                                  //fimbegin

procedure TFUsuarios.BtnExcluirClick(Sender: TObject);//procedimento ao clicar no bot�o excluir
begin                                                 //inicie
  if not dm.cdsUsuarios.IsEmpty then                  //se n�o estiver vazio ent�o
    begin                                             //inicie
        if MessageDlg('Confirmar a Exclus�o',mtInformation,[mbYes,mbNo],0)=mrYes  then
     //se ao informar a mensagem 'Confirmar a Exclus�o' for igual a Yes ent�o
        begin                                         //inicie
            dm.cdsUsuarios.Delete;                    //delete o registro na tabela usuario
            dm.cdsUsuarios.ApplyUpdates(0);           //aplicar modifica��es na tabela
            ShowMessage('Informa��es Exclu�das com Sucesso!'); //exibir mensagem
        end;                                          //fimse

    end;                                              //fimbegin
end;                                                  //fimbegin

procedure TFUsuarios.BtnIncluirClick(Sender: TObject);//procedimento ao clicar no bot�o incluir
begin                                                 //inicie
    Self.Visible :=False;                             //esconde formulario UUsuario
    dm.cdsUsuarios.Append;                            //acrescentar em uma nova linha
    dm.cdsUsuariosMASTER.Text:='False';               //campo MASTER.text iniciar com S
    dm.CriarFormulario(TFCadUsuario,FCadUsuario);     //chamar procedimento para criar/abrir formulario UCadUsuario
    Self.Visible:=True;                               //mostrar formulario UUsuario
end;

procedure TFUsuarios.BtnSairClick(Sender: TObject);
begin
    Close;
end;

procedure TFUsuarios.DsUsuariosDataChange(Sender: TObject; Field: TField);
begin

end;

//fim

procedure TFUsuarios.EdtLocalizarUsuariosChange(Sender: TObject);//procedimento quando houver algumamudan�a no campo
begin                                                            //inicie
                                                                 //criando busca de usu�rios
    if EdtLocalizarUsuarios.Text<> '' then                       //se a busca no Localizar for diferente de vazio ent�o

    //acesse a tabela, localize o campo LOGIN no BD,e procure pelo texto que esta escrito no edtlocalizar,
    //[loPartialkey= localiza pela primeira letra ] [loCaseInsensitive=case sensitive]
    dm.cdsUsuarios.Locate('LOGIN',EdtLocalizarUsuarios.Text,[loPartialKey,loCaseInsensitive]);

end;                                                             //fimbegin

procedure TFUsuarios.FormKeyDown(Sender: TObject; var Key: Word; //procedimento bot�o ESC
  Shift: TShiftState);
begin                                                            //inicie
    if key=VK_ESCAPE then                                        //se a tecla ESC for pressionada ent�o
    Close;                                                       //fechar
end;                                                             //fim

procedure TFUsuarios.G1GridDblClick(Sender: TObject); //procedimento duplo cloque na dbgrid
begin                                                 //inicie
    BtnAlterar.Click;                                 //procedimento btnalterar.click
end;                                                  //fim

end.                                                  //fimform
