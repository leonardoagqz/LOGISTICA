program Logistica;

uses
  Vcl.Forms,
  UPrincipal in 'UPrincipal.pas' {FPrincipal},
  UDM in 'UDM.pas' {DM: TDataModule},
  ULogin in 'ULogin.pas' {FLogin},
  UUsuarios in 'UUsuarios.pas' {FUsuarios},
  UCadUsuario in 'UCadUsuario.pas' {FCadUsuario},
  UProdutos in 'UProdutos.pas' {FProdutos},
  UCadProduto in 'UCadProduto.pas' {FCadProduto};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := False;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFLogin, FLogin);
  Application.Run;
end.
