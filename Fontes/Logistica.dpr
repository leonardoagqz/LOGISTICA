program Logistica;

uses
  Vcl.Forms,
  UPrincipal in 'UPrincipal.pas' {FPrincipal},
  UDM in 'UDM.pas' {DM: TDataModule},
  ULogin in 'ULogin.pas' {FLogin},
  UUsuarios in 'UUsuarios.pas' {FUsuarios},
  UCadUsuario in 'UCadUsuario.pas' {FCadUsuario},
  UProdutos in 'UProdutos.pas' {FProdutos};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
