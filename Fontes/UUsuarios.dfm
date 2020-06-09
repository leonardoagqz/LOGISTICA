object FUsuarios: TFUsuarios
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Cadastro de Usu'#225'rios'
  ClientHeight = 508
  ClientWidth = 767
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object LblLocalizarUsuarios: TLabel
    Left = 40
    Top = 52
    Width = 45
    Height = 13
    Caption = 'Localizar:'
  end
  object EdtLocalizarUsuarios: TEdit
    Left = 40
    Top = 72
    Width = 705
    Height = 21
    CharCase = ecUpperCase
    Color = clCream
    TabOrder = 0
    OnChange = EdtLocalizarUsuariosChange
  end
  object G1Grid: TDBGrid
    Left = 40
    Top = 112
    Width = 585
    Height = 313
    Cursor = crHandPoint
    Color = clWhite
    DataSource = DsUsuarios
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = G1GridDblClick
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ID_USUARIO'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'digo'
        Width = 80
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'LOGIN'
        Title.Alignment = taCenter
        Title.Caption = 'Login'
        Width = 80
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'SENHA'
        Title.Alignment = taCenter
        Title.Caption = 'Senha'
        Width = 80
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'MASTER'
        Title.Alignment = taCenter
        Title.Caption = 'Master'
        Width = 80
        Visible = True
      end>
  end
  object PainelUsuarios1: TPanel
    Left = 0
    Top = 0
    Width = 767
    Height = 33
    Align = alTop
    Color = clGradientActiveCaption
    ParentBackground = False
    TabOrder = 2
  end
  object PainelUsuarios2: TPanel
    Left = 0
    Top = 464
    Width = 767
    Height = 44
    Align = alBottom
    Color = clWhite
    ParentBackground = False
    TabOrder = 3
  end
  object BtnIncluir: TBitBtn
    Left = 656
    Top = 184
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
    TabOrder = 4
    OnClick = BtnIncluirClick
  end
  object BtnAlterar: TBitBtn
    Left = 656
    Top = 223
    Width = 89
    Height = 33
    Cursor = crHandPoint
    Caption = 'Alterar'
    TabOrder = 5
    OnClick = BtnAlterarClick
  end
  object BtnExcluir: TBitBtn
    Left = 656
    Top = 262
    Width = 89
    Height = 33
    Cursor = crHandPoint
    Caption = 'Excluir'
    TabOrder = 6
    OnClick = BtnExcluirClick
  end
  object BtnSair: TButton
    Left = 656
    Top = 301
    Width = 89
    Height = 33
    Cursor = crHandPoint
    Caption = 'Sair'
    TabOrder = 7
    OnClick = BtnSairClick
  end
  object DsUsuarios: TDataSource
    DataSet = DM.cdsUsuarios
    OnDataChange = DsUsuariosDataChange
    Left = 464
    Top = 448
  end
end