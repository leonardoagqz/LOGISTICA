object FPrincipal: TFPrincipal
  Left = 0
  Top = 0
  Caption = ' Sistema de Log'#237'stica'
  ClientHeight = 443
  ClientWidth = 771
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = Menu
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Menu: TMainMenu
    Left = 8
    Top = 8
    object Cadastro1: TMenuItem
      Caption = 'Cadastro'
      object Clientes1: TMenuItem
        Caption = 'Clientes'
      end
      object Fornecedores1: TMenuItem
        Caption = 'Fornecedores'
      end
      object Produtos1: TMenuItem
        Caption = 'Produtos'
        OnClick = Produtos1Click
      end
    end
    object Consulta1: TMenuItem
      Caption = 'Consulta'
      object Vendas1: TMenuItem
        Caption = 'Vendas'
      end
    end
    object Relatrios1: TMenuItem
      Caption = 'Relat'#243'rios'
      object Vendas2: TMenuItem
        Caption = 'Vendas'
      end
      object Compras1: TMenuItem
        Caption = 'Compras'
      end
      object Estoque1: TMenuItem
        Caption = 'Estoque'
      end
    end
    object Financeiro1: TMenuItem
      Caption = 'Financeiro'
      object Caixa1: TMenuItem
        Caption = 'Caixa'
      end
      object Receitas1: TMenuItem
        Caption = 'Receitas'
      end
      object Despesas1: TMenuItem
        Caption = 'Despesas'
      end
    end
    object Configuraes1: TMenuItem
      Caption = 'Configura'#231#245'es'
      object Usurios1: TMenuItem
        Caption = 'Usu'#225'rios'
        OnClick = Usurios1Click
      end
      object FormasdePagamento1: TMenuItem
        Caption = 'Formas de Pagamento'
      end
      object MeiosdeTransportes1: TMenuItem
        Caption = 'Meios de Transportes'
      end
      object Pases1: TMenuItem
        Caption = 'Pa'#237'ses'
      end
    end
    object Sair1: TMenuItem
      Caption = 'Sair'
      OnClick = Sair1Click
    end
  end
end