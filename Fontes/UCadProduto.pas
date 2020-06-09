unit UCadProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.Bind.EngExt, Vcl.Bind.DBEngExt,
  System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.Components,
  Data.Bind.DBScope, Data.DB, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TFCadProduto = class(TForm)
    Label1: TLabel;
    LblQtd: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    BtnCancelar: TButton;
    BtnSalvar: TButton;
    DsProdutos: TDataSource;
    EdtNome: TDBEdit;
    EdtQtd: TDBEdit;
    CbTipo: TComboBox;
    LblTipo: TLabel;
    LblValor: TLabel;
    EdtValor: TDBEdit;
    LkFornecedor: TDBLookupComboBox;
    LblFornecedor: TLabel;
    DsPessoas: TDataSource;
    procedure BtnCancelarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BtnSalvarClick(Sender: TObject);
    procedure CbTipoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCadProduto: TFCadProduto;

implementation

{$R *.dfm}

uses UDM;

procedure TFCadProduto.BtnCancelarClick(Sender: TObject);
begin
    dm.cdsProdutos.Cancel;
    Close;
end;

procedure TFCadProduto.BtnSalvarClick(Sender: TObject);
begin
    if EdtNome.Text = '' then                         //se o produto estiver vazio ent�o
     begin                                            //inicie
         ShowMessage('Produto n�o Informado!');       //exibir menssagem
         EdtNome.SetFocus;                            //logo ap�s exibir a msg voltat o foco do mouse para EdtLogin

                                                      //e sair, para n�o executar o pr�ximo bloco de instru��o

         Exit
     end;

                                              //validando senha
     if EdtQtd.Text = '' then               //se a senha estiver vazia
     begin                                    //inicie
         ShowMessage('Quantidade n�o Informada!'); //exibir msg
         EdtQtd.SetFocus;                   //setar foco do mouse no campo senha
                                              //sair para n�o executar o pr�ximo bloco de instru��o
         Exit
     end;                                     //fim

      if DM.cdsProdutosVALOR.AsFloat = 0 then               //se a senha estiver vazia
     begin                                    //inicie
         ShowMessage('Valor n�o Informada!'); //exibir msg
         EdtValor.SetFocus;                   //setar foco do mouse no campo senha
                                              //sair para n�o executar o pr�ximo bloco de instru��o
         Exit
     end;

      if CbTipo.ItemIndex<>1 then
        if LkFornecedor.Text='' then
        begin
            ShowMessage('Informe o Fornecedor');
            LkFornecedor.SetFocus;
            Exit
        end;


      if dm.cdsProdutos.State=dsInsert then                    //se o estado for igual a INSERT ent�o
     begin                                                     //inicie
        dm.QryIdProduto.Close;                                 //fechar query
        dm.QryIdProduto.Open;                                  //abrir query
        dm.cdsProdutosNOME.AsString:=EdtNome.Text;           //quero que o campo login no BD seja igual ao login do campo edtlogin
        dm.cdsProdutosQUANTIDADE.AsInteger:=StrToInt(EdtQtd.Text);//quero que a senha no BD seja igual a senha do campo edtsenha
     end;                                                      //fim
        dm.cdsProdutos.Post;                                   //postar
        dm.cdsProdutos.ApplyUpdates(0);                        //aplicar modifica��es
        ShowMessage('Informa��es Armazenadas com sucesso!');   //exibir mensagem
        dm.cdsProdutos.Refresh;                                //atualizar cdsusuarios
        Close;




end;

procedure TFCadProduto.CbTipoClick(Sender: TObject);
begin
    if (CbTipo.ItemIndex=0) or (CbTipo.ItemIndex=2) then
    begin
        LkFornecedor.Enabled:=True;
        LblFornecedor.Enabled:=True;
        LkFornecedor.Color := clInfoBk;
    end
    else
    begin
        LkFornecedor.Enabled:=False;
        LblFornecedor.Enabled:=False;
        LkFornecedor.KeyValue:=Null;
        LkFornecedor.Color := clSilver;
    end;
end;

procedure TFCadProduto.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if key=VK_ESCAPE then                                                 //se a tecla ESC for pressionada ent�o
    BtnCancelar.Click;
end;

end.