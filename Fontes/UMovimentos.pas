unit UMovimentos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls;

type
  TFMovimentos = class(TForm)
    dbgMovimentos: TDBGrid;
    PainelUsuarios1: TPanel;
    PainelUsuarios2: TPanel;
    BtnIncluir: TBitBtn;
    BtnAlterar: TBitBtn;
    BtnExcluir: TBitBtn;
    BtnSair: TButton;
    dtpInicial: TDateTimePicker;
    dtpFinal: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    btnBuscarmov: TBitBtn;
    procedure BtnSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtnIncluirClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BtnAlterarClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure dbgMovimentosDblClick(Sender: TObject);
    procedure btnBuscarmovClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMovimentos: TFMovimentos;

implementation

{$R *.dfm}

uses UDM, UCadMovimento;{units que podem ser acessadas e utilizadas}

procedure TFMovimentos.FormCreate(Sender: TObject);//ao abrir tela de produtos
begin                                            //inicie
  dtpInicial.Date:=Now;
  dtpFinal.Date:=Now;
  btnBuscarmov.Click;
   
end;

procedure TFMovimentos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if key=VK_ESCAPE then //se a tecla ESC for pressionada então
    Close;
end;

procedure TFMovimentos.dbgMovimentosDblClick(Sender: TObject);
begin
  BtnAlterar.Click;
end;

//fim

procedure TFMovimentos.BtnAlterarClick(Sender: TObject);
begin
  if not DM.sql_produto.IsEmpty then
  begin
    Self.Visible :=False;
    DM.sql_produto.Edit;
    dm.CriarFormulario(TFCadmovimento,FCadmovimento);
    Self.Visible:=True;
  end;
end;

procedure TFMovimentos.btnBuscarmovClick(Sender: TObject);
begin
  DM.sql_MovConsul.Close;
  DM.sql_MovConsul.Params[0].AsDate:=dtpInicial.Date;
  DM.sql_MovConsul.Params[1].AsDate:=dtpFinal.Date;
  DM.sql_MovConsul.Open;
end;

procedure TFMovimentos.BtnExcluirClick(Sender: TObject);
begin
  {if not dm.sql_produto.IsEmpty then
  begin
    if dm.MessageDlgDefault('Confirmar a Exclusão',mtInformation,[mbYes,mbNo],0)=mrYes  then
    //se ao informar a mensagem 'Confirmar a Exclusão' for igual a Yes então
    begin
      dm.sql_produto.Delete;
      ShowMessage('Informações Excluídas com Sucesso!');
    end;
  end;}
end;

procedure TFMovimentos.BtnIncluirClick(Sender: TObject);
begin
  //Firebird
  Self.Visible :=False;

  DM.sql_MovInclusao.Close;
 {passando o valor de -1 para o parametro id_movimento do sql_movinclusao,
  forçando o sql abrir vazio.}
  DM.sql_MovInclusao.Params[0].AsInteger := -1;
  DM.sql_MovInclusao.Open;
  DM.sql_MovInclusao.Active:=True;
  DM.sql_MovInclusao.Insert;

  DM.sql_IncluirItensDBG.Close;
  DM.sql_IncluirItensDBG.Open;
  DM.sql_IncluirItensDBG.EmptyDataSet;
  dm.CriarFormulario(TFCadmovimento,FCadmovimento);
  Self.Visible:=True;
end;

procedure TFMovimentos.BtnSairClick(Sender: TObject);
begin
  FMovimentos:=nil;
  Close;
end;

end.
