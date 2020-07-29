object FCadCaixa: TFCadCaixa
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Lan'#231'amento de Caixa'
  ClientHeight = 173
  ClientWidth = 352
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
  object Label1: TLabel
    Left = 15
    Top = 77
    Width = 50
    Height = 13
    Caption = 'Descri'#231#227'o:'
  end
  object LblTipo: TLabel
    Left = 122
    Top = 20
    Width = 24
    Height = 13
    Caption = 'Tipo:'
  end
  object LblValor: TLabel
    Left = 244
    Top = 22
    Width = 28
    Height = 13
    Caption = 'Valor:'
  end
  object Label2: TLabel
    Left = 15
    Top = 22
    Width = 27
    Height = 13
    Caption = 'Data:'
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 352
    Height = 17
    Align = alTop
    Color = clGradientActiveCaption
    ParentBackground = False
    TabOrder = 6
  end
  object Panel2: TPanel
    Left = 0
    Top = 132
    Width = 352
    Height = 41
    Align = alBottom
    Color = clWhite
    ParentBackground = False
    TabOrder = 7
  end
  object BtnCancelar: TButton
    Left = 213
    Top = 140
    Width = 75
    Height = 25
    Cursor = crHandPoint
    Caption = 'Cancelar'
    TabOrder = 5
    OnClick = BtnCancelarClick
  end
  object BtnSalvar: TButton
    Left = 54
    Top = 140
    Width = 75
    Height = 25
    Cursor = crHandPoint
    Caption = 'Salvar'
    TabOrder = 4
    OnClick = BtnSalvarClick
  end
  object CbTipo: TComboBox
    Left = 122
    Top = 39
    Width = 97
    Height = 21
    Cursor = crHandPoint
    Style = csDropDownList
    ItemIndex = 0
    TabOrder = 1
    Text = 'Receita'
    Items.Strings = (
      'Receita'
      'Despesa')
  end
  object EdtValor: TDBEdit
    Left = 244
    Top = 39
    Width = 89
    Height = 21
    DataField = 'VALOR_CAIXA'
    DataSource = DM.ds_Caixa
    TabOrder = 2
  end
  object EdtDescricao: TDBEdit
    Left = 15
    Top = 94
    Width = 194
    Height = 21
    DataField = 'DESCRICAO_CAIXA'
    DataSource = DM.ds_Caixa
    TabOrder = 3
  end
  object edtData: TMaskEdit
    Left = 11
    Top = 39
    Width = 68
    Height = 21
    EditMask = '!99/99/0000;1;_'
    MaxLength = 10
    TabOrder = 0
    Text = '  /  /    '
  end
  object sqlSaldo: TFDQuery
    Connection = DM.BDConnectionFB
    SQL.Strings = (
      'select sum(saldo_caixa)as saldo_caixa from caixa')
    Left = 280
    Top = 88
    object sqlSaldoSALDO_CAIXA: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'SALDO_CAIXA'
      Origin = 'SALDO_CAIXA'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
  end
end
