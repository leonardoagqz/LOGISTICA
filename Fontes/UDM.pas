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
  FireDAC.Comp.UI, Controls, StdCtrls ;

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
    tb_produto: TFDTable;
    ds_produto: TDataSource;
    sql_produto: TFDQuery;
    tb_pessoa: TFDTable;
    ds_pessoa: TDataSource;
    sql_pessoa: TFDQuery;
    sql_pessoaID_PESSOA: TIntegerField;
    sql_pessoaNOME_PESSOA: TStringField;
    sql_pessoaDOCUMENTO_PESSOA: TStringField;
    sql_pessoaFONE_PESSOA: TStringField;
    sql_pessoaTIPO_PESSOA: TStringField;
    sql_pessoaID_PAIS_PESSOA: TIntegerField;
    tb_pessoaID_PESSOA: TIntegerField;
    tb_pessoaNOME_PESSOA: TStringField;
    tb_pessoaDOCUMENTO_PESSOA: TStringField;
    tb_pessoaFONE_PESSOA: TStringField;
    tb_pessoaTIPO_PESSOA: TStringField;
    tb_pessoaID_PAIS_PESSOA: TIntegerField;
    tb_formaspgto: TFDTable;
    ds_formaspgto: TDataSource;
    sql_formaspgto: TFDQuery;
    sql_Gen_pessoa: TFDQuery;
    sql_Gen_produto: TFDQuery;
    sql_Gen_formaspgto: TFDQuery;
    sql_Gen_produtoID: TLargeintField;
    sql_Gen_pessoaID: TLargeintField;
    sql_Gen_formaspgtoID: TLargeintField;
    sql_formaspgtoID_FORMAPGTO: TIntegerField;
    sql_formaspgtoDESCRICAO_FORMAPGTO: TStringField;
    tb_formaspgtoID_FORMAPGTO: TIntegerField;
    tb_formaspgtoDESCRICAO_FORMAPGTO: TStringField;
    tb_meiotransporte: TFDTable;
    ds_meiotransporte: TDataSource;
    sql_meiotransporte: TFDQuery;
    sql_Gen_meiotransporte: TFDQuery;
    sql_meiotransporteID_TRANSPORTE: TIntegerField;
    sql_meiotransporteDESCRICAO_TRANSPORTE: TStringField;
    tb_meiotransporteID_TRANSPORTE: TIntegerField;
    tb_meiotransporteDESCRICAO_TRANSPORTE: TStringField;
    sql_Gen_meiotransporteID: TLargeintField;
    tb_paises: TFDTable;
    ds_paises: TDataSource;
    sql_paises: TFDQuery;
    sql_Gen_paises: TFDQuery;
    tb_paisesID_PAIS: TIntegerField;
    tb_paisesNOME_PAIS: TStringField;
    sql_paisesID_PAIS: TIntegerField;
    sql_paisesNOME_PAIS: TStringField;
    sql_Gen_paisesID: TLargeintField;
    tb_MovConsul: TFDTable;
    ds_MovConsul: TDataSource;
    sql_MovConsul: TFDQuery;
    sql_Gen__MovConsul: TFDQuery;
    tb_MovConsulID_MOVIMENTO: TIntegerField;
    tb_MovConsulDATA_MOVIMENTO: TDateField;
    tb_MovConsulTOTAL_MOVIMENTO: TBCDField;
    tb_MovConsulID_PGTO_MOVIMENTO: TIntegerField;
    tb_MovConsulID_TRANSPORTE_MOVIMENTO: TIntegerField;
    sql_MovConsulID_MOVIMENTO: TIntegerField;
    sql_MovConsulDATA_MOVIMENTO: TDateField;
    sql_MovConsulTOTAL_MOVIMENTO: TBCDField;
    sql_MovConsulID_PGTO_MOVIMENTO: TIntegerField;
    sql_MovConsulID_TRANSPORTE_MOVIMENTO: TIntegerField;
    sql_Gen__MovConsulID: TLargeintField;
    tb_MovInclusao: TFDTable;
    ds_MovInclusao: TDataSource;
    sql_MovInclusao: TFDQuery;
    tb_MovInclusaoID_MOVIMENTO: TIntegerField;
    tb_MovInclusaoDATA_MOVIMENTO: TDateField;
    tb_MovInclusaoTOTAL_MOVIMENTO: TBCDField;
    tb_MovInclusaoID_PGTO_MOVIMENTO: TIntegerField;
    tb_MovInclusaoID_TRANSPORTE_MOVIMENTO: TIntegerField;
    tb_Itens: TFDTable;
    ds_Itens: TDataSource;
    sql_Itens: TFDQuery;
    sql_IncluirItens: TFDQuery;
    sql_ItensID_ITEM_MOVIMENTO: TIntegerField;
    sql_ItensID_MOVIMENTO_ITENS: TIntegerField;
    sql_ItensID_PRODUTO_ITENS: TIntegerField;
    sql_ItensQUANTIDADE_MOVIMENTO: TIntegerField;
    sql_ItensVALOR_MOVIMENTO: TBCDField;
    sql_ItensTOTAL_MOVIMENTO: TBCDField;
    tb_ItensID_ITEM_MOVIMENTO: TIntegerField;
    tb_ItensID_MOVIMENTO_ITENS: TIntegerField;
    tb_ItensID_PRODUTO_ITENS: TIntegerField;
    tb_ItensQUANTIDADE_MOVIMENTO: TIntegerField;
    tb_ItensVALOR_MOVIMENTO: TBCDField;
    tb_ItensTOTAL_MOVIMENTO: TBCDField;
    ds_Incluiritens: TDataSource;
    sql_Gen_Item: TFDQuery;
    sql_Gen_ItemID: TLargeintField;
    sql_IncluirItensID_ITEM_MOVIMENTO: TIntegerField;
    sql_IncluirItensID_MOVIMENTO_ITENS: TIntegerField;
    sql_IncluirItensID_PRODUTO_ITENS: TIntegerField;
    sql_IncluirItensQUANTIDADE_MOVIMENTO: TIntegerField;
    sql_IncluirItensVALOR_MOVIMENTO: TBCDField;
    sql_IncluirItensTOTAL_MOVIMENTO: TBCDField;
    sql_IncluirItensSoma: TAggregateField;
    sql_ItensNOME_PRODUTO_ITENS: TStringField;
    tb_ItensNOME_PRODUTO_ITENS: TStringField;
    sql_IncluirItensNOME_PRODUTO_ITENS: TStringField;
    sql_IncluirItensDBG: TFDQuery;
    AggregateField1: TAggregateField;
    ds_IncluiritensDBG: TDataSource;
    sql_pessoa2: TFDQuery;
    ds_pessoa2: TDataSource;
    sql_pessoa2ID_PESSOA: TIntegerField;
    sql_pessoa2NOME_PESSOA: TStringField;
    sql_pessoa2DOCUMENTO_PESSOA: TStringField;
    sql_pessoa2FONE_PESSOA: TStringField;
    sql_pessoa2TIPO_PESSOA: TStringField;
    sql_pessoa2ID_PAIS_PESSOA: TIntegerField;
    sql_IncluirItensDBGSomaQtd: TAggregateField;
    ds_itensarm: TDataSource;
    sql_itensarm: TFDQuery;
    sql_itensarmID_ITEM_MOVIMENTO: TIntegerField;
    sql_itensarmID_MOVIMENTO_ITENS: TIntegerField;
    sql_itensarmID_PRODUTO_ITENS: TIntegerField;
    sql_itensarmQUANTIDADE_MOVIMENTO: TIntegerField;
    sql_itensarmVALOR_MOVIMENTO: TBCDField;
    sql_itensarmTOTAL_MOVIMENTO: TBCDField;
    sql_itensarmNOME_PRODUTO_ITENS: TStringField;
    sql_IncluirItensDBGID_ITEM_MOVIMENTO: TIntegerField;
    sql_IncluirItensDBGID_MOVIMENTO_ITENS: TIntegerField;
    sql_IncluirItensDBGID_PRODUTO_ITENS: TIntegerField;
    sql_IncluirItensDBGQUANTIDADE_MOVIMENTO: TIntegerField;
    sql_IncluirItensDBGVALOR_MOVIMENTO: TBCDField;
    sql_IncluirItensDBGTOTAL_MOVIMENTO: TBCDField;
    sql_IncluirItensDBGNOME_PRODUTO_ITENS: TStringField;
    sql_MovConsulID_PESSOA_MOVIMENTO: TIntegerField;
    sql_MovInclusaoID_MOVIMENTO: TIntegerField;
    sql_MovInclusaoDATA_MOVIMENTO: TDateField;
    sql_MovInclusaoTOTAL_MOVIMENTO: TBCDField;
    sql_MovInclusaoID_PGTO_MOVIMENTO: TIntegerField;
    sql_MovInclusaoID_TRANSPORTE_MOVIMENTO: TIntegerField;
    sql_MovInclusaoID_PESSOA_MOVIMENTO: TIntegerField;
    sql_sItensArm: TFDQuery;
    sql_sItensArmID_ITEM_MOVIMENTO: TIntegerField;
    sql_sItensArmID_MOVIMENTO_ITENS: TIntegerField;
    sql_sItensArmID_PRODUTO_ITENS: TIntegerField;
    sql_sItensArmQUANTIDADE_MOVIMENTO: TIntegerField;
    sql_sItensArmVALOR_MOVIMENTO: TBCDField;
    sql_sItensArmTOTAL_MOVIMENTO: TBCDField;
    sql_sItensArmNOME_PRODUTO_ITENS: TStringField;
    sql_sItensArmNOME_PRODUTO: TStringField;
    sql_MovConsulDESCRICAO_FORMAPGTO: TStringField;
    sql_MovConsulDESCRICAO_TRANSPORTE: TStringField;
    tb_produtoID_PRODUTO: TIntegerField;
    tb_produtoNOME_PRODUTO: TStringField;
    tb_produtoQUANTIDADE_PRODUTO: TIntegerField;
    tb_produtoID_PESSOA_PROD: TIntegerField;
    tb_produtoVALOR_PRODUTO: TBCDField;
    tb_produtoTIPO_PRODUTO: TStringField;
    sql_produtoID_PRODUTO: TIntegerField;
    sql_produtoNOME_PRODUTO: TStringField;
    sql_produtoQUANTIDADE_PRODUTO: TIntegerField;
    sql_produtoID_PESSOA_PROD: TIntegerField;
    sql_produtoVALOR_PRODUTO: TBCDField;
    sql_produtoTIPO_PRODUTO: TStringField;
    sql_MovConsulTIPO_MOVIMENTO: TStringField;
    sql_MovInclusaoTIPO_MOVIMENTO: TStringField;
    tb_MovConsulTIPO_MOVIMENTO: TStringField;
    tb_MovConsulID_PESSOA_MOVIMENTO: TIntegerField;
    tb_MovInclusaoTIPO_MOVIMENTO: TStringField;
    tb_MovInclusaoID_PESSOA_MOVIMENTO: TIntegerField;
    sql_Estoque: TFDQuery;
    ds_Estoque: TDataSource;
    tb_Estoque: TFDTable;
    sql_EstoqueID_PRODUTO: TIntegerField;
    sql_EstoqueQUANTIDADE_PRODUTO: TIntegerField;
    tb_EstoqueID_PRODUTO: TIntegerField;
    tb_EstoqueNOME_PRODUTO: TStringField;
    tb_EstoqueQUANTIDADE_PRODUTO: TIntegerField;
    tb_EstoqueID_PESSOA_PROD: TIntegerField;
    tb_EstoqueVALOR_PRODUTO: TBCDField;
    tb_EstoqueTIPO_PRODUTO: TStringField;
    ds_sItensArm: TDataSource;
    tb_Caixa: TFDTable;
    ds_Caixa: TDataSource;
    sql_Caixa: TFDQuery;
    sql_CaixaID_CAIXA: TIntegerField;
    sql_CaixaTIPO_CAIXA: TStringField;
    sql_CaixaDATA_CAIXA: TDateField;
    sql_CaixaDESCRICAO_CAIXA: TStringField;
    sql_CaixaVALOR_CAIXA: TBCDField;
    sql_CaixaSALDO_CAIXA: TBCDField;
    tb_CaixaID_CAIXA: TIntegerField;
    tb_CaixaTIPO_CAIXA: TStringField;
    tb_CaixaDATA_CAIXA: TDateField;
    tb_CaixaDESCRICAO_CAIXA: TStringField;
    tb_CaixaVALOR_CAIXA: TBCDField;
    tb_CaixaSALDO_CAIXA: TBCDField;
    sql_Gen_caixa: TFDQuery;
    sql_Gen_caixaID: TLargeintField;
    sGrafico: TFDQuery;
    dsSGrafico: TDataSource;
    sGraficoDATA_MOVIMENTO: TDateField;
    sGraficoQTD: TIntegerField;
    sRelatmovimentacao: TFDQuery;
    dsRelatmovimentacao: TDataSource;
    sRelatmovimentacaoTIPO_MOVIMENTO: TStringField;
    sRelatmovimentacaoDATA_MOVIMENTO: TDateField;
    sRelatmovimentacaoTOTAL_MOVIMENTO: TBCDField;
    sRelatmovimentacaoDESCRICAO: TStringField;
    SQL_acesso: TFDQuery;
    sql_Gen_acesso: TFDQuery;
    SQL_acessoACESSO_ID: TIntegerField;
    SQL_acessoACESSO_USER: TIntegerField;
    SQL_acessoACESSO_TELA: TIntegerField;
    SQL_acessoFORMS_ID: TIntegerField;
    SQL_acessoFORMS_NOME: TStringField;
    SQL_acessoFORMS_DESCR: TStringField;
    sql_Gen_acessoID: TLargeintField;
    procedure DataModuleCreate(Sender: TObject);
    procedure CriarFormulario(T: TformClass; F: Tform); //criando procedimento para cria��o de formularios
   function MessageDlgDefault(Msg :String; AType: TMsgDlgType; AButtons: TMsgDlgButtons;
   IndiceHelp: LongInt; DefButton: TModalResult=MrNone): Word;

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

