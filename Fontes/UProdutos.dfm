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
    Left = 281
    Top = 39
    Width = 55
    Height = 13
    Caption = 'Fornecedor'
  end
  object SpeedButton1: TSpeedButton
    Left = 541
    Top = 58
    Width = 23
    Height = 21
    Glyph.Data = {
      A2070000424DA207000000000000360000002800000019000000190000000100
      1800000000006C070000232E0000232E00000000000000000001FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFDFDFDFE
      FEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFF
      FFFFFFFFFFFFFFFFFFFFFEFEFEFDFDFDFDFDFDFCFCFCFBFBFBFBFBFBFAFAFAFA
      FAFAF9F9F9F8F8F8F7F7F7F7F7F7F7F7F7F4F4F5F6F5F5F8F8F7F5F5F5FAFAFA
      FEFEFEFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFDFDFDFBFBFBFA
      FAFAF8F8F8F5F5F5F2F2F2F0F0F0EDEDEDEBEBEBE9E9E9E7E7E7E3E3E4EFECE9
      D0D8E1D0D8E1F5F2EFF8F8F8FDFDFDFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFF
      FFFFFEFEFEFDFDFDFDFDFDFCFCFCFBFBFBFBFBFBFAFAFAFAFAFAF9F9F9F8F8F8
      F7F7F7F6F7F7FAF9F8DEE4EC477DBD5587C3E2E7ECFBFAFAFEFEFEFFFFFFFFFF
      FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F3F5578BC63C76B93677C39FB8
      D4FFFFFFFDFDFDFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCFFFFFFE5E7EA467C
      BB3976BB3B7AC27AA0CAF7F8F8FEFEFEFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFEFE
      FEFFFFFFE6E9EC4F84C33C78BE3B7AC2789FCBFAFAFBFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFFFFFFFFFF
      FFFFFFFFFEFEFEFDFDFEFFFFFFE7E9EC4C83C13A77BD3C79C27A9FCBFAFAFBFF
      FFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFEFE
      FEFFFFFFFFFFFFF5F5F5F0F0F0FBFBFBFFFFFFFFFFFFFBFBFB5589C53C78BE3C
      7AC27A9FCBFBFBFBFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFD9D9D9BEBEBEBFBFBFC3C3C3BEBEBEC0C0C0F1
      F1F1C6C7CA4069983777C07A9FCBFAFAFBFFFFFFFDFEFEFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFEFEFEFDFDFDC0C0C0CFCFCFDCDCDCE4
      E4E4E5E5E5E2E2E2DEDEDEC1C0C05B6875626C78CCD2D9FCFDFDFFFFFFFEFEFE
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFEFEFEFFFFFFCD
      CDCDD4D4D4E0E0E0F6F6F6FBFBFBF9F9F9F6F6F6EAEAEAE4E4E4B7B9BCD5D6D6
      FFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FF00FEFEFEFFFFFFF4F4F4C0C0C0DDDDDDFAFAFAF9F9F9F6F6F6F4F4F4F2F2F2
      F4F4F4E8E8E8E1E1E0C5C5C5FDFDFDFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFF00FDFDFDFFFFFFD8D8D8CECECEECECECFBFBFB
      F6F6F6F5F5F5F3F3F3F1F1F1EFEFEFEEEEEEE7E7E7C0C0C0F9F9F9FFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FDFDFDFFFFFF
      CFCFCFD4D4D4EFEFEFF8F8F8F5F5F5F3F3F3F1F1F1EFEFEFEDEDEDECECECE8E8
      E8C8C8C8EFEFEFFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFF00FCFCFCFFFFFFD2D2D2D3D3D3ECECECF6F6F6F2F2F2F1F1F1EFEF
      EFEDEDEDEBEBEBEAEAEAE8E8E8C5C5C5F4F4F4FFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FDFDFDFFFFFFE9E9E9C8C8C8E4E4
      E4F5F5F5F0F0F0EFEFEFEDEDEDEBEBEBEAEAEAE6E6E6E7E7E7BDBDBDFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFF
      FFFFFFFFFFFFFFC0C0C0E1E1E1E6E6E6F0F0F0EDEDEDEBEBEBE9E9E9E6E6E6E6
      E6E6D5D5D5DADADAFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFF1F1F1BBBBBBE3E3E3E6E6E6E8
      E8E8E8E8E8E6E6E6E8E8E8DCDCDCC0C0C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFEFEFEFF
      FFFFF0F0F0BFBFBFCACACAD9D9D9DDDDDDD7D7D7C3C3C3CCCCCCFEFEFEFEFEFE
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FF00FFFFFFFFFFFFFFFFFFFEFEFEFFFFFFFFFFFFE9E9E9D3D3D3CFCFCFD9D9D9
      F5F5F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFE
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFCFCFCFCFCFCFCFCFCFEFEFEFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFF00}
    OnClick = SpeedButton1Click
  end
  object EdtLocalizarProdutos: TEdit
    Left = 8
    Top = 58
    Width = 265
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
    Left = 281
    Top = 58
    Width = 162
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
  object cbxCompravenda: TComboBox
    Left = 457
    Top = 58
    Width = 74
    Height = 21
    TabOrder = 10
    Text = 'cbxCompravenda'
    Items.Strings = (
      'Compra'
      'Venda')
  end
end
