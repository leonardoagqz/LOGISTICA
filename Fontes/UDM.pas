unit UDM;

interface

uses
  System.SysUtils, System.Classes, Forms, Data.DB, Data.Win.ADODB, Dialogs,
  Datasnap.DBClient, Datasnap.Provider, Data.FMTBcd, Data.SqlExpr;

type
  TDM = class(TDataModule)
    BDConnectionSQL: TADOConnection;
    DtsUsuarios: TADODataSet;
    DtsUsuariosID_USUARIO: TAutoIncField;
    DtsUsuariosLOGIN: TStringField;
    DtsUsuariosSENHA: TStringField;
    DtsUsuariosMASTER: TStringField;
    dspUsuarios: TDataSetProvider;
    cdsUsuarios: TClientDataSet;
    cdsUsuariosID_USUARIO: TAutoIncField;
    cdsUsuariosLOGIN: TStringField;
    cdsUsuariosSENHA: TStringField;
    cdsUsuariosMASTER: TStringField;
    QryIdUsuario: TADOQuery;
    QryIdUsuarioID_USUARIO: TAutoIncField;
    QryIdUsuarioLOGIN: TStringField;
    QryIdUsuarioSENHA: TStringField;
    QryIdUsuarioMASTER: TStringField;
    DtsProdutos: TADODataSet;
    dspProdutos: TDataSetProvider;
    cdsProdutos: TClientDataSet;
    QryIdProduto: TADOQuery;
    QryIdProdutoID_PRODUTO: TAutoIncField;
    QryIdProdutoNOME: TStringField;
    QryIdProdutoQUANTIDADE: TIntegerField;
    QryIdProdutoID_PESSOA: TIntegerField;
    QryIdProdutoVALOR: TBCDField;
    QryIdProdutoTIPO: TStringField;
    DtsProdutosID_PRODUTO: TAutoIncField;
    DtsProdutosNOME: TStringField;
    DtsProdutosQUANTIDADE: TIntegerField;
    DtsProdutosID_PESSOA: TIntegerField;
    DtsProdutosVALOR: TBCDField;
    DtsProdutosTIPO: TStringField;
    cdsProdutosID_PRODUTO: TAutoIncField;
    cdsProdutosNOME: TStringField;
    cdsProdutosQUANTIDADE: TIntegerField;
    cdsProdutosID_PESSOA: TIntegerField;
    cdsProdutosVALOR: TBCDField;
    cdsProdutosTIPO: TStringField;
    DtsPessoas: TADODataSet;
    dspPessoas: TDataSetProvider;
    cdsPessoas: TClientDataSet;
    QryIdPessoa: TADOQuery;
    DtsPessoasID_PESSOA: TAutoIncField;
    DtsPessoasNOME: TStringField;
    DtsPessoasDOCUMENTO: TStringField;
    DtsPessoasTELEFONE: TStringField;
    DtsPessoasTIPO: TStringField;
    DtsPessoasID_PAIS: TIntegerField;
    cdsPessoasID_PESSOA: TAutoIncField;
    cdsPessoasNOME: TStringField;
    cdsPessoasDOCUMENTO: TStringField;
    cdsPessoasTELEFONE: TStringField;
    cdsPessoasTIPO: TStringField;
    cdsPessoasID_PAIS: TIntegerField;
    QryIdPessoaID_PESSOA: TAutoIncField;
    QryIdPessoaNOME: TStringField;
    QryIdPessoaDOCUMENTO: TStringField;
    QryIdPessoaTELEFONE: TStringField;
    QryIdPessoaTIPO: TStringField;
    QryIdPessoaID_PAIS: TIntegerField;
    procedure DataModuleCreate(Sender: TObject);
    procedure CriarFormulario(T: TformClass; F: Tform); //criando procedimento para cria��o de formularios
  private
    { Private declarations }
  public
    { Public declarations }
    vLogin: Boolean;
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses ULogin, UPrincipal;

{$R *.dfm}

procedure TDM.CriarFormulario(T: TformClass; F: Tform);  //criando procedimentos da procedure CriarFormulario
begin
  try                            //try vai tentar
    Application.CreateForm(T,F); //criar form
    F.ShowModal;                 //exibir tela
    finally                      //finaliza
    F.Free;                      //libera formda mem�ria
  end;
end;

procedure TDM.DataModuleCreate(Sender: TObject);
begin


    try // tentar executar um blocode comandos
      BDConnectionSQL.Close;
      BDConnectionSQL.Open;

      //tentar criar/abrir o form login
      {Application.CreateForm(TFLogin,FLogin);//TFLogin � a classe, FLogin � o nome do formul�rio a ser chamado
      FLogin.ShowModal;                      //mostrar tela de login na tela
      FLogin.Free; }                         //depois que abrir o formul�rio e finalizar � preciso liberar ele da mem�ria


      //iniciar aplica�ao, chamar form Principal
      //testar vari�vel vlogin, para chamr form principal
      vLogin:=false;
      if vLogin=True then                                 //se a vari�vel vlogin for verdadeira
      begin                                               //inicie
          Application.CreateForm(TFPrincipal,FPrincipal); //criar form Principal
          FPrincipal.ShowModal;                           //exibir tela
          FPrincipal.Free;                                //liberar da mem�ria
      end;


    except
       on E: Exception do
       ShowMessage(E.Message);


    end;
end;

end.