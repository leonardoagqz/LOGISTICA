unit UProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TFProdutos = class(TForm)
    LblLocalizarUsuarios: TLabel;
    EdtLocalizarUsuarios: TEdit;
    G1Grid: TDBGrid;
    PainelUsuarios1: TPanel;
    PainelUsuarios2: TPanel;
    BtnIncluir: TBitBtn;
    BtnAlterar: TBitBtn;
    BtnExcluir: TBitBtn;
    DsProduto: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FProdutos: TFProdutos;

implementation

{$R *.dfm}

end.