procedure TDM.CriarFormulario(T: TformClass; F: Tform);
begin
  try
    Application.CreateForm(T,F);
    F.ShowModal;
    finally
    F.Free;                      //libera formda mem�ria
  end;
end;

procedure TDM.DataModuleCreate(Sender: TObject);
var
vPath:string;
begin
  //exportar as configura��es de conex�o para um arquivo texto
  //BDConnectionSQL.Params.SaveToFile('C:\Users\Public\Documents\Embarcadero\Studio\Projects\Logistica\Sistema Logistica\Config.txt');


  //CONEX�O BANCO FIREBIRD
  vPath:= ExtractFilePath(Application.ExeName)+'Config.txt';

  try
    //variavel as informa��es que esta dentro do Config.txt

    BDConnectionFB.Close;
    BDConnectionFB.Params.LoadFromFile(vPath);
    BDConnectionFB.Open;


      Application.CreateForm(TFLogin,FLogin);//TFLogin � a classe, FLogin � o nome do formul�rio a ser chamado
      FLogin.ShowModal;                      //mostrar tela de login na tela
      FLogin.Free;                          //depois que abrir o formul�rio e finalizar � preciso liberar ele da mem�ria


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


function TDM.MessageDlgDefault(Msg :String; AType: TMsgDlgType; AButtons: TMsgDlgButtons;
                                IndiceHelp: LongInt; DefButton: TModalResult=MrNone): Word;
