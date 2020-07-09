unit UCadMovimento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.ComCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, Vcl.ExtCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

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
    sql_ItensDelete: TFDQuery;
    procedure FormCreate(Sender: TObject);
    procedure btnTabelaClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
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
  DM.sql_MovInclusao.Cancel;

 //limpando a tabela de itens
  sql_ItensDelete.Close;
  sql_ItensDelete.SQL.Clear;
  sql_ItensDelete.SQL.Add('delete from itensmovimento');
  sql_ItensDelete.ExecSQL;
  sql_ItensDelete.SQL.Clear;

  Close;
end;

procedure TFCadmovimento.btnExcluirClick(Sender: TObject);
begin
  if not dm.sql_IncluirItensDBG.IsEmpty then
  begin
    if dm.MessageDlgDefault('Confirmar a Exclusão',mtInformation,[mbYes,mbNo],0)=mrYes  then
    //se ao informar a mensagem 'Confirmar a Exclusão' for igual a Yes então
    begin
      dm.sql_IncluirItensDBG.Delete;
      ShowMessage('Informações Excluídas com Sucesso!');

      //deletando o mesmo item na itensmovimentoarm
      sql_ItensDelete.Close;
      sql_ItensDelete.SQL.Clear;
      sql_ItensDelete.SQL.Add('delete from itensmovimentoarm');
      sql_ItensDelete.SQL.Add('where id_item_movimento = :iditemmovimento ');
      sql_ItensDelete.ParamByName('iditemmovimento').AsInteger := DM.sql_Gen_ItemID.AsInteger;
      sql_ItensDelete.ExecSQL;
      sql_ItensDelete.SQL.Clear;
      dm.sql_IncluirItensDBG.close;
      dm.sql_IncluirItensDBG.open;



      {DM.sql_ItensID_MOVIMENTO_ITENS.AsInteger
      DM.sql_ItensID_PRODUTO_ITENS.AsInteger
      enDM.sql_ItensQUANTIDADE_MOVIMENTO.AsIntegerd;
      DM.sql_ItensVALOR_MOVIMENTO.AsFloat
      DM.sql_ItensTOTAL_MOVIMENTO.AsFloat }
    end;
  end;
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


  DM.sql_itensarm.Active:=True;
  DM.sql_itensarm.EmptyDataSet;
  DM.sql_itensarm.Insert;

  DM.CriarFormulario(TFCadItens,FCadItens);
end;

