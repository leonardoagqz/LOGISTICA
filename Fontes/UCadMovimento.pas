unit UCadMovimento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.ComCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, Vcl.ExtCtrls;

type
  TFCadmovimento = class(TForm)
    P1: TPanel;
    P3: TPanel;
    P2: TPanel;
    StatusBar1: TStatusBar;
    btnSalvar: TBitBtn;
    btnCancelar: TBitBtn;
    dbgCompraVenda: TDBGrid;
    btnExcluir: TBitBtn;
    btnAlterar: TBitBtn;
    btnIncluir: TBitBtn;
    dtpData: TDateTimePicker;
    Label2: TLabel;
    lkCbxClienteFornecedor: TDBLookupComboBox;
    lblClienteFornecedor: TLabel;
    btnTabela: TBitBtn;
    lkCbxFormapagamento: TDBLookupComboBox;
    lblFormaPagamento: TLabel;
    lkCbxMeioTransporte: TDBLookupComboBox;
    lblMeiotransporte: TLabel;
    txtTotalitens: TDBText;
    pnTotal: TFlowPanel;
    pnQtd: TFlowPanel;
    txtQtd: TDBText;
    procedure FormCreate(Sender: TObject);
    procedure btnTabelaClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCadmovimento: TFCadmovimento;

implementation

uses
  UDM, UPessoas, UCadItens;

{$R *.dfm}

procedure TFCadmovimento.btnCancelarClick(Sender: TObject);
begin
  FCadmovimento:=nil;
  Close;
end;

procedure TFCadmovimento.btnIncluirClick(Sender: TObject);
begin
  if lkCbxClienteFornecedor.Text = '' then
  if Self.Caption='Compra' then
  begin
    ShowMessage('informe o Fornecedor');
    lkCbxClienteFornecedor.SetFocus;
    Exit;
  end;

  DM.sql_IncluirItens.Active:=True;
  DM.sql_IncluirItens.EmptyDataSet;
  DM.sql_IncluirItens.Insert;
  DM.CriarFormulario(TFCadItens,FCadItens);
end;

procedure TFCadmovimento.btnTabelaClick(Sender: TObject);
begin
  DM.CriarFormulario(TFPessoas,FPessoas);
end;

procedure TFCadmovimento.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FCadmovimento:= nil;
  
end;

procedure TFCadmovimento.FormCreate(Sender: TObject);
begin
  dtpData.Date:=Now;
  DM.sql_IncluirItens.close;

  dm.sql_pessoa.Close;

  if dm.sql_MovConsul.Params[2].AsString = 'C'  then
  begin
    Self.Caption:='Compra';
    lblClienteFornecedor.Caption:='Fornecedor';
     dm.sql_pessoa.Params.ParamByName('TIPO_PESSOA').AsString:='F';
  end
  else
  begin
    Self.Caption:= 'Venda';
    lblClienteFornecedor.Caption:= 'Cliente';
    dm.sql_pessoa.Params.ParamByName('TIPO_PESSOA').AsString:='C';
  end;
  DM.sql_pessoa.Params.ParamByName('NOME_PESSOA').AsString:='%';
  DM.sql_pessoa.Open;

  if not DM.sql_formaspgto.Active then
  begin
    DM.sql_formaspgto.Close;
    DM.sql_formaspgto.Open;
  end;

   if not DM.sql_meiotransporte.Active then
  begin
    DM.sql_meiotransporte.Close;
    DM.sql_meiotransporte.Open;
  end;

   if not DM.sql_pessoa.Active then
  begin
    DM.sql_pessoa.Close;
    DM.sql_pessoa.Open;
  end;

end;

end.
