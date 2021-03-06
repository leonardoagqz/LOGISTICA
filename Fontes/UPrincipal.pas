unit UPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ComCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.jpeg, Vcl.StdCtrls, Vcl.Buttons;

type
  TFPrincipal = class(TForm)
    Menu: TMainMenu;
    Cadastro1: TMenuItem;
    MenuClientes: TMenuItem;
    MenuFornecedores: TMenuItem;
    MenuProdutos: TMenuItem;
    Consulta1: TMenuItem;
    MenuCompra: TMenuItem;
    Relatrios1: TMenuItem;
    MenuRelatMovi: TMenuItem;
    Financeiro1: TMenuItem;
    Caixa1: TMenuItem;
    Configuraes1: TMenuItem;
    Usurios1: TMenuItem;
    Sair1: TMenuItem;
    FormasdePagamento1: TMenuItem;
    Meiosdetransportes2: TMenuItem;
    Pases2: TMenuItem;
    statusbar: TStatusBar;
    Panel1: TPanel;
    Image1: TImage;
    MenuVenda: TMenuItem;
    Menurelatgrafi: TMenuItem;
    btnClientes: TBitBtn;
    btnFornecedores: TBitBtn;
    btnProdutos: TBitBtn;
    btnMovCompra: TBitBtn;
    btnVenda: TBitBtn;
    btnRelatGrafi: TBitBtn;
    BitBtn1: TBitBtn;
    ControledeUsurio1: TMenuItem;
    btnLogof: TBitBtn;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Sair1Click(Sender: TObject);
    procedure Usurios1Click(Sender: TObject);
    procedure MenuProdutosClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormasdePagamento1Click(Sender: TObject);
    procedure Meiosdetransportes2Click(Sender: TObject);
    procedure Pases2Click(Sender: TObject);
    procedure MenuClientesClick(Sender: TObject);
    procedure MenuFornecedoresClick(Sender: TObject);
    procedure MenuCompraClick(Sender: TObject);
    procedure MenuVendaClick(Sender: TObject);
    procedure Caixa1Click(Sender: TObject);
    procedure MenurelatgrafiClick(Sender: TObject);
    procedure MenuRelatMoviClick(Sender: TObject);
    procedure btnClientesClick(Sender: TObject);
    procedure btnFornecedoresClick(Sender: TObject);
    procedure btnMovCompraClick(Sender: TObject);
    procedure btnVendaClick(Sender: TObject);
    procedure btnProdutosClick(Sender: TObject);
    procedure btnRelatGrafiClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure ControledeUsurio1Click(Sender: TObject);
    procedure btnLogofClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPrincipal: TFPrincipal;

implementation

{$R *.dfm}

uses UUsuarios, UDM, UProdutos, ULogin, UFormasPgto, UMeiosTransportes, UPaises, UPessoas, UMovimentos, UCadCaixa, UCaixa, UPeriodografico, UPeriodoMovimentacao, U_Usuarios, U_funcoes;

procedure TFPrincipal.BitBtn1Click(Sender: TObject);
begin
  MenuRelatMovi.Click;
end;

procedure TFPrincipal.btnClientesClick(Sender: TObject);
begin
  MenuClientes.Click;
end;

procedure TFPrincipal.btnFornecedoresClick(Sender: TObject);
begin
  MenuFornecedores.Click;
end;

procedure TFPrincipal.btnLogofClick(Sender: TObject);
begin
  DM.vLogin:=False;
  DM.CriarFormulario(TFLogin,FLogin);
  if dm.vLogin=True then
  begin
    statusbar.Panels[1].Text:=DM.sql_usuarioLOGIN.AsString;
    ShowMessage('Login efetuado com Sucesso!');
  end
  else
  begin
     Application.Terminate;
  end;
end;

procedure TFPrincipal.btnMovCompraClick(Sender: TObject);
begin
  MenuCompra.Click;
end;

procedure TFPrincipal.btnProdutosClick(Sender: TObject);
begin
  MenuProdutos.Click;
end;

procedure TFPrincipal.btnRelatGrafiClick(Sender: TObject);
begin
  Menurelatgrafi.Click;
