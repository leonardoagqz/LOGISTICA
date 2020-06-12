unit UDM;

interface

uses
  System.SysUtils, System.Classes, Forms, Data.DB, Data.Win.ADODB, Dialogs,
  Datasnap.DBClient, Datasnap.Provider, Data.FMTBcd, Data.SqlExpr,
  Data.DBXInterBase, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error,
  FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB, FireDAC.Phys.FBDef,
  FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.VCLUI.Wait, FireDAC.Phys.IBBase,
  FireDAC.Comp.UI;

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
    BDConnectionFB: TFDConnection;
    ds_usuario: TDataSource;
    sql_usuario: TFDQuery;
    sql_usuarioID_USUARIO: TIntegerField;
    sql_usuarioLOGIN: TStringField;
    sql_usuarioSENHA: TStringField;
    sql_usuarioMASTER: TStringField;
    tb_usuario: TFDTable;
    tb_usuarioID_USUARIO: TIntegerField;
    tb_usuarioLOGIN: TStringField;
    tb_usuarioSENHA: TStringField;
    tb_usuarioMASTER: TStringField;
    WaitCursor: TFDGUIxWaitCursor;
    FireBird: TFDPhysFBDriverLink;
    sql_Gen_usuario: TFDQuery;
    sql_Gen_usuarioID: TLargeintField;
    procedure DataModuleCreate(Sender: TObject);
    procedure CriarFormulario(T: TformClass; F: Tform); //criando procedimento para criação de formularios
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
    F.Free;                      //libera formda memória
  end;
end;

procedure TDM.DataModuleCreate(Sender: TObject);
var
vPath:string;
begin
  //exportar as configurações de conexão para um arquivo texto
  //BDConnectionSQL.Params.SaveToFile('C:\Users\Public\Documents\Embarcadero\Studio\Projects\Logistica\Sistema Logistica\Config.txt');

  vPath:= ExtractFilePath(Application.ExeName)+'Config.txt';

  try // tentar executar um blocode comandos
    //variavel as informações que esta dentro do Config.txt

    BDConnectionFB.Close;
    BDConnectionFB.Params.LoadFromFile(vPath);
    BDConnectionFB.Open;

      //tentar criar/abrir o form login
      Application.CreateForm(TFLogin,FLogin);//TFLogin é a classe, FLogin é o nome do formulário a ser chamado
      FLogin.ShowModal;                      //mostrar tela de login na tela
      FLogin.Free;                          //depois que abrir o formulário e finalizar é preciso liberar ele da memória


      //iniciar aplicaçao, chamar form Principal
      //testar variável vlogin, para chamr form principal
      vLogin:=false;
      if vLogin=True then                                 //se a variável vlogin for verdadeira
      begin                                               //inicie
          Application.CreateForm(TFPrincipal,FPrincipal); //criar form Principal
          FPrincipal.ShowModal;                           //exibir tela
          FPrincipal.Free;                                //liberar da memória
      end;


    except
       on E: Exception do
       ShowMessage(E.Message);


    end;
end;

end.
