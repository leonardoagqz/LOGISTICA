program Logistica;

uses
  Vcl.Forms,
  UCadProduto in 'UCadProduto.pas' {FCadProduto},
  UCadUsuario in 'UCadUsuario.pas' {FCadUsuario},
  UDM in 'UDM.pas' {tb_pessoa: TDataModule},
  ULogin in 'ULogin.pas' {FLogin},
  UPrincipal in 'UPrincipal.pas' {FPrincipal},
  UProdutos in 'UProdutos.pas' {FProdutos},
  UUsuarios in 'UUsuarios.pas' {FUsuarios};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
