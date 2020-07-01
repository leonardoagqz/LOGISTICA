object FCadItens: TFCadItens
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Lan'#231'amento de Itens'
  ClientHeight = 179
  ClientWidth = 361
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object pnCadItensSup: TPanel
    Left = 0
    Top = 0
    Width = 361
    Height = 144
    Align = alClient
    TabOrder = 0
    object edtCodigo: TLabeledEdit
      Left = 16
      Top = 24
      Width = 97
      Height = 21
      EditLabel.Width = 33
      EditLabel.Height = 13
      EditLabel.Caption = 'C'#243'digo'
      TabOrder = 0
      OnKeyPress = edtCodigoKeyPress
    end
    object edtDescrição: TLabeledEdit
      Left = 119
      Top = 24
      Width = 207
      Height = 21
      EditLabel.Width = 46
      EditLabel.Height = 13
      EditLabel.Caption = 'Descri'#231#227'o'
      ReadOnly = True
      TabOrder = 1
    end
    object edtValor: TLabeledEdit
      Left = 16
      Top = 88
      Width = 89
      Height = 21
      EditLabel.Width = 24
      EditLabel.Height = 13
      EditLabel.Caption = 'Valor'
      ReadOnly = True
      TabOrder = 3
      Text = '0,00'
    end
    object edtQuantidade: TLabeledEdit
      Left = 119
      Top = 88
      Width = 74
      Height = 21
      EditLabel.Width = 56
      EditLabel.Height = 13
      EditLabel.Caption = 'Quantidade'
      TabOrder = 4
      Text = '0'
      OnChange = edtQuantidadeChange
      OnKeyPress = edtQuantidadeKeyPress
    end
    object edtTotal: TLabeledEdit
      Left = 214
      Top = 88
      Width = 83
      Height = 21
      EditLabel.Width = 24
      EditLabel.Height = 13
      EditLabel.Caption = 'Total'
      ReadOnly = True
      TabOrder = 5
      Text = '0,00'
    end
    object btnTabela: TBitBtn
      Left = 328
      Top = 24
      Width = 26
      Height = 21
      Caption = '...'
      TabOrder = 2
      OnClick = btnTabelaClick
    end
  end
  object pnCadItensInf: TPanel
    Left = 0
    Top = 144
    Width = 361
    Height = 35
    Align = alBottom
    Color = clGradientActiveCaption
    ParentBackground = False
    TabOrder = 1
    object btnSalvar: TBitBtn
      Left = 191
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Salvar'
      TabOrder = 0
      OnClick = btnSalvarClick
    end
    object btnCancelar: TBitBtn
      Left = 272
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 1
      OnClick = btnCancelarClick
    end
  end
  object sql_CadItens: TFDQuery
    Connection = DM.BDConnectionFB
    SQL.Strings = (
      'select * from produtos '
      
        'where id_produto = :id_produto and (id_pessoa_prod= :id_pessoa_p' +
        'rod or 0 = :id_pessoa_prod)')
    Left = 24
    Top = 128
    ParamData = <
      item
        Name = 'ID_PRODUTO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID_PESSOA_PROD'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sql_CadItensID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sql_CadItensNOME_PRODUTO: TStringField
      FieldName = 'NOME_PRODUTO'
      Origin = 'NOME_PRODUTO'
      Size = 60
    end
    object sql_CadItensQUANTIDADE_PRODUTO: TIntegerField
      FieldName = 'QUANTIDADE_PRODUTO'
      Origin = 'QUANTIDADE_PRODUTO'
    end
    object sql_CadItensID_PESSOA_PROD: TIntegerField
      FieldName = 'ID_PESSOA_PROD'
      Origin = 'ID_PESSOA_PROD'
      Required = True
    end
    object sql_CadItensVALOR_PRODUTO: TBCDField
      FieldName = 'VALOR_PRODUTO'
      Origin = 'VALOR_PRODUTO'
      Precision = 18
      Size = 2
    end
    object sql_CadItensTIPO_PRODUTO: TStringField
      FieldName = 'TIPO_PRODUTO'
      Origin = 'TIPO_PRODUTO'
      Size = 30
    end
  end
end
