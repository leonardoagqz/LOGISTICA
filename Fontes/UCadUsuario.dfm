object FCadUsuarios: TFCadUsuarios
  Left = 0
  Top = 0
  Caption = 'Cadastro de Usu'#225'rio'
  ClientHeight = 213
  ClientWidth = 206
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 29
    Width = 29
    Height = 13
    Caption = 'Login:'
  end
  object Label2: TLabel
    Left = 24
    Top = 85
    Width = 34
    Height = 13
    Caption = 'Senha:'
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 206
    Height = 17
    Align = alTop
    Color = clGradientActiveCaption
    ParentBackground = False
    TabOrder = 3
  end
  object Panel2: TPanel
    Left = 0
    Top = 172
    Width = 206
    Height = 41
    Align = alBottom
    Color = clWhite
    ParentBackground = False
    TabOrder = 4
  end
  object BtnCancelar: TButton
    Left = 113
    Top = 180
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 2
    OnClick = BtnCancelarClick
    OnKeyDown = BtnCancelarKeyDown
  end
  object BtnSalvar: TButton
    Left = 8
    Top = 180
    Width = 75
    Height = 25
    Caption = 'Salvar'
    TabOrder = 1
    OnClick = BtnSalvarClick
    OnKeyDown = BtnSalvarKeyDown
  end
  object CbMaster: TCheckBox
    Left = 24
    Top = 135
    Width = 97
    Height = 17
    Caption = 'Master'
    TabOrder = 0
  end
  object EdtLogin: TDBEdit
    Left = 24
    Top = 48
    Width = 164
    Height = 21
    DataField = 'LOGIN'
    DataSource = FUsuarios.DsUsuarios
    TabOrder = 5
  end
  object EdtSenha: TDBEdit
    Left = 24
    Top = 103
    Width = 164
    Height = 21
    DataField = 'SENHA'
    DataSource = FUsuarios.DsUsuarios
    TabOrder = 6
  end
  object DsCadUsuario: TDataSource
    DataSet = DM.tb_usuario
    Left = 144
    Top = 128
  end
  object BSDBCadUsuario: TBindSourceDB
    ScopeMappings = <>
    Left = 160
    Top = 40
  end
  object BLCadUsuario: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 108
    Top = 5
    object LinkControlToField3: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BSDBCadUsuario
      FieldName = 'MASTER'
      Control = CbMaster
      Track = True
    end
  end
end
