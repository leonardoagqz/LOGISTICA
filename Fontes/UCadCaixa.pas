unit UCadCaixa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.Bind.EngExt, Vcl.Bind.DBEngExt,
  System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.Components,
  Data.Bind.DBScope, Data.DB, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFCadCaixa = class(TForm)
    Label1: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    BtnCancelar: TButton;
    BtnSalvar: TButton;
    CbTipo: TComboBox;
    LblTipo: TLabel;
    LblValor: TLabel;
    EdtValor: TDBEdit;
    EdtDescricao: TDBEdit;
    Label2: TLabel;
    sqlSaldo: TFDQuery;
    sqlSaldoSALDO_CAIXA: TBCDField;
    edtData: TMaskEdit;
    procedure BtnCancelarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BtnSalvarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCadCaixa: TFCadCaixa;

implementation

{$R *.dfm}

uses
UDM;

procedure TFCadCaixa.BtnCancelarClick(Sender: TObject);
begin
    {dm.cdsProdutos.Cancel;
    Close;}

    DM.sql_Caixa.Cancel;
    Close;
end;

procedure TFCadCaixa.BtnSalvarClick(Sender: TObject);
begin
  if EdtData.Text = '' then
  begin
    ShowMessage('Data não Informado!');
    EdtData.SetFocus;
    Exit
  end;



  if DM.sql_CaixaVALOR_CAIXA.AsFloat = 0 then
  begin
    ShowMessage('Valor não Informada!');
    EdtValor.SetFocus;
    Exit
  end;

  if DM.sql_CaixaDESCRICAO_CAIXA.AsString = '' then
  begin
    ShowMessage('Descrição não Informada!');
    EdtDescricao.SetFocus;
    Exit
  end;

  case CbTipo.ItemIndex of
    0: DM.sql_CaixaTIPO_CAIXA.AsString :='R';
    1: DM.sql_CaixaTIPO_CAIXA.AsString :='D';

  end;

  if dm.sql_Caixa.State=dsInsert then
   begin
      sqlSaldo.Close;
      sqlSaldo.Open;
      if dm.sql_CaixaTIPO_CAIXA.AsString = 'R' then
      begin
          DM.sql_CaixaSALDO_CAIXA.AsFloat:=sqlSaldoSALDO_CAIXA.AsFloat+dm.sql_CaixaVALOR_CAIXA.AsFloat;
      end
      else
       DM.sql_CaixaSALDO_CAIXA.AsFloat:=sqlSaldoSALDO_CAIXA.AsFloat-dm.sql_CaixaVALOR_CAIXA.AsFloat;


      begin
        dm.sql_Gen_caixa.Close;
        DM.sql_Gen_caixa.Open;
        DM.sql_CaixaID_CAIXA.AsInteger :=DM.sql_Gen_caixaID.Value;
        dm.sql_CaixaDATA_CAIXA.AsString:= edtData.Text;
        dm.sql_CaixaDESCRICAO_CAIXA.AsString:=EdtDescricao.Text;
        DM.sql_CaixaVALOR_CAIXA.AsFloat := StrToFloat(EdtValor.Text);

        case CbTipo.ItemIndex of
           0: DM.sql_CaixaTIPO_CAIXA.AsString := 'R';
           1: DM.sql_CaixaTIPO_CAIXA.AsString := 'D';

        end;
        dm.sql_Caixa.Post;
        ShowMessage('Informações Armazenadas com sucesso!');
        dm.sql_Caixa.Refresh;
        Close;
      end;
      {else
      begin
        dm.sql_Gen_produto.Close;
        DM.sql_Gen_produto.Open;
        DM.sql_produtoID_PRODUTO.AsInteger :=DM.sql_Gen_produtoID.Value;
        dm.sql_produtoNOME_PRODUTO.AsString:= EdtNome.Text;
        dm.sql_produtoQUANTIDADE_PRODUTO.AsInteger:=StrToInt(EdtQtd.Text);
        DM.sql_produtoVALOR_PRODUTO.AsFloat := StrToFloat(EdtValor.Text);
        //DM.sql_produtoID_PESSOA_PROD.AsInteger := DM.sql_pessoaID_PESSOA.AsInteger;
        case CbTipo.ItemIndex of
           0: DM.sql_produtoTIPO_PRODUTO.AsString := 'Compra';
           1: DM.sql_produtoTIPO_PRODUTO.AsString := 'Venda';
           2: DM.sql_produtoTIPO_PRODUTO.AsString := 'Todos';
        end;
        dm.sql_produto.Post;
        ShowMessage('Informações Armazenadas com sucesso!');
        dm.sql_produto.Refresh;
        Close;
      end;}
  end;

  if dm.sql_Caixa.State=dsEdit then
  begin
    DM.sql_CaixaID_CAIXA.AsInteger :=DM.sql_Gen_caixaID.Value;
        dm.sql_CaixaDATA_CAIXA.AsString:= edtData.Text;
        dm.sql_CaixaDESCRICAO_CAIXA.AsString:=EdtDescricao.Text;
        DM.sql_CaixaVALOR_CAIXA.AsFloat := StrToFloat(EdtValor.Text);

        case CbTipo.ItemIndex of
           0: DM.sql_CaixaTIPO_CAIXA.AsString := 'R';
           1: DM.sql_CaixaTIPO_CAIXA.AsString := 'D';

        end;
        dm.sql_Caixa.Post;
        ShowMessage('Informações Armazenadas com sucesso!');
        dm.sql_Caixa.Refresh;
        Close;
  end;
end;

procedure TFCadCaixa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DM.sql_Caixa.State in [dsInsert,dsEdit] then
  DM.sql_Caixa.Cancel;
end;

procedure TFCadCaixa.FormCreate(Sender: TObject);
begin

  if DM.sql_CaixaTIPO_CAIXA.AsString = 'R' then
  begin
  CbTipo.ItemIndex :=0;
  end
  else
  CbTipo.ItemIndex :=1;

  edtData.Text := DateToStr(now );

end;

procedure TFCadCaixa.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if key=VK_ESCAPE then                                                 //se a tecla ESC for pressionada então
    BtnCancelar.Click;
end;

end.