end;

procedure TFPrincipal.btnVendaClick(Sender: TObject);
begin
  MenuVenda.Click;
end;

procedure TFPrincipal.Caixa1Click(Sender: TObject);
begin
 if TestarPermissao('FCaixa') = false then
   Exit;
   Dm.CriarFormulario(TFCaixa,FCaixa);
end;

procedure TFPrincipal.ControledeUsurio1Click(Sender: TObject);
begin
  if TestarPermissao('F_usuarios') = false then
   Exit;
  Dm.CriarFormulario(TF_usuarios ,F_usuarios);
end;

procedure TFPrincipal.MenuClientesClick(Sender: TObject);
begin
   if TestarPermissao('FPessoas') = false then
   Exit;
  dm.sql_pessoa.Close;
  dm.sql_pessoa.Params.ParamByName('TIPO_PESSOA').AsString:='C';
  Dm.CriarFormulario(TFPessoas ,FPessoas);
end;

procedure TFPrincipal.FormasdePagamento1Click(Sender: TObject);
begin
  if TestarPermissao('FFormasPgto') = false then
   Exit;
  Dm.CriarFormulario(TFFormasPgto,FFormasPgto);
end;

procedure TFPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Application.Terminate;
  FPrincipal := nil;
end;

procedure TFPrincipal.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=VK_ESCAPE then
  Application.Terminate;
end;

procedure TFPrincipal.MenuFornecedoresClick(Sender: TObject);
begin
  if TestarPermissao('FPessoas') = false then
   Exit;
  dm.sql_pessoa.Close;
  dm.sql_pessoa.Params.ParamByName('TIPO_PESSOA').AsString:='F';
  Dm.CriarFormulario(TFPessoas ,FPessoas);
end;

procedure TFPrincipal.MenurelatgrafiClick(Sender: TObject);
begin
  if TestarPermissao('FPeriodoGrafico') = false then
   Exit;
  DM.CriarFormulario(TFPeriodoGrafico,FPeriodoGrafico);
end;

procedure TFPrincipal.Meiosdetransportes2Click(Sender: TObject);
begin
  if TestarPermissao('FMeiosTransportes') = false then
   Exit;
  Dm.CriarFormulario(TFMeiosTransportes,FMeiosTransportes);
end;

procedure TFPrincipal.Pases2Click(Sender: TObject);
begin
  if TestarPermissao('FPaises') = false then
   Exit;
  Dm.CriarFormulario(TFPaises,FPaises);
end;

procedure TFPrincipal.MenuProdutosClick(Sender: TObject);
begin
  if TestarPermissao('FProdutos') = false then
   Exit;
  DM.sql_pessoa2.Params.ParamByName('NOME_PESSOA').AsString:='%';
  dm.sql_pessoa2.Params.ParamByName('TIPO_PESSOA').AsString:='F';
  Dm.CriarFormulario(TFProdutos,FProdutos);
end;

procedure TFPrincipal.Sair1Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFPrincipal.Usurios1Click(Sender: TObject);
begin
  if TestarPermissao('FUsuarios') = false then
   Exit;
  DM.CriarFormulario(TFUsuarios,FUsuarios);
end;

procedure TFPrincipal.MenuVendaClick(Sender: TObject);
begin
  if TestarPermissao('FMovimentos') = false then
   Exit;
  DM.sql_MovConsul.Close;
  dm.sql_MovConsul.Params[2].AsString := 'Venda' ;
  DM.CriarFormulario(TFMovimentos, FMovimentos);
end;

procedure TFPrincipal.MenuCompraClick(Sender: TObject);
begin
  if TestarPermissao('FMovimentos') = false then
  Exit;
  DM.sql_MovConsul.Close;
  dm.sql_MovConsul.Params[2].AsString := 'Compra' ;
  DM.CriarFormulario(TFMovimentos, FMovimentos);

end;

procedure TFPrincipal.MenuRelatMoviClick(Sender: TObject);
begin
  if TestarPermissao('FPeriodoMovimentacao') = false then
  Exit;
  DM.CriarFormulario(TFPeriodoMovimentacao,FPeriodoMovimentacao);
end;

end.
