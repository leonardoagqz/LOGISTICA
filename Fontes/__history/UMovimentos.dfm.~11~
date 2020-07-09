object FMovimentos: TFMovimentos
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Consulta de Movimentos'
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
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 140
    Top = 39
    Width = 48
    Height = 13
    Caption = 'Data Final'
  end
  object Label2: TLabel
    Left = 20
    Top = 39
    Width = 51
    Height = 13
    Caption = 'Data inicial'
  end
  object dbgMovimentos: TDBGrid
    Left = 8
    Top = 90
    Width = 489
    Height = 246
    Cursor = crHandPoint
    Color = clWhite
    DataSource = DM.ds_MovConsul
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = dbgMovimentosDblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_MOVIMENTO'
        Title.Caption = 'Pedido N'#176
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TIPO_MOVIMENTO'
        Title.Caption = 'Tipo'
        Width = 42
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA_MOVIMENTO'
        Title.Caption = 'Data'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TOTAL_MOVIMENTO'
        Title.Caption = 'Total'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FormaPagamento'
        Title.Caption = 'F. pgto'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MeiosTransportes'
        Title.Caption = 'Meio Transporte'
        Width = 120
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
  object dtpInicial: TDateTimePicker
    Left = 20
    Top = 55
    Width = 97
    Height = 21
    Date = 44004.864993368060000000
    Time = 44004.864993368060000000
    TabOrder = 7
  end
  object dtpFinal: TDateTimePicker
    Left = 140
    Top = 55
    Width = 89
    Height = 21
    Date = 44004.864993368060000000
    Time = 44004.864993368060000000
    TabOrder = 8
  end
  object btnBuscarmov: TBitBtn
    Left = 252
    Top = 55
    Width = 75
    Height = 21
    Caption = 'Buscar'
    TabOrder = 9
    OnClick = btnBuscarmovClick
  end
end