var
I:Integer;
Mensagem:TForm;
begin
Mensagem:=CreateMessageDialog(Msg, AType, Abuttons);
Mensagem.HelpConText:=IndiceHelp;
with Mensagem do
begin
for i :=0 To ComponentCount -1 do
begin
if (Components[i] is TButton) then
begin
if (TButton(Components[i]).ModalResult=DefButton) then
begin
ActiveControl:=TWincontrol(Components[i]);
end;
end;
end;

{if Atype=mtConfirmation then
Caption:='Confirma��o'
else
if AType=mtWarning then
Caption:='Aten��o'
else
if AType=mtError then
Caption := 'Erro'
else
if AType=mtInFormation then
Caption:='InForma��o';}

Caption:=Application.Title;

TButton(Mensagem.FindComponent('YES')).Caption :='&Sim';
TButton(Mensagem.FindComponent('NO')).Caption :='&N�o';
TButton(Mensagem.FindComponent('CANCEL')).Caption :='&Cancelar';
TButton(Mensagem.FindComponent('ABORT')).Caption :='&Abortar';
TButton(Mensagem.FindComponent('RETRY')).Caption :='&Repetir';
TButton(Mensagem.FindComponent('IGNORE')).Caption :='&Ignorar';
TButton(Mensagem.FindComponent('ALL')).Caption :='&Todos';
TButton(Mensagem.FindComponent('HELP')).Caption :='A&juda';
Result:=Mensagem.ShowModal;
Mensagem.Free;
end;
end;

end.
