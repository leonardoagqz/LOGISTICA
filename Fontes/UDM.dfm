object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 422
  Width = 499
  object BDConnectionSQL: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=LOGISTICA'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 80
    Top = 80
  end
  object DtsUsuarios: TADODataSet
    Connection = BDConnectionSQL
    CursorType = ctStatic
    CommandText = 'USUARIOS'
    CommandType = cmdTable
    Parameters = <>
    Left = 176
    Top = 88
    object DtsUsuariosID_USUARIO: TAutoIncField
      FieldName = 'ID_USUARIO'
      KeyFields = 'ID_USUARIO'
    end
    object DtsUsuariosLOGIN: TStringField
      FieldName = 'LOGIN'
      Size = 10
    end
    object DtsUsuariosSENHA: TStringField
      FieldName = 'SENHA'
      Size = 10
    end
    object DtsUsuariosMASTER: TStringField
      FieldName = 'MASTER'
      FixedChar = True
      Size = 10
    end
  end
  object dspUsuarios: TDataSetProvider
    DataSet = DtsUsuarios
    Left = 176
    Top = 144
  end
  object cdsUsuarios: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dspUsuarios'
    Left = 176
    Top = 208
    object cdsUsuariosID_USUARIO: TAutoIncField
      FieldName = 'ID_USUARIO'
    end
    object cdsUsuariosLOGIN: TStringField
      FieldName = 'LOGIN'
      Size = 10
    end
    object cdsUsuariosSENHA: TStringField
      FieldName = 'SENHA'
      Size = 10
    end
    object cdsUsuariosMASTER: TStringField
      FieldName = 'MASTER'
      FixedChar = True
      Size = 10
    end
  end
  object QryIdUsuario: TADOQuery
    Connection = BDConnectionSQL
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *  FROM USUARIOS')
    Left = 176
    Top = 280
    object QryIdUsuarioID_USUARIO: TAutoIncField
      FieldName = 'ID_USUARIO'
      ReadOnly = True
    end
    object QryIdUsuarioLOGIN: TStringField
      FieldName = 'LOGIN'
      Size = 10
    end
    object QryIdUsuarioSENHA: TStringField
      FieldName = 'SENHA'
      Size = 10
    end
    object QryIdUsuarioMASTER: TStringField
      FieldName = 'MASTER'
      FixedChar = True
      Size = 10
    end
  end
  object DtsProdutos: TADODataSet
    Connection = BDConnectionSQL
    CursorType = ctStatic
    CommandText = 'PRODUTOS'
    CommandType = cmdTable
    Parameters = <>
    Left = 264
    Top = 88
    object DtsProdutosID_PRODUTO: TAutoIncField
      FieldName = 'ID_PRODUTO'
      ReadOnly = True
    end
    object DtsProdutosNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object DtsProdutosQUANTIDADE: TIntegerField
      FieldName = 'QUANTIDADE'
    end
    object DtsProdutosID_PESSOA: TIntegerField
      FieldName = 'ID_PESSOA'
    end
    object DtsProdutosVALOR: TBCDField
      FieldName = 'VALOR'
      Precision = 10
      Size = 2
    end
    object DtsProdutosTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
  end
  object dspProdutos: TDataSetProvider
    DataSet = DtsProdutos
    Left = 264
    Top = 144
  end
  object cdsProdutos: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProdutos'
    Left = 264
    Top = 208
    object cdsProdutosID_PRODUTO: TAutoIncField
      FieldName = 'ID_PRODUTO'
      ReadOnly = True
    end
    object cdsProdutosNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object cdsProdutosQUANTIDADE: TIntegerField
      FieldName = 'QUANTIDADE'
    end
    object cdsProdutosID_PESSOA: TIntegerField
      FieldName = 'ID_PESSOA'
    end
    object cdsProdutosVALOR: TBCDField
      FieldName = 'VALOR'
      Precision = 10
      Size = 2
    end
    object cdsProdutosTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
  end
  object QryIdProduto: TADOQuery
    Connection = BDConnectionSQL
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *  FROM PRODUTOS')
    Left = 264
    Top = 280
    object QryIdProdutoID_PRODUTO: TAutoIncField
      FieldName = 'ID_PRODUTO'
      ReadOnly = True
    end
    object QryIdProdutoNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object QryIdProdutoQUANTIDADE: TIntegerField
      FieldName = 'QUANTIDADE'
    end
    object QryIdProdutoID_PESSOA: TIntegerField
      FieldName = 'ID_PESSOA'
    end
    object QryIdProdutoVALOR: TBCDField
      FieldName = 'VALOR'
      Precision = 10
      Size = 2
    end
    object QryIdProdutoTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
  end
  object DtsPessoas: TADODataSet
    Connection = BDConnectionSQL
    CursorType = ctStatic
    CommandText = 'PESSOAS'
    CommandType = cmdTable
    Parameters = <>
    Left = 344
    Top = 88
    object DtsPessoasID_PESSOA: TAutoIncField
      FieldName = 'ID_PESSOA'
      ReadOnly = True
    end
    object DtsPessoasNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object DtsPessoasDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      Size = 50
    end
    object DtsPessoasTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 50
    end
    object DtsPessoasTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object DtsPessoasID_PAIS: TIntegerField
      FieldName = 'ID_PAIS'
    end
  end
  object dspPessoas: TDataSetProvider
    DataSet = DtsPessoas
    Left = 344
    Top = 144
  end
  object cdsPessoas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPessoas'
    Left = 344
    Top = 208
    object cdsPessoasID_PESSOA: TAutoIncField
      FieldName = 'ID_PESSOA'
      ReadOnly = True
    end
    object cdsPessoasNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object cdsPessoasDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      Size = 50
    end
    object cdsPessoasTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 50
    end
    object cdsPessoasTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object cdsPessoasID_PAIS: TIntegerField
      FieldName = 'ID_PAIS'
    end
  end
  object QryIdPessoa: TADOQuery
    Connection = BDConnectionSQL
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *  FROM PESSOAS')
    Left = 344
    Top = 280
    object QryIdPessoaID_PESSOA: TAutoIncField
      FieldName = 'ID_PESSOA'
      ReadOnly = True
    end
    object QryIdPessoaNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object QryIdPessoaDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      Size = 50
    end
    object QryIdPessoaTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 50
    end
    object QryIdPessoaTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object QryIdPessoaID_PAIS: TIntegerField
      FieldName = 'ID_PAIS'
    end
  end
end
