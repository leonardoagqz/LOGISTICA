object FQuickMovimentacao: TFQuickMovimentacao
  Left = 0
  Top = 0
  Caption = 'FQuickMovimentacao'
  ClientHeight = 393
  ClientWidth = 834
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object qkRelatorio: TRLReport
    Left = 8
    Top = 8
    Width = 794
    Height = 1123
    DataSource = DM.dsRelatmovimentacao
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 75
      BandType = btHeader
      object RLLabel1: TRLLabel
        Left = 228
        Top = 53
        Width = 258
        Height = 16
        Alignment = taCenter
        Caption = 'RELAT'#211'RIO GERAL DE MOVIMENTA'#199#195'O'
      end
      object RLLabel2: TRLLabel
        Left = 307
        Top = 3
        Width = 104
        Height = 18
        Alignment = taCenter
        Caption = 'Logistica Ltda'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel3: TRLLabel
        Left = 301
        Top = 31
        Width = 118
        Height = 16
        Caption = '00.000.000/0000-00'
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 113
      Width = 718
      Height = 32
      BandType = btColumnHeader
      object RLLabel8: TRLLabel
        Left = 301
        Top = 13
        Width = 66
        Height = 16
        Caption = 'Descri'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel9: TRLLabel
        Left = 611
        Top = 10
        Width = 38
        Height = 16
        Caption = 'Valor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel5: TRLLabel
        Left = 117
        Top = 10
        Width = 31
        Height = 16
        Caption = 'Data'
      end
      object RLLabel4: TRLLabel
        Left = 3
        Top = 13
        Width = 28
        Height = 16
        Caption = 'Tipo'
      end
    end
    object Sumario: TRLBand
      Left = 38
      Top = 177
      Width = 718
      Height = 32
      BandType = btColumnFooter
      BeforePrint = SumarioBeforePrint
      object RLLabel12: TRLLabel
        Left = 0
        Top = -14
        Width = 720
        Height = 16
        Caption = 
          '________________________________________________________________' +
          '________________________________________________________________' +
          '____________________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblSaldo: TRLLabel
        Left = 565
        Top = 8
        Width = 65
        Height = 16
        Caption = 'Saldo >> '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object Subdetail: TRLBand
      Left = 38
      Top = 145
      Width = 718
      Height = 32
      BeforePrint = SubdetailBeforePrint
      object RLDBText4: TRLDBText
        Left = 301
        Top = 10
        Width = 80
        Height = 16
        DataField = 'DESCRICAO'
        DataSource = DM.dsRelatmovimentacao
        Text = ''
      end
      object RLDBText5: TRLDBText
        Left = 611
        Top = 10
        Width = 88
        Height = 16
        DataField = 'TOTAL_MOVIMENTO'
        DataSource = DM.dsRelatmovimentacao
        Text = ''
      end
      object RLDBText2: TRLDBText
        Left = 117
        Top = 10
        Width = 124
        Height = 16
        DataField = 'DATA_MOVIMENTO'
        DataSource = DM.dsRelatmovimentacao
        Text = ''
      end
      object lblTipo: TRLDBText
        Left = 6
        Top = 10
        Width = 122
        Height = 16
        DataField = 'TIPO_MOVIMENTO'
        DataSource = DM.dsRelatmovimentacao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Text = ''
      end
    end
  end
end
