object FProdutos: TFProdutos
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Tabela de Produtos'
  ClientHeight = 360
  ClientWidth = 595
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
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object LblLocalizarUsuarios: TLabel
    Left = 8
    Top = 39
    Width = 45
    Height = 13
    Caption = 'Localizar:'
  end
  object lblFornecedor: TLabel
    Left = 327
    Top = 39
    Width = 55
    Height = 13
    Caption = 'Fornecedor'
  end
  object EdtLocalizarProdutos: TEdit
    Left = 8
    Top = 58
    Width = 313
    Height = 21
    CharCase = ecUpperCase
    Color = clCream
    TabOrder = 0
    OnChange = EdtLocalizarProdutosChange
    OnKeyPress = EdtLocalizarProdutosKeyPress
  end
  object G1Grid: TDBGrid
    Left = 8
    Top = 88
    Width = 489
    Height = 246
    Cursor = crHandPoint
    Color = clWhite
    DataSource = DM.ds_produto
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = G1GridDblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_PRODUTO'
        Title.Caption = 'ID'
        Width = 45
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_PRODUTO'
        Title.Caption = 'Produto'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QUANTIDADE_PRODUTO'
        Title.Caption = 'Quantidade'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID_PESSOA_PROD'
        Title.Caption = 'Id Fornec'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR_PRODUTO'
        Title.Caption = '$ Valor'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TIPO_PRODUTO'
        Title.Caption = 'Tipo'
        Width = 96
        Visible = True
      end>
  end
  object PainelUsuarios1: TPanel
    Left = 0
    Top = 0
    Width = 595
    Height = 33
    Align = alTop
    Color = clGradientActiveCaption
    ParentBackground = False
    TabOrder = 6
  end
  object PainelUsuarios2: TPanel
    Left = 0
    Top = 342
    Width = 595
    Height = 18
    Align = alBottom
    Color = clWhite
    ParentBackground = False
    TabOrder = 7
  end
  object BtnIncluir: TBitBtn
    Left = 503
    Top = 96
    Width = 89
    Height = 33
    Cursor = crHandPoint
    Caption = 'Incluir'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = BtnIncluirClick
  end
  object BtnAlterar: TBitBtn
    Left = 503
    Top = 135
    Width = 89
    Height = 33
    Cursor = crHandPoint
    Caption = 'Alterar'
    TabOrder = 2
    OnClick = BtnAlterarClick
  end
  object BtnExcluir: TBitBtn
    Left = 503
    Top = 174
    Width = 89
    Height = 33
    Cursor = crHandPoint
    Caption = 'Excluir'
    TabOrder = 3
    OnClick = BtnExcluirClick
  end
  object BtnSair: TButton
    Left = 503
    Top = 213
    Width = 89
    Height = 33
    Cursor = crHandPoint
    Caption = 'Sair'
    TabOrder = 4
    OnClick = BtnSairClick
  end
  object lkCbxFornecedor: TDBLookupComboBox
    Left = 327
    Top = 58
    Width = 170
    Height = 21
    KeyField = 'ID_PESSOA'
    ListField = 'NOME_PESSOA'
    ListSource = DM.ds_pessoa2
    TabOrder = 8
    OnClick = lkCbxFornecedorClick
  end
  object btnAdicionar: TBitBtn
    Left = 503
    Top = 309
    Width = 89
    Height = 25
    Caption = 'Adicionar'
    ModalResult = 1
    TabOrder = 9
    Visible = False
    OnClick = btnAdicionarClick
  end
end
