object FCadmovimento: TFCadmovimento
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Compra / Venda'
  ClientHeight = 364
  ClientWidth = 574
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object P1: TPanel
    Left = 0
    Top = 0
    Width = 574
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label2: TLabel
      Left = 10
      Top = 1
      Width = 23
      Height = 13
      Caption = 'Data'
    end
    object lblClienteFornecedor: TLabel
      Left = 151
      Top = 1
      Width = 92
      Height = 13
      Caption = 'Cliente/Fornecedor'
    end
    object dtpData: TDateTimePicker
      Left = 10
      Top = 17
      Width = 97
      Height = 21
      Date = 44004.864993368060000000
      Time = 44004.864993368060000000
      TabOrder = 0
    end
    object lkCbxClienteFornecedor: TDBLookupComboBox
      Left = 151
      Top = 17
      Width = 234
      Height = 21
      KeyField = 'ID_PESSOA'
      ListField = 'NOME_PESSOA'
      ListSource = DM.ds_pessoa
      TabOrder = 1
    end
    object btnTabela: TBitBtn
      Left = 407
      Top = 13
      Width = 75
      Height = 25
      Caption = 'Tabela'
      TabOrder = 2
      OnClick = btnTabelaClick
    end
  end
  object P3: TPanel
    Left = 0
    Top = 312
    Width = 574
    Height = 52
    Align = alBottom
    BevelOuter = bvNone
    Color = clGradientActiveCaption
    ParentBackground = False
    TabOrder = 1
    object StatusBar1: TStatusBar
      Left = 0
      Top = 33
      Width = 574
      Height = 19
      Panels = <>
    end
    object btnSalvar: TBitBtn
      Left = 407
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Salvar'
      TabOrder = 1
      OnClick = btnSalvarClick
    end
    object btnCancelar: TBitBtn
      Left = 488
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 2
      OnClick = btnCancelarClick
    end
    object btnAlterar: TBitBtn
      Left = 89
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Alterar'
      TabOrder = 3
    end
    object btnIncluir: TBitBtn
      Left = 8
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Incluir'
      TabOrder = 4
      OnClick = btnIncluirClick
    end
    object btnExcluir: TBitBtn
      Left = 170
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Excluir'
      TabOrder = 5
      OnClick = btnExcluirClick
    end
  end
  object P2: TPanel
    Left = 0
    Top = 41
    Width = 574
    Height = 271
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 2
    object lblFormaPagamento: TLabel
      Left = 10
      Top = 224
      Width = 102
      Height = 13
      Caption = 'Forma de Pagamento'
    end
    object lblMeiotransporte: TLabel
      Left = 186
      Top = 224
      Width = 93
      Height = 13
      Caption = 'Meio de Transporte'
    end
    object dbgCompraVenda: TDBGrid
      Left = 0
      Top = 6
      Width = 574
      Height = 187
      BorderStyle = bsNone
      DataSource = DM.ds_IncluiritensDBG
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'ID_ITEM_MOVIMENTO'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'ID_MOVIMENTO_ITENS'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'ID_PRODUTO_ITENS'
          Title.Caption = 'C'#243'digo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOME_PRODUTO_ITENS'
          Title.Caption = 'Produto'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR_MOVIMENTO'
          Title.Caption = 'Valor'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QUANTIDADE_MOVIMENTO'
          Title.Caption = 'Qtd.'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOTAL_MOVIMENTO'
          Title.Caption = 'Total'
          Width = 90
          Visible = True
        end>
    end
    object lkCbxFormapagamento: TDBLookupComboBox
      Left = 10
      Top = 240
      Width = 154
      Height = 21
      KeyField = 'ID_FORMAPGTO'
      ListField = 'DESCRICAO_FORMAPGTO'
      ListSource = DM.ds_formaspgto
      TabOrder = 1
    end
    object lkCbxMeioTransporte: TDBLookupComboBox
      Left = 186
      Top = 240
      Width = 154
      Height = 21
      KeyField = 'ID_TRANSPORTE'
      ListField = 'DESCRICAO_TRANSPORTE'
      ListSource = DM.ds_meiotransporte
      TabOrder = 2
    end
    object pnTotal: TFlowPanel
      Left = 376
      Top = 194
      Width = 106
      Height = 24
      Hint = 'Valor Total dos Produtos'
      BevelInner = bvLowered
      BevelKind = bkSoft
      BevelOuter = bvLowered
      Color = 1571679
      ParentBackground = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      object txtTotalitens: TDBText
        Left = 2
        Top = 2
        Width = 94
        Height = 18
        Align = alCustom
        Alignment = taRightJustify
        DataField = 'Soma'
        DataSource = DM.ds_IncluiritensDBG
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object pnQtd: TFlowPanel
      Left = 217
      Top = 194
      Width = 53
      Height = 24
      Hint = 'Qtd. Total dos Produtos'
      BevelInner = bvLowered
      BevelKind = bkSoft
      BevelOuter = bvLowered
      Color = clGradientActiveCaption
      ParentBackground = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      object txtQtd: TDBText
        Left = 2
        Top = 2
        Width = 44
        Height = 18
        Align = alCustom
        Alignment = taRightJustify
        DataField = 'SomaQtd'
        DataSource = DM.ds_IncluiritensDBG
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
  object sql_ItensDelete: TFDQuery
    Connection = DM.BDConnectionFB
    Left = 504
    Top = 241
  end
end
