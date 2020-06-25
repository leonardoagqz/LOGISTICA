unit UCadItens;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFCadItens = class(TForm)
    pnCadItensSup: TPanel;
    pnCadItensInf: TPanel;
    btnSalvar: TBitBtn;
    btnCancelar: TBitBtn;
    edtCodigo: TLabeledEdit;
    edtDescri��o: TLabeledEdit;
    edtValor: TLabeledEdit;
    edtQuantidade: TLabeledEdit;
    edtTotal: TLabeledEdit;
    BitBtn1: TBitBtn;
    sql_CadItens: TFDQuery;
    sql_CadItensID_PRODUTO: TIntegerField;
    sql_CadItensNOME_PRODUTO: TStringField;
    sql_CadItensQUANTIDADE_PRODUTO: TIntegerField;
    sql_CadItensID_PESSOA_PROD: TIntegerField;
    sql_CadItensVALOR_PRODUTO: TBCDField;
    sql_CadItensTIPO_PRODUTO: TStringField;
    procedure edtCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure edtQuantidadeKeyPress(Sender: TObject; var Key: Char);
    procedure edtQuantidadeChange(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCadItens: TFCadItens;

implementation

uses
  UDM;

{$R *.dfm}

procedure TFCadItens.btnSalvarClick(Sender: TObject);
begin
  if edtCodigo.Text = '' then
  begin
    ShowMessage('C�digo n�o informado!');
    edtCodigo.SetFocus;
    Exit;
  end;

  if edtDescri��o.Text = '' then
  begin
    ShowMessage('Descri��o n�o informada!');
    edtDescri��o.SetFocus;
    Exit;
  end;

  if (edtValor.Text = '') or (StrToFloat(edtValor.Text) = 0) then
  begin
    ShowMessage('Valor n�o informado!');
    edtValor.SetFocus;
    Exit;
  end;

  if (edtQuantidade.Text = '') or (StrToFloat(edtQuantidade.Text) = 0) then
  begin
    ShowMessage('Quantidade n�o informada!');
    edtQuantidade.SetFocus;
    Exit;
  end;

  if (edtTotal.Text = '') or (StrToFloat(edtTotal.Text) = 0) then
  begin
    ShowMessage('Total n�o informado!');
    edtTotal.SetFocus;
    Exit;
  end;


  if DM.sql_IncluirItens.State=dsInsert then
  begin
    DM.sql_Gen_Item.Close;
    DM.sql_Gen_Item.Open;
    DM.sql_IncluirItensID_ITEM_MOVIMENTO.AsInteger := DM.sql_Gen_ItemID.AsInteger;
  end;

  DM.sql_IncluirItensID_PRODUTO_ITENS.AsInteger     := StrToInt(edtCodigo.Text);
  DM.sql_IncluirItensQUANTIDADE_MOVIMENTO.AsInteger := StrToInt(edtQuantidade.Text);
  DM.sql_IncluirItensVALOR_MOVIMENTO.AsFloat        := StrToFloat(edtValor.Text);
  DM.sql_IncluirItensTOTAL_MOVIMENTO.AsFloat        := StrToFloat(edtTotal.Text);
  DM.sql_IncluirItensNOME_PRODUTO_ITENS.AsString          := edtDescri��o.Text;
  DM.sql_IncluirItens.Post;
  Close;

end;

procedure TFCadItens.edtCodigoKeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['0'..'9',#8,#13]) then
  key:=#0;

  if Key=#13 then
  begin
    sql_CadItens.Close;
    sql_CadItens.Params[0].AsInteger := StrToInt(edtCodigo.Text);
    sql_CadItens.Open;
    if not sql_CadItens.IsEmpty then
    begin
      edtDescri��o.Text := sql_CadItensNOME_PRODUTO.AsString;
      edtValor.Text     := FloatToStr(sql_CadItensVALOR_PRODUTO.AsFloat);

    end;
  end;

end;

procedure TFCadItens.edtQuantidadeChange(Sender: TObject);
begin
  if edtQuantidade.Text <> '' then
  begin
    edtTotal.Text := FloatToStr(StrToFloat(edtValor.Text)*StrToInt(edtQuantidade.Text))
  end;
end;

procedure TFCadItens.edtQuantidadeKeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['0'..'9',#8,#13]) then
  key:=#0;
end;

end.