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
    CbTipo: TComboBox;
    LblTipo: TLabel;
    LblValor: TLabel;
    LkFornecedor: TDBLookupComboBox;
    LblFornecedor: TLabel;
    EdtValor: TDBEdit;
    EdtQtd: TDBEdit;
    EdtNome: TDBEdit;
    procedure BtnCancelarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BtnSalvarClick(Sender: TObject);
    procedure CbTipoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCadProduto: TFCadProduto;

implementation

{$R *.dfm}

uses
UDM, UProdutos;

procedure TFCadProduto.BtnCancelarClick(Sender: TObject);
begin
    {dm.cdsProdutos.Cancel;
    Close;}

    DM.sql_produto.Cancel;
    Close;
end;

procedure TFCadProduto.BtnSalvarClick(Sender: TObject);
begin
    {if EdtNome.Text = '' then                         //se o produto estiver vazio então
     begin                                            //inicie
         ShowMessage('Produto não Informado!');       //exibir menssagem
         EdtNome.SetFocus;                            //logo após exibir a msg voltat o foco do mouse para EdtLogin

                                                      //e sair, para não executar o próximo bloco de instrução

         Exit
     end;

                                              //validando senha
     if EdtQtd.Text = '' then               //se a senha estiver vazia
     begin                                    //inicie
         ShowMessage('Quantidade não Informada!'); //exibir msg
         EdtQtd.SetFocus;                   //setar foco do mouse no campo senha
                                              //sair para não executar o próximo bloco de instrução
         Exit
     end;                                     //fim

      if DM.tb_produtoVALOR.AsFloat = 0 then               //se a senha estiver vazia
     begin                                    //inicie
         ShowMessage('Valor não Informada!'); //exibir msg
         EdtValor.SetFocus;                   //setar foco do mouse no campo senha
                                              //sair para não executar o próximo bloco de instrução
         Exit
     end;

      if CbTipo.ItemIndex<>1 then
        if LkFornecedor.Text='' then
        begin
            ShowMessage('Informe o Fornecedor');
            LkFornecedor.SetFocus;
            Exit
        end;


      if dm.cdsProdutos.State=dsInsert then                    //se o estado for igual a INSERT então
     begin                                                     //inicie
        dm.QryIdProduto.Close;                                 //fechar query
        dm.QryIdProduto.Open;                                  //abrir query
        dm.cdsProdutosNOME.AsString:=EdtNome.Text;           //quero que o campo login no BD seja igual ao login do campo edtlogin
        dm.cdsProdutosQUANTIDADE.AsInteger:=StrToInt(EdtQtd.Text);//quero que a senha no BD seja igual a senha do campo edtsenha
     end;                                                      //fim
        dm.cdsProdutos.Post;                                   //postar
        dm.cdsProdutos.ApplyUpdates(0);                        //aplicar modificações
        ShowMessage('Informações Armazenadas com sucesso!');   //exibir mensagem
        dm.cdsProdutos.Refresh;                                //atualizar cdsusuarios
        Close; }




  if EdtNome.Text = '' then
  begin
    ShowMessage('Produto não Informado!');
    EdtNome.SetFocus;
    Exit
  end;

  if EdtQtd.Text = '' then
  begin
    ShowMessage('Quantidade não Informada!');
    EdtQtd.SetFocus;
    Exit
  end;

  if DM.sql_produtoVALOR_PRODUTO.AsFloat = 0 then
  begin
    ShowMessage('Valor não Informada!');
    EdtValor.SetFocus;
    Exit
  end;

  if CbTipo.ItemIndex<>1 then
  if LkFornecedor.Text='' then
  begin
    ShowMessage('Informe o Fornecedor');
    LkFornecedor.SetFocus;
    Exit
  end;

  if dm.sql_produto.State=dsInsert then
  begin
    dm.sql_Gen_usuario.Close;
    DM.sql_Gen_usuario.Open;
    DM.sql_produtoID_PRODUTO.AsInteger :=DM.sql_Gen_usuarioID.Value;
    dm.sql_produtoNOME_PRODUTO.AsString:= EdtNome.Text;
    dm.sql_produtoQUANTIDADE_PRODUTO.AsInteger:=StrToInt(EdtQtd.Text);
    DM.sql_produtoVALOR_PRODUTO.AsFloat := StrToFloat(EdtValor.Text);
    DM.sql_produtoID_PESSOA_PROD.AsInteger := DM.sql_pessoaID_PESSOA.AsInteger;
    dm.sql_produto.Post;
    ShowMessage('Informações Armazenadas com sucesso!');
    dm.sql_produto.Refresh;
    Close;
  end;

  if dm.sql_produto.State=dsEdit then
  begin
    dm.sql_produtoNOME_PRODUTO.AsString:=EdtNome.Text;
    dm.sql_produtoQUANTIDADE_PRODUTO.AsInteger:=StrToInt(EdtQtd.Text);
    DM.sql_produtoVALOR_PRODUTO.AsFloat := StrToFloat(EdtValor.Text);
    DM.sql_produtoID_PESSOA_PROD.AsInteger := DM.sql_pessoaID_PESSOA.AsInteger;
    dm.sql_produto.Post;
    ShowMessage('Informações Armazenadas com sucesso!');
    dm.sql_produto.Refresh;
    Close;
  end;
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

procedure TFCadProduto.FormCreate(Sender: TObject);
begin
  DM.sql_pessoa.Close;
  DM.sql_pessoa.open;
end;

procedure TFCadProduto.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if key=VK_ESCAPE then                                                 //se a tecla ESC for pressionada então
    BtnCancelar.Click;
end;

end.