procedure TFCadmovimento.btnSalvarClick(Sender: TObject);
begin
  if dtpData.Date = 0 then
  begin
    ShowMessage('Informe a Data');
    dtpData.SetFocus;
    Exit;
  end;

   if lkCbxClienteFornecedor.Text = '' then
  begin
    ShowMessage('Informe o Fornecedor');
    lkCbxClienteFornecedor.SetFocus;
    Exit;
  end;

   if lkCbxFormapagamento.Text = '' then
  begin
    ShowMessage('Informe a Forma de Pagamento');
    lkCbxFormapagamento.SetFocus;
    Exit;
  end;

   if lkCbxMeioTransporte.Text = '' then
  begin
    ShowMessage('Informe o Meio de Transporte');
    lkCbxMeioTransporte.SetFocus;
    Exit;
  end;

  if DM.sql_MovInclusao.State=dsInsert then
  begin
    DM.sql_Gen__MovConsul.Close;
    DM.sql_Gen__MovConsul.Open;
    DM.sql_MovInclusaoID_MOVIMENTO.AsInteger := DM.sql_Gen__MovConsulID.AsInteger;
    DM.sql_MovInclusaoID_PESSOA_MOVIMENTO.AsInteger := DM.sql_pessoaID_PESSOA.AsInteger;
    if Self.Caption = 'Compra' then
    begin
      DM.sql_MovInclusaoTIPO_MOVIMENTO.AsString := 'C';
    end
    else
      DM.sql_MovInclusaoTIPO_MOVIMENTO.AsString := 'V';

    DM.sql_MovInclusaoDATA_MOVIMENTO.AsDateTime := dtpData.Date;
    dm.sql_MovInclusaoTOTAL_MOVIMENTO.AsFloat   := txtTotalitens.Field.Value;
    DM.sql_MovInclusaoID_PGTO_MOVIMENTO.AsInteger := dm.sql_formaspgtoID_FORMAPGTO.AsInteger;
    DM.sql_MovInclusaoID_TRANSPORTE_MOVIMENTO.AsInteger := dm.sql_meiotransporteID_TRANSPORTE.AsInteger;
    DM.sql_MovInclusao.Post;

    DM.sql_IncluirItensDBG.First;
    while not DM.sql_IncluirItensDBG.Eof do
    begin
      //verificando se o produto já esta no banco de dados
      DM.sql_Itens.Close;
      DM.sql_Itens.Params[0].AsInteger := DM.sql_IncluirItensDBGID_ITEM_MOVIMENTO.AsInteger;
      DM.sql_Itens.Open;
      //se não tiver vou acrescentar
      if DM.sql_Itens.IsEmpty then
      begin
        DM.sql_Itens.Append;
        {DM.sql_Itens.Close;
        DM.sql_Itens.Open;}
      end
      else
      DM.sql_Itens.Edit;
      DM.sql_ItensID_ITEM_MOVIMENTO.AsInteger    :=DM.sql_Gen_ItemID.AsInteger;
      DM.sql_ItensID_MOVIMENTO_ITENS.AsInteger   := DM.sql_MovInclusaoID_MOVIMENTO.AsInteger;
      DM.sql_ItensID_PRODUTO_ITENS.AsInteger     := DM.sql_IncluirItensID_PRODUTO_ITENS.AsInteger;
      DM.sql_ItensQUANTIDADE_MOVIMENTO.AsInteger := DM.sql_IncluirItensQUANTIDADE_MOVIMENTO.AsInteger;
      DM.sql_ItensVALOR_MOVIMENTO.AsFloat        := DM.sql_IncluirItensVALOR_MOVIMENTO.AsFloat;
      DM.sql_ItensTOTAL_MOVIMENTO.AsFloat        := DM.sql_IncluirItensTOTAL_MOVIMENTO.AsFloat;
      //DM.sql_Itens.Post;

      //Salvando na tabela itens bkp (sql_itensarm)
      DM.sql_itensarm.Close;
      DM.sql_Itensarm.Params[0].AsInteger := DM.sql_IncluirItensDBGID_ITEM_MOVIMENTO.AsInteger;
      DM.sql_itensarm.Open;
      //DM.sql_itensarm.Append;
      DM.sql_itensarm.Edit;
      DM.sql_ItensarmID_MOVIMENTO_ITENS.AsInteger   := DM.sql_MovInclusaoID_MOVIMENTO.AsInteger;
      DM.sql_itensarm.Post;

      DM.sql_IncluirItensDBG.Next;

    end;
    ShowMessage('Informações Armazenadas com Sucesso!');
    Close;
    DM.sql_MovConsul.Close;
    DM.sql_MovConsul.Open;

    sql_ItensDelete.Close;
      sql_ItensDelete.SQL.Clear;
      sql_ItensDelete.SQL.Add('delete from itensmovimentoarm');
      sql_ItensDelete.SQL.Add('where id_item_movimento = :iditemmovimento ');
      sql_ItensDelete.ParamByName('iditemmovimento').AsInteger := DM.sql_Gen_ItemID.AsInteger;
      sql_ItensDelete.ExecSQL;
      sql_ItensDelete.SQL.Clear;
      dm.sql_IncluirItensDBG.close;
      dm.sql_IncluirItensDBG.open;

  end;

  if DM.sql_MovInclusao.State=dsEdit then
  begin

    //DM.sql_MovInclusaoID_MOVIMENTO.AsInteger := DM.sql_Gen__MovConsulID.AsInteger;
    DM.sql_MovInclusaoID_PESSOA_MOVIMENTO.AsInteger := DM.sql_pessoaID_PESSOA.AsInteger;
    if Self.Caption = 'Compra' then
    begin
      DM.sql_MovInclusaoTIPO_MOVIMENTO.AsString := 'C';
    end
    else
      DM.sql_MovInclusaoTIPO_MOVIMENTO.AsString := 'V';

    DM.sql_MovInclusaoDATA_MOVIMENTO.AsDateTime := dtpData.Date;
    dm.sql_MovInclusaoTOTAL_MOVIMENTO.AsFloat   := txtTotalitens.Field.Value;
    DM.sql_MovInclusaoID_PGTO_MOVIMENTO.AsInteger := dm.sql_formaspgtoID_FORMAPGTO.AsInteger;
    DM.sql_MovInclusaoID_TRANSPORTE_MOVIMENTO.AsInteger := dm.sql_meiotransporteID_TRANSPORTE.AsInteger;
    DM.sql_MovInclusao.Post;

    DM.sql_IncluirItensDBG.First;
    while not DM.sql_IncluirItensDBG.Eof do
    begin
      //verificando se o produto já esta no banco de dados
      DM.sql_Itens.Close;
      DM.sql_Itens.Params[0].AsInteger := DM.sql_IncluirItensDBGID_ITEM_MOVIMENTO.AsInteger;
      DM.sql_Itens.Open;
      //se não tiver vou acrescentar
      if DM.sql_Itens.IsEmpty then
      begin
        DM.sql_Itens.Append;
        {DM.sql_Itens.Close;
        DM.sql_Itens.Open;}
      end
     else
      DM.sql_Itens.Edit;
      DM.sql_ItensID_ITEM_MOVIMENTO.AsInteger    :=DM.sql_Gen_ItemID.AsInteger;
      DM.sql_ItensID_MOVIMENTO_ITENS.AsInteger   := DM.sql_MovInclusaoID_MOVIMENTO.AsInteger;
      DM.sql_ItensID_PRODUTO_ITENS.AsInteger     := DM.sql_IncluirItensID_PRODUTO_ITENS.AsInteger;
      DM.sql_ItensQUANTIDADE_MOVIMENTO.AsInteger := DM.sql_IncluirItensQUANTIDADE_MOVIMENTO.AsInteger;
      DM.sql_ItensVALOR_MOVIMENTO.AsFloat        := DM.sql_IncluirItensVALOR_MOVIMENTO.AsFloat;
      DM.sql_ItensTOTAL_MOVIMENTO.AsFloat        := DM.sql_IncluirItensTOTAL_MOVIMENTO.AsFloat;
      //DM.sql_Itens.Post;

      //Salvando na tabela itens bkp (sql_itensarm)
      DM.sql_itensarm.Close;
      DM.sql_Itensarm.Params[0].AsInteger := DM.sql_IncluirItensDBGID_ITEM_MOVIMENTO.AsInteger;
      DM.sql_itensarm.Open;
      //DM.sql_itensarm.Append;
      DM.sql_itensarm.Edit;
      DM.sql_ItensarmID_MOVIMENTO_ITENS.AsInteger   := DM.sql_MovInclusaoID_MOVIMENTO.AsInteger;
      DM.sql_itensarm.Post;

      DM.sql_IncluirItensDBG.Next;

    end;
    ShowMessage('Informações Armazenadas com Sucesso!');
    Close;
    DM.sql_MovConsul.Close;
    DM.sql_MovConsul.Open;

    //limpando a tabela de itens
    sql_ItensDelete.Close;
    sql_ItensDelete.SQL.Clear;
    sql_ItensDelete.SQL.Add('delete from itensmovimento');
    sql_ItensDelete.ExecSQL;
    sql_ItensDelete.SQL.Clear;

  end;


