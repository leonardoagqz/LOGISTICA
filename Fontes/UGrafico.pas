unit UGrafico;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, VclTee.TeeGDIPlus, VCLTee.TeEngine,
  VCLTee.Series, Data.DB, Vcl.ExtCtrls, VCLTee.TeeProcs, VCLTee.Chart,
  VCLTee.DBChart;

type
  TFGrafico = class(TForm)
    DBChart1: TDBChart;
    dsGrafico_: TDataSource;
    Series1: TBarSeries;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FGrafico: TFGrafico;

implementation

uses
  UDM;

{$R *.dfm}

end.
