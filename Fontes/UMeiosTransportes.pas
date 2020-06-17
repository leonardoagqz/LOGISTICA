unit UMeiosTransportes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TFMeiosTransportes = class(TForm)
    LblLocalizarUsuarios: TLabel;
    EdtLocalizarmeiotransporte: TEdit;
    dbgmeiotransporte: TDBGrid;
    PainelUsuarios1: TPanel;
    PainelUsuarios2: TPanel;
    BtnIncluir: TBitBtn;
    BtnAlterar: TBitBtn;
    BtnExcluir: TBitBtn;
    BtnSair: TButton;
    procedure FormCreate(Sender: TObject);
    procedure EdtLocalizarmeiotransporteChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BtnIncluirClick(Sender: TObject);
    procedure BtnAlterarClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure BtnSairClick(Sender: TObject);
    procedure dbgmeiotransporteDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMeiosTransportes: TFMeiosTransportes;

implementation

uses
  UDM, UCadFormasPgto, UCadMeioTransporte;

{$R *.dfm}

procedure TFMeiosTransportes.BtnAlterarClick(Sender: TObject);
begin
  if not DM.sql_meiotransporte.IsEmpty then
  begin
  Self.Visible :=False;
  DM.sql_meiotransporte.Edit;
  dm.CriarFormulario(TFCadMeioTransporte,FCadMeioTransporte);
  Self.Visible:=True;
  end;
end;

procedure TFMeiosTransportes.BtnExcluirClick(Sender: TObject);
begin
    if not dm.sql_meiotransporte.IsEmpty then
    begin
        if dm.MessageDlgDefault('Confirmar a Exclusão',mtInformation,[mbYes,mbNo],0)=mrYes  then
      //se ao informar a mensagem 'Confirmar a Exclusão' for igual a Yes então
        begin
            dm.sql_meiotransporte.Delete;
            ShowMessage('Informações Excluídas com Sucesso!');
        end;

    end;
end;

procedure TFMeiosTransportes.BtnIncluirClick(Sender: TObject);
begin
     //Firebird
  Self.Visible :=False;
  DM.sql_meiotransporte.Active := True;
  DM.sql_meiotransporte.Insert;
  dm.CriarFormulario(TFCadMeioTransporte,FCadMeioTransporte);
  Self.Visible:=True;
end;

procedure TFMeiosTransportes.BtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TFMeiosTransportes.dbgmeiotransporteDblClick(Sender: TObject);
begin
  BtnAlterar.Click;
end;

procedure TFMeiosTransportes.EdtLocalizarmeiotransporteChange(Sender: TObject);
begin
  //Firebird
  dm.sql_meiotransporte.Locate('DESCRICAO_TRANSPORTE',EdtLocalizarmeiotransporte.Text,[loPartialKey,loCaseInsensitive]);
end;

procedure TFMeiosTransportes.FormCreate(Sender: TObject);
begin
  DM.sql_meiotransporte.Close;
  DM.sql_meiotransporte.Open;
end;

procedure TFMeiosTransportes.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=VK_ESCAPE then //se a tecla ESC for pressionada então
    Close;
end;

end.
