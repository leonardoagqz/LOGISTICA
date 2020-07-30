unit UPeriodografico;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.ComCtrls;

type
  TFPeriodoGrafico = class(TForm)
    pn2: TPanel;
    pn1: TPanel;
    btnVisualizar: TBitBtn;
    btnFechar: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    dtpInicial: TDateTimePicker;
    dtpFinal: TDateTimePicker;
    procedure btnFecharClick(Sender: TObject);
    procedure btnVisualizarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPeriodoGrafico: TFPeriodoGrafico;

implementation

uses
  UDM, UGrafico;

{$R *.dfm}

procedure TFPeriodoGrafico.btnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TFPeriodoGrafico.btnVisualizarClick(Sender: TObject);
begin
  DM.sGrafico.Close;
  DM.sGrafico.Params[0].AsDate:=dtpInicial.Date;
  DM.sGrafico.Params[1].AsDate:=dtpFinal.Date;
  DM.sGrafico.Open;
  if dm.sGrafico.IsEmpty then
  begin
    ShowMessage('nenhum movimento encontrado!!');

  end
  else
   dm.CriarFormulario(TFGrafico,FGrafico);
   DM.sGrafico.Close;


end;

procedure TFPeriodoGrafico.FormCreate(Sender: TObject);
begin
  dtpInicial.Date:=Now;
  dtpFinal.Date:=Now;
end;

end.
