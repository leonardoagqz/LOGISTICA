object FCaixa: TFCaixa
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Caixa - Controle de Receitas e Despesas'
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
  object Label1: TLabel
    Left = 128
    Top = 35
    Width = 48
    Height = 13
    Caption = 'Data Final'
  end
  object Label2: TLabel
    Left = 8
    Top = 35
    Width = 51
    Height = 13
    Caption = 'Data inicial'
  end
  object G1Grid: TDBGrid
    Left = 8
    Top = 88
    Width = 489
    Height = 246
    Cursor = crHandPoint
    Color = clWhite
    DataSource = DM.ds_Caixa
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = G1GridDblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_CAIXA'
        Title.Caption = 'N'#176
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TIPO_CAIXA'
        Title.Caption = 'Tipo'
        Width = 35
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA_CAIXA'
        Title.Caption = 'Data'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO_CAIXA'
        Title.Caption = 'Descri'#231#227'o'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR_CAIXA'
        Title.Caption = 'Valor'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SALDO_CAIXA'
        Title.Caption = 'Saldo'
        Width = 60
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
    TabOrder = 5
  end
  object PainelUsuarios2: TPanel
    Left = 0
    Top = 342
    Width = 595
    Height = 18
    Align = alBottom
    Color = clWhite
    ParentBackground = False
    TabOrder = 6
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
    TabOrder = 0
    OnClick = BtnIncluirClick
  end
  object BtnAlterar: TBitBtn
    Left = 503
    Top = 135
    Width = 89
    Height = 33
    Cursor = crHandPoint
    Caption = 'Alterar'
    TabOrder = 1
    OnClick = BtnAlterarClick
  end
  object BtnExcluir: TBitBtn
    Left = 503
    Top = 174
    Width = 89
    Height = 33
    Cursor = crHandPoint
    Caption = 'Excluir'
    TabOrder = 2
    OnClick = BtnExcluirClick
  end
  object BtnSair: TButton
    Left = 503
    Top = 213
    Width = 89
    Height = 33
    Cursor = crHandPoint
    Caption = 'Sair'
    TabOrder = 3
    OnClick = BtnSairClick
  end
  object btnAdicionar: TBitBtn
    Left = 503
    Top = 309
    Width = 89
    Height = 25
    Caption = 'Adicionar'
    ModalResult = 1
    TabOrder = 7
    Visible = False
  end
  object dtpInicial: TDateTimePicker
    Left = 8
    Top = 51
    Width = 97
    Height = 21
    Date = 44004.864993368060000000
    Time = 44004.864993368060000000
    TabOrder = 8
  end
  object dtpFinal: TDateTimePicker
    Left = 128
    Top = 51
    Width = 89
    Height = 21
    Date = 44004.864993368060000000
    Time = 44004.864993368060000000
    TabOrder = 9
  end
  object btnBuscarmov: TBitBtn
    Left = 240
    Top = 51
    Width = 75
    Height = 21
    Caption = 'Buscar'
    TabOrder = 10
    OnClick = btnBuscarmovClick
  end
end