end;

procedure TFCadmovimento.btnTabelaClick(Sender: TObject);
begin
  DM.CriarFormulario(TFPessoas,FPessoas);
end;

procedure TFCadmovimento.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //limpando a tabela de itens
  sql_ItensDelete.Close;
  sql_ItensDelete.SQL.Clear;
  sql_ItensDelete.SQL.Add('delete from itensmovimento');
  sql_ItensDelete.ExecSQL;
  sql_ItensDelete.SQL.Clear;
  FCadmovimento:= nil;
end;

procedure TFCadmovimento.FormCreate(Sender: TObject);
begin

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


  DM.sql_Itens.Close;
  DM.sql_Itens.open;
  if DM.sql_MovInclusao.State = dsInsert then
  begin
    dtpData.Date:=Now;
  end
  else
  begin
     dtpData.Date:=DM.sql_MovInclusaoDATA_MOVIMENTO.AsDateTime;
     lkCbxClienteFornecedor.KeyValue := DM.sql_MovInclusaoID_PESSOA_MOVIMENTO.AsInteger;
     lkCbxFormapagamento.KeyValue    := DM.sql_MovInclusaoID_PGTO_MOVIMENTO.AsInteger;
     lkCbxMeioTransporte.KeyValue    := DM.sql_MovInclusaoID_TRANSPORTE_MOVIMENTO.AsInteger;

     DM.sql_sItensArm.Close;
     dm.sql_sItensArm.Params[0].AsInteger := DM.sql_MovInclusaoID_MOVIMENTO.AsInteger;
     DM.sql_sItensArm.Open;
     while not dm.sql_sItensArm.Eof do
     begin
       DM.sql_IncluirItensDBG.Append;
       DM.sql_IncluirItensDBGID_ITEM_MOVIMENTO.AsInteger  :=  DM.sql_sItensArmID_ITEM_MOVIMENTO.AsInteger;
       DM.sql_IncluirItensDBGID_MOVIMENTO_ITENS.AsInteger :=  DM.sql_sItensArmID_MOVIMENTO_ITENS.AsInteger;
       DM.sql_IncluirItensDBGID_PRODUTO_ITENS.AsInteger   :=  DM.sql_sItensArmID_PRODUTO_ITENS.AsInteger;
       DM.sql_IncluirItensDBGQUANTIDADE_MOVIMENTO.AsInteger:= DM.sql_sItensArmQUANTIDADE_MOVIMENTO.AsInteger;
       DM.sql_IncluirItensDBGVALOR_MOVIMENTO.AsFloat      :=  DM.sql_sItensArmVALOR_MOVIMENTO.AsFloat;
       DM.sql_IncluirItensDBGTOTAL_MOVIMENTO.AsFloat      :=  DM.sql_sItensArmTOTAL_MOVIMENTO.AsFloat;
       DM.sql_IncluirItensDBGNOME_PRODUTO_ITENS.AsString  :=  DM.sql_sItensArmNOME_PRODUTO_ITENS.AsString;
       DM.sql_IncluirItensDBG.Post;
       DM.sql_sItensArm.Next;
     end;
      DM.sql_IncluirItensDBG.Close;
      DM.sql_IncluirItensDBG.open;

  end;


end;

end.
