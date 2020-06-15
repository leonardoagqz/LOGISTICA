unit UProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TFProdutos = class(TForm)
    LblLocalizarUsuarios: TLabel;
    EdtLocalizarProdutos: TEdit;
    G1Grid: TDBGrid;
    PainelUsuarios1: TPanel;
    PainelUsuarios2: TPanel;
    BtnIncluir: TBitBtn;
    BtnAlterar: TBitBtn;
    BtnExcluir: TBitBtn;
    BtnSair: TButton;
    procedure BtnSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtnIncluirClick(Sender: TObject);
    procedure EdtLocalizarProdutosChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BtnAlterarClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FProdutos: TFProdutos;

implementation

{$R *.dfm}

uses UDM, UCadProduto;{units que podem ser acessadas e utilizadas}

procedure TFProdutos.FormCreate(Sender: TObject);//ao abrir tela de produtos
begin                                            //inicie
  {dm.cdsProdutos.Close;                        //fechar tabela
  dm.cdsProdutos.Open; }

  dm.sql_produto.Close;
  dm.sql_produto.Open;
   
end;

procedure TFProdutos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if key=VK_ESCAPE then //se a tecla ESC for pressionada ent�o
    Close;
end;

//fim

procedure TFProdutos.BtnAlterarClick(Sender: TObject);
begin
    {if not dm.cdsProdutos.IsEmpty then                //se n�o estiver vazio ent�o
    begin                                             //inicie
    Self.Visible:=False;                              //esconde formulario UUsuario
    dm.cdsProdutos.Edit;
                                   //editar cadastro de usu�rios
    dm.CriarFormulario(TFCadProduto,FCadProduto);     //criar form
    Self.Visible:=True;                               //mostrar formulario UUsuario
    end; }

  if not DM.sql_produto.IsEmpty then
  begin
  Self.Visible :=False;
  DM.sql_produto.Edit;
  dm.CriarFormulario(TFCadProduto,FCadProduto);
  Self.Visible:=True;
  end;


end;

procedure TFProdutos.BtnExcluirClick(Sender: TObject);
begin
    {if not dm.cdsProdutos.IsEmpty then                  //se n�o estiver vazio ent�o
    begin                                             //inicie
        if MessageDlg('Confirmar a Exclus�o',mtInformation,[mbYes,mbNo],0)=mrYes  then
     //se ao informar a mensagem 'Confirmar a Exclus�o' for igual a Yes ent�o
        begin                                         //inicie
            dm.cdsProdutos.Delete;                    //delete o registro na tabela usuario
            dm.cdsProdutos.ApplyUpdates(0);           //aplicar modifica��es na tabela
            ShowMessage('Informa��es Exclu�das com Sucesso!'); //exibir mensagem
        end;                                          //fimse

    end; }

    if not dm.sql_produto.IsEmpty then
    begin
        if dm.MessageDlgDefault('Confirmar a Exclus�o',mtInformation,[mbYes,mbNo],0)=mrYes  then
      //se ao informar a mensagem 'Confirmar a Exclus�o' for igual a Yes ent�o
        begin
            dm.sql_produto.Delete;
            ShowMessage('Informa��es Exclu�das com Sucesso!');
        end;

    end;


end;

procedure TFProdutos.BtnIncluirClick(Sender: TObject);//incluir produto
begin                                                 //inicie
    {Self.Visible :=False;                             //esconde formulario UProduto
    dm.cdsProdutos.Append;                            //acrescentar em uma nova linha
    dm.cdsProdutosQUANTIDADE.AsFloat:=0;              //campo QUANTIDADE iniciar com 0
    dm.cdsProdutosVALOR.AsFloat:=0;                   //campo VALOR iniciar com 0
    dm.cdsProdutosTIPO.AsString:='T';                 //campo TIPO iniciar com T
    dm.CriarFormulario(TFCadProduto,FCadProduto);     //chamar procedimento para criar/abrir formulario UCadUProduto
    Self.Visible:=True;  }                             //mostrar formulario UProduto

    //Firebird
  Self.Visible :=False;
  DM.sql_produto.Active := True;
  DM.sql_produto.Insert;
  dm.CriarFormulario(TFCadProduto,FCadProduto);
  Self.Visible:=True;





end;

procedure TFProdutos.BtnSairClick(Sender: TObject);//clique bot�o sair
begin                                              //inicie
    Close;                                         //fechar tela
end;                                               //fim

procedure TFProdutos.EdtLocalizarProdutosChange(Sender: TObject);//pesquisa de produtos
begin                                                            //inicie
     if EdtLocalizarProdutos.Text<> '' then                      //se a busca no Localizar for diferente de vazio ent�o

    //acesse a tabela, localize o campo NOME no BD,e procure pelo texto que esta escrito no edtlocalizar,
    //[loPartialkey= localiza pela primeira letra ] [loCaseInsensitive=case sensitive]
    {dm.cdsProdutos.Locate('NOME',EdtLocalizarProdutos.Text,[loPartialKey,loCaseInsensitive]); }

     dm.sql_produto.Locate('NOME',EdtLocalizarProdutos.Text,[loPartialKey,loCaseInsensitive]);

end;



end.
