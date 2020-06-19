object FPaises: TFPaises
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Cadastro de Pa'#237'ses'
  ClientHeight = 329
  ClientWidth = 463
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
  object EdtLocalizarPaises: TEdit
    Left = 8
    Top = 59
    Width = 353
    Height = 21
    CharCase = ecUpperCase
    Color = clCream
    TabOrder = 0
    OnChange = EdtLocalizarPaisesChange
  end
  object dbgPaises: TDBGrid
    Left = 8
    Top = 87
    Width = 353
    Height = 214
    Cursor = crHandPoint
    Color = clWhite
    DataSource = DM.ds_paises
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = dbgPaisesDblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_PAIS'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'NOME_PAIS'
        Title.Caption = 'Pa'#237's'
        Visible = True
      end>
  end
  object PainelUsuarios1: TPanel
    Left = 0
    Top = 0
    Width = 463
    Height = 33
    Align = alTop
    Color = clGradientActiveCaption
    ParentBackground = False
    TabOrder = 6
    ExplicitWidth = 469
  end
  object PainelUsuarios2: TPanel
    Left = 0
    Top = 311
    Width = 463
    Height = 18
    Align = alBottom
    Color = clWhite
    ParentBackground = False
    TabOrder = 7
    ExplicitTop = 322
    ExplicitWidth = 469
  end
  object BtnIncluir: TBitBtn
    Left = 367
    Top = 87
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
    TabOrder = 2
    OnClick = BtnIncluirClick
  end
  object BtnAlterar: TBitBtn
    Left = 367
    Top = 126
    Width = 89
    Height = 33
    Cursor = crHandPoint
    Caption = 'Alterar'
    TabOrder = 3
    OnClick = BtnAlterarClick
  end
  object BtnExcluir: TBitBtn
    Left = 367
    Top = 165
    Width = 89
    Height = 33
    Cursor = crHandPoint
    Caption = 'Excluir'
    TabOrder = 4
    OnClick = BtnExcluirClick
  end
  object BtnSair: TButton
    Left = 367
    Top = 204
    Width = 89
    Height = 33
    Cursor = crHandPoint
    Caption = 'Sair'
    TabOrder = 5
    OnClick = BtnSairClick
  end
end
