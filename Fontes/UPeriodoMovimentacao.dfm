object FPeriodoMovimentacao: TFPeriodoMovimentacao
  Left = 0
  Top = 0
  Caption = 'Relat'#243'rio Movimenta'#231#227'o'
  ClientHeight = 115
  ClientWidth = 274
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pn2: TPanel
    Left = 0
    Top = 74
    Width = 274
    Height = 41
    Align = alBottom
    BevelOuter = bvSpace
    TabOrder = 0
    object btnVisualizar: TBitBtn
      Left = 32
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Visualizar'
      TabOrder = 0
      OnClick = btnVisualizarClick
    end
    object btnFechar: TBitBtn
      Left = 168
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Fechar'
      TabOrder = 1
      OnClick = btnFecharClick
    end
  end
  object pn1: TPanel
    Left = 0
    Top = 0
    Width = 274
    Height = 74
    Align = alClient
    BevelOuter = bvSpace
    TabOrder = 1
    object Label1: TLabel
      Left = 152
      Top = 7
      Width = 48
      Height = 13
      Caption = 'Data Final'
    end
    object Label2: TLabel
      Left = 32
      Top = 7
      Width = 51
      Height = 13
      Caption = 'Data inicial'
    end
    object dtpInicial: TDateTimePicker
      Left = 32
      Top = 23
      Width = 97
      Height = 21
      Date = 44004.864993368060000000
      Time = 44004.864993368060000000
      TabOrder = 0
    end
    object dtpFinal: TDateTimePicker
      Left = 152
      Top = 23
      Width = 89
      Height = 21
      Date = 44004.864993368060000000
      Time = 44004.864993368060000000
      TabOrder = 1
    end
  end
end
