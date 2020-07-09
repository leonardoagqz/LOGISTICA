object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 898
  Width = 1106
  object BDConnectionSQL: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=LOGISTICA;'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 32
    Top = 28
  end
  object DtsUsuarios: TADODataSet
    Connection = BDConnectionSQL
    CursorType = ctStatic
    CommandText = 'USUARIOS'
    CommandType = cmdTable
    Parameters = <>
    Left = 128
    Top = 36
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
    Left = 128
    Top = 92
  end
  object cdsUsuarios: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dspUsuarios'
    Left = 128
    Top = 156
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
    Left = 128
    Top = 228
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
    Left = 216
    Top = 36
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
    Left = 216
    Top = 92
  end
  object cdsProdutos: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProdutos'
    Left = 216
    Top = 156
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
    Left = 216
    Top = 228
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
    Left = 296
    Top = 36
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
    Left = 296
    Top = 92
  end
  object cdsPessoas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPessoas'
    Left = 296
    Top = 156
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
    Left = 296
    Top = 228
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
  object BDConnectionFB: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\Public\Documents\Embarcadero\Studio\Projects\L' +
        'ogistica\Sistema Logistica\Banco Firebird\LOGISTICA.FDB'
      'Password=masterkey'
      'User_Name=sysdba'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 40
    Top = 334
  end
  object ds_usuario: TDataSource
    DataSet = sql_usuario
    Left = 40
    Top = 470
  end
  object sql_usuario: TFDQuery
    IndexesActive = False
    Connection = BDConnectionFB
    SQL.Strings = (
      'select * from usuarios')
    Left = 40
    Top = 534
    object sql_usuarioID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sql_usuarioLOGIN: TStringField
      FieldName = 'LOGIN'
      Origin = 'LOGIN'
      Required = True
      Size = 30
    end
    object sql_usuarioSENHA: TStringField
      FieldName = 'SENHA'
      Origin = 'SENHA'
      Required = True
      Size = 30
    end
    object sql_usuarioMASTER: TStringField
      FieldName = 'MASTER'
      Origin = 'MASTER'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object tb_usuario: TFDTable
    IndexFieldNames = 'ID_USUARIO'
    Connection = BDConnectionFB
    UpdateOptions.UpdateTableName = 'USUARIOS'
    TableName = 'USUARIOS'
    Left = 40
    Top = 406
    object tb_usuarioID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tb_usuarioLOGIN: TStringField
      FieldName = 'LOGIN'
      Origin = 'LOGIN'
      Required = True
      Size = 30
    end
    object tb_usuarioSENHA: TStringField
      FieldName = 'SENHA'
      Origin = 'SENHA'
      Required = True
      Size = 30
    end
    object tb_usuarioMASTER: TStringField
      FieldName = 'MASTER'
      Origin = 'MASTER'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object WaitCursor: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 200
    Top = 334
  end
  object FireBird: TFDPhysFBDriverLink
    Left = 128
    Top = 334
  end
  object sql_Gen_usuario: TFDQuery
    Connection = BDConnectionFB
    SQL.Strings = (
      'select gen_id(id_usuario,1)as id from rdb$database')
    Left = 40
    Top = 600
    object sql_Gen_usuarioID: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object tb_produto: TFDTable
    IndexFieldNames = 'ID_PRODUTO'
    Connection = BDConnectionFB
    UpdateOptions.UpdateTableName = 'PRODUTOS'
    TableName = 'PRODUTOS'
    Left = 120
    Top = 400
    object tb_produtoID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tb_produtoNOME_PRODUTO: TStringField
      FieldName = 'NOME_PRODUTO'
      Origin = 'NOME_PRODUTO'
      Size = 50
    end
    object tb_produtoQUANTIDADE_PRODUTO: TIntegerField
      FieldName = 'QUANTIDADE_PRODUTO'
      Origin = 'QUANTIDADE_PRODUTO'
    end
    object tb_produtoID_PESSOA_PROD: TIntegerField
      FieldName = 'ID_PESSOA_PROD'
      Origin = 'ID_PESSOA_PROD'
      Required = True
    end
    object tb_produtoVALOR_PRODUTO: TBCDField
      FieldName = 'VALOR_PRODUTO'
      Origin = 'VALOR_PRODUTO'
      Precision = 18
      Size = 2
    end
    object tb_produtoTIPO_PRODUTO: TStringField
      FieldName = 'TIPO_PRODUTO'
      Origin = 'TIPO_PRODUTO'
      Size = 30
    end
  end
  object ds_produto: TDataSource
    DataSet = sql_produto
    Left = 120
    Top = 472
  end
  object sql_produto: TFDQuery
    Connection = BDConnectionFB
    SQL.Strings = (
      'select * from produtos')
    Left = 120
    Top = 536
    object sql_produtoID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sql_produtoNOME_PRODUTO: TStringField
      FieldName = 'NOME_PRODUTO'
      Origin = 'NOME_PRODUTO'
      Size = 50
    end
    object sql_produtoQUANTIDADE_PRODUTO: TIntegerField
      FieldName = 'QUANTIDADE_PRODUTO'
      Origin = 'QUANTIDADE_PRODUTO'
    end
    object sql_produtoID_PESSOA_PROD: TIntegerField
      FieldName = 'ID_PESSOA_PROD'
      Origin = 'ID_PESSOA_PROD'
      Required = True
    end
    object sql_produtoVALOR_PRODUTO: TBCDField
      FieldName = 'VALOR_PRODUTO'
      Origin = 'VALOR_PRODUTO'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 2
    end
    object sql_produtoTIPO_PRODUTO: TStringField
      FieldName = 'TIPO_PRODUTO'
      Origin = 'TIPO_PRODUTO'
      Size = 30
    end
  end
  object tb_pessoa: TFDTable
    IndexFieldNames = 'ID_PESSOA'
    Connection = BDConnectionFB
    UpdateOptions.UpdateTableName = 'PESSOAS'
    TableName = 'PESSOAS'
    Left = 208
    Top = 400
    object tb_pessoaID_PESSOA: TIntegerField
      FieldName = 'ID_PESSOA'
      Origin = 'ID_PESSOA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tb_pessoaNOME_PESSOA: TStringField
      FieldName = 'NOME_PESSOA'
      Origin = 'NOME_PESSOA'
      Size = 50
    end
    object tb_pessoaDOCUMENTO_PESSOA: TStringField
      FieldName = 'DOCUMENTO_PESSOA'
      Origin = 'DOCUMENTO_PESSOA'
      Size = 50
    end
    object tb_pessoaFONE_PESSOA: TStringField
      FieldName = 'FONE_PESSOA'
      Origin = 'FONE_PESSOA'
      Size = 50
    end
    object tb_pessoaTIPO_PESSOA: TStringField
      FieldName = 'TIPO_PESSOA'
      Origin = 'TIPO_PESSOA'
      FixedChar = True
      Size = 1
    end
    object tb_pessoaID_PAIS_PESSOA: TIntegerField
      FieldName = 'ID_PAIS_PESSOA'
      Origin = 'ID_PAIS_PESSOA'
    end
  end
  object ds_pessoa: TDataSource
    DataSet = sql_pessoa
    Left = 208
    Top = 464
  end
  object sql_pessoa: TFDQuery
    Connection = BDConnectionFB
    SQL.Strings = (
      'select * from pessoas '
      ''
      'WHERE'
      ''
      
        '(TIPO_PESSOA= :TIPO_PESSOA OR '#39'T'#39'= :TIPO_PESSOA)AND (NOME_PESSOA' +
        ' LIKE :NOME_PESSOA)'
      ''
      'ORDER BY NOME_PESSOA'
      ''
      '')
    Left = 208
    Top = 536
    ParamData = <
      item
        Name = 'TIPO_PESSOA'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 1
        Value = Null
      end
      item
        Name = 'NOME_PESSOA'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end>
    object sql_pessoaID_PESSOA: TIntegerField
      FieldName = 'ID_PESSOA'
      Origin = 'ID_PESSOA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sql_pessoaNOME_PESSOA: TStringField
      FieldName = 'NOME_PESSOA'
      Origin = 'NOME_PESSOA'
      Size = 50
    end
    object sql_pessoaDOCUMENTO_PESSOA: TStringField
      FieldName = 'DOCUMENTO_PESSOA'
      Origin = 'DOCUMENTO_PESSOA'
      Size = 50
    end
    object sql_pessoaFONE_PESSOA: TStringField
      FieldName = 'FONE_PESSOA'
      Origin = 'FONE_PESSOA'
      EditMask = '!\(99\) 9 9999-9999;0;_'
      Size = 50
    end
    object sql_pessoaTIPO_PESSOA: TStringField
      FieldName = 'TIPO_PESSOA'
      Origin = 'TIPO_PESSOA'
      FixedChar = True
      Size = 1
    end
    object sql_pessoaID_PAIS_PESSOA: TIntegerField
      FieldName = 'ID_PAIS_PESSOA'
      Origin = 'ID_PAIS_PESSOA'
    end
  end
  object tb_formaspgto: TFDTable
    IndexFieldNames = 'ID_FORMAPGTO'
    Connection = BDConnectionFB
    UpdateOptions.UpdateTableName = 'FORMAPGTO'
    TableName = 'FORMAPGTO'
    Left = 304
    Top = 401
    object tb_formaspgtoID_FORMAPGTO: TIntegerField
      FieldName = 'ID_FORMAPGTO'
      Origin = 'ID_FORMAPGTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tb_formaspgtoDESCRICAO_FORMAPGTO: TStringField
      FieldName = 'DESCRICAO_FORMAPGTO'
      Origin = 'DESCRICAO_FORMAPGTO'
      Size = 50
    end
  end
  object ds_formaspgto: TDataSource
    DataSet = sql_formaspgto
    Left = 304
    Top = 465
  end
  object sql_formaspgto: TFDQuery
    Connection = BDConnectionFB
    SQL.Strings = (
      'select * from formapgto')
    Left = 304
    Top = 537
    object sql_formaspgtoID_FORMAPGTO: TIntegerField
      FieldName = 'ID_FORMAPGTO'
      Origin = 'ID_FORMAPGTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sql_formaspgtoDESCRICAO_FORMAPGTO: TStringField
      FieldName = 'DESCRICAO_FORMAPGTO'
      Origin = 'DESCRICAO_FORMAPGTO'
      Size = 50
    end
  end
  object sql_Gen_pessoa: TFDQuery
    Connection = BDConnectionFB
    SQL.Strings = (
      'select gen_id(id_pessoa,1)as id from rdb$database')
    Left = 208
    Top = 600
    object sql_Gen_pessoaID: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object sql_Gen_produto: TFDQuery
    Connection = BDConnectionFB
    SQL.Strings = (
      'select gen_id(id_produto,1)as id from rdb$database')
    Left = 120
    Top = 600
    object sql_Gen_produtoID: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object sql_Gen_formaspgto: TFDQuery
    Connection = BDConnectionFB
    SQL.Strings = (
      'select gen_id(id_formapgto,1)as id from rdb$database')
    Left = 304
    Top = 601
    object sql_Gen_formaspgtoID: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object tb_meiotransporte: TFDTable
    IndexFieldNames = 'ID_TRANSPORTE'
    Connection = BDConnectionFB
    UpdateOptions.UpdateTableName = 'MEIOSTRANSPORTES'
    TableName = 'MEIOSTRANSPORTES'
    Left = 392
    Top = 401
    object tb_meiotransporteID_TRANSPORTE: TIntegerField
      FieldName = 'ID_TRANSPORTE'
      Origin = 'ID_TRANSPORTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tb_meiotransporteDESCRICAO_TRANSPORTE: TStringField
      FieldName = 'DESCRICAO_TRANSPORTE'
      Origin = 'DESCRICAO_TRANSPORTE'
      Size = 50
    end
  end
  object ds_meiotransporte: TDataSource
    DataSet = sql_meiotransporte
    Left = 392
    Top = 465
  end
  object sql_meiotransporte: TFDQuery
    Connection = BDConnectionFB
    SQL.Strings = (
      'select * from meiostransportes')
    Left = 392
    Top = 537
    object sql_meiotransporteID_TRANSPORTE: TIntegerField
      FieldName = 'ID_TRANSPORTE'
      Origin = 'ID_TRANSPORTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sql_meiotransporteDESCRICAO_TRANSPORTE: TStringField
      FieldName = 'DESCRICAO_TRANSPORTE'
      Origin = 'DESCRICAO_TRANSPORTE'
      Size = 50
    end
  end
  object sql_Gen_meiotransporte: TFDQuery
    Connection = BDConnectionFB
    SQL.Strings = (
      'select gen_id(id_transporte,1)as id from rdb$database')
    Left = 392
    Top = 601
    object sql_Gen_meiotransporteID: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object tb_paises: TFDTable
    IndexFieldNames = 'ID_PAIS'
    Connection = BDConnectionFB
    UpdateOptions.UpdateTableName = 'PAISES'
    TableName = 'PAISES'
    Left = 488
    Top = 401
    object tb_paisesID_PAIS: TIntegerField
      FieldName = 'ID_PAIS'
      Origin = 'ID_PAIS'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tb_paisesNOME_PAIS: TStringField
      FieldName = 'NOME_PAIS'
      Origin = 'NOME_PAIS'
      Size = 50
    end
  end
  object ds_paises: TDataSource
    DataSet = sql_paises
    Left = 488
    Top = 465
  end
  object sql_paises: TFDQuery
    Connection = BDConnectionFB
    SQL.Strings = (
      'select * from paises')
    Left = 488
    Top = 537
    object sql_paisesID_PAIS: TIntegerField
      FieldName = 'ID_PAIS'
      Origin = 'ID_PAIS'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sql_paisesNOME_PAIS: TStringField
      FieldName = 'NOME_PAIS'
      Origin = 'NOME_PAIS'
      Size = 50
    end
  end
  object sql_Gen_paises: TFDQuery
    Connection = BDConnectionFB
    SQL.Strings = (
      'select gen_id(id_pais,1)as id from rdb$database')
    Left = 488
    Top = 601
    object sql_Gen_paisesID: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object tb_MovConsul: TFDTable
    IndexFieldNames = 'ID_MOVIMENTO'
    Connection = BDConnectionFB
    UpdateOptions.UpdateTableName = 'MOVIMENTOS'
    TableName = 'MOVIMENTOS'
    Left = 568
    Top = 400
    object tb_MovConsulID_MOVIMENTO: TIntegerField
      FieldName = 'ID_MOVIMENTO'
      Origin = 'ID_MOVIMENTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tb_MovConsulTIPO_MOVIMENTO: TStringField
      FieldName = 'TIPO_MOVIMENTO'
      Origin = 'TIPO_MOVIMENTO'
      FixedChar = True
      Size = 1
    end
    object tb_MovConsulDATA_MOVIMENTO: TDateField
      FieldName = 'DATA_MOVIMENTO'
      Origin = 'DATA_MOVIMENTO'
    end
    object tb_MovConsulTOTAL_MOVIMENTO: TBCDField
      FieldName = 'TOTAL_MOVIMENTO'
      Origin = 'TOTAL_MOVIMENTO'
      Precision = 18
      Size = 2
    end
    object tb_MovConsulID_PGTO_MOVIMENTO: TIntegerField
      FieldName = 'ID_PGTO_MOVIMENTO'
      Origin = 'ID_PGTO_MOVIMENTO'
    end
    object tb_MovConsulID_TRANSPORTE_MOVIMENTO: TIntegerField
      FieldName = 'ID_TRANSPORTE_MOVIMENTO'
      Origin = 'ID_TRANSPORTE_MOVIMENTO'
    end
  end
  object ds_MovConsul: TDataSource
    DataSet = sql_MovConsul
    Left = 576
    Top = 464
  end
  object sql_MovConsul: TFDQuery
    Connection = BDConnectionFB
    SQL.Strings = (
      
        'select M.*,F.descricao_formapgto,T.descricao_transporte from mov' +
        'imentos M'
      ''
      'inner join formapgto F on M.id_pgto_movimento = F.id_formapgto'
      
        'inner join meiostransportes T on M.id_transporte_movimento = T.i' +
        'd_transporte'
      ''
      
        'where data_movimento between :D1 and :D2 and tipo_movimento = :T' +
        'P'
      ''
      'order by data_movimento,id_movimento')
    Left = 576
    Top = 528
    ParamData = <
      item
        Name = 'D1'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'D2'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Name = 'TP'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 1
      end>
    object sql_MovConsulID_MOVIMENTO: TIntegerField
      FieldName = 'ID_MOVIMENTO'
      Origin = 'ID_MOVIMENTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sql_MovConsulTIPO_MOVIMENTO: TStringField
      FieldName = 'TIPO_MOVIMENTO'
      Origin = 'TIPO_MOVIMENTO'
      FixedChar = True
      Size = 1
    end
    object sql_MovConsulDATA_MOVIMENTO: TDateField
      FieldName = 'DATA_MOVIMENTO'
      Origin = 'DATA_MOVIMENTO'
    end
    object sql_MovConsulTOTAL_MOVIMENTO: TBCDField
      FieldName = 'TOTAL_MOVIMENTO'
      Origin = 'TOTAL_MOVIMENTO'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 2
    end
    object sql_MovConsulID_PGTO_MOVIMENTO: TIntegerField
      FieldName = 'ID_PGTO_MOVIMENTO'
      Origin = 'ID_PGTO_MOVIMENTO'
    end
    object sql_MovConsulID_TRANSPORTE_MOVIMENTO: TIntegerField
      FieldName = 'ID_TRANSPORTE_MOVIMENTO'
      Origin = 'ID_TRANSPORTE_MOVIMENTO'
    end
    object sql_MovConsulID_PESSOA_MOVIMENTO: TIntegerField
      FieldName = 'ID_PESSOA_MOVIMENTO'
      Origin = 'ID_PESSOA_MOVIMENTO'
      Required = True
    end
    object sql_MovConsulDESCRICAO_FORMAPGTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRICAO_FORMAPGTO'
      Origin = 'DESCRICAO_FORMAPGTO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object sql_MovConsulDESCRICAO_TRANSPORTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRICAO_TRANSPORTE'
      Origin = 'DESCRICAO_TRANSPORTE'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
  end
  object sql_Gen__MovConsul: TFDQuery
    Connection = BDConnectionFB
    SQL.Strings = (
      'select gen_id(id_movimento,1)as id from rdb$database')
    Left = 584
    Top = 600
    object sql_Gen__MovConsulID: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object tb_MovInclusao: TFDTable
    IndexFieldNames = 'ID_MOVIMENTO'
    Connection = BDConnectionFB
    UpdateOptions.UpdateTableName = 'MOVIMENTOS'
    TableName = 'MOVIMENTOS'
    Left = 672
    Top = 400
    object tb_MovInclusaoID_MOVIMENTO: TIntegerField
      FieldName = 'ID_MOVIMENTO'
      Origin = 'ID_MOVIMENTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tb_MovInclusaoTIPO_MOVIMENTO: TStringField
      FieldName = 'TIPO_MOVIMENTO'
      Origin = 'TIPO_MOVIMENTO'
      FixedChar = True
      Size = 1
    end
    object tb_MovInclusaoDATA_MOVIMENTO: TDateField
      FieldName = 'DATA_MOVIMENTO'
      Origin = 'DATA_MOVIMENTO'
    end
    object tb_MovInclusaoTOTAL_MOVIMENTO: TBCDField
      FieldName = 'TOTAL_MOVIMENTO'
      Origin = 'TOTAL_MOVIMENTO'
      Precision = 18
      Size = 2
    end
    object tb_MovInclusaoID_PGTO_MOVIMENTO: TIntegerField
      FieldName = 'ID_PGTO_MOVIMENTO'
      Origin = 'ID_PGTO_MOVIMENTO'
    end
    object tb_MovInclusaoID_TRANSPORTE_MOVIMENTO: TIntegerField
      FieldName = 'ID_TRANSPORTE_MOVIMENTO'
      Origin = 'ID_TRANSPORTE_MOVIMENTO'
    end
  end
  object ds_MovInclusao: TDataSource
    DataSet = sql_MovInclusao
    Left = 680
    Top = 464
  end
  object sql_MovInclusao: TFDQuery
    Connection = BDConnectionFB
    SQL.Strings = (
      'select * from movimentos'
      ''
      'where id_movimento = :id_movimento')
    Left = 680
    Top = 528
    ParamData = <
      item
        Name = 'ID_MOVIMENTO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object sql_MovInclusaoID_MOVIMENTO: TIntegerField
      FieldName = 'ID_MOVIMENTO'
      Origin = 'ID_MOVIMENTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sql_MovInclusaoTIPO_MOVIMENTO: TStringField
      FieldName = 'TIPO_MOVIMENTO'
      Origin = 'TIPO_MOVIMENTO'
      FixedChar = True
      Size = 1
    end
    object sql_MovInclusaoDATA_MOVIMENTO: TDateField
      FieldName = 'DATA_MOVIMENTO'
      Origin = 'DATA_MOVIMENTO'
    end
    object sql_MovInclusaoTOTAL_MOVIMENTO: TBCDField
      FieldName = 'TOTAL_MOVIMENTO'
      Origin = 'TOTAL_MOVIMENTO'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 2
    end
    object sql_MovInclusaoID_PGTO_MOVIMENTO: TIntegerField
      FieldName = 'ID_PGTO_MOVIMENTO'
      Origin = 'ID_PGTO_MOVIMENTO'
    end
    object sql_MovInclusaoID_TRANSPORTE_MOVIMENTO: TIntegerField
      FieldName = 'ID_TRANSPORTE_MOVIMENTO'
      Origin = 'ID_TRANSPORTE_MOVIMENTO'
    end
    object sql_MovInclusaoID_PESSOA_MOVIMENTO: TIntegerField
      FieldName = 'ID_PESSOA_MOVIMENTO'
      Origin = 'ID_PESSOA_MOVIMENTO'
      Required = True
    end
  end
  object tb_Itens: TFDTable
    IndexFieldNames = 'ID_ITEM_MOVIMENTO'
    Connection = BDConnectionFB
    UpdateOptions.UpdateTableName = 'ITENSMOVIMENTO'
    TableName = 'ITENSMOVIMENTO'
    Left = 768
    Top = 400
    object tb_ItensID_ITEM_MOVIMENTO: TIntegerField
      FieldName = 'ID_ITEM_MOVIMENTO'
      Origin = 'ID_ITEM_MOVIMENTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tb_ItensID_MOVIMENTO_ITENS: TIntegerField
      FieldName = 'ID_MOVIMENTO_ITENS'
      Origin = 'ID_MOVIMENTO_ITENS'
    end
    object tb_ItensID_PRODUTO_ITENS: TIntegerField
      FieldName = 'ID_PRODUTO_ITENS'
      Origin = 'ID_PRODUTO_ITENS'
    end
    object tb_ItensQUANTIDADE_MOVIMENTO: TIntegerField
      FieldName = 'QUANTIDADE_MOVIMENTO'
      Origin = 'QUANTIDADE_MOVIMENTO'
    end
    object tb_ItensVALOR_MOVIMENTO: TBCDField
      FieldName = 'VALOR_MOVIMENTO'
      Origin = 'VALOR_MOVIMENTO'
      Precision = 18
      Size = 2
    end
    object tb_ItensTOTAL_MOVIMENTO: TBCDField
      FieldName = 'TOTAL_MOVIMENTO'
      Origin = 'TOTAL_MOVIMENTO'
      Precision = 18
      Size = 2
    end
    object tb_ItensNOME_PRODUTO_ITENS: TStringField
      FieldName = 'NOME_PRODUTO_ITENS'
      Origin = 'NOME_PRODUTO_ITENS'
      Size = 60
    end
  end
  object ds_Itens: TDataSource
    DataSet = sql_Itens
    Left = 768
    Top = 464
  end
  object sql_Itens: TFDQuery
    Connection = BDConnectionFB
    SQL.Strings = (
      'select * from itensmovimento'
      ''
      'where id_item_movimento = :id_item_movimento')
    Left = 768
    Top = 528
    ParamData = <
      item
        Name = 'ID_ITEM_MOVIMENTO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object sql_ItensID_ITEM_MOVIMENTO: TIntegerField
      FieldName = 'ID_ITEM_MOVIMENTO'
      Origin = 'ID_ITEM_MOVIMENTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sql_ItensID_MOVIMENTO_ITENS: TIntegerField
      FieldName = 'ID_MOVIMENTO_ITENS'
      Origin = 'ID_MOVIMENTO_ITENS'
    end
    object sql_ItensID_PRODUTO_ITENS: TIntegerField
      FieldName = 'ID_PRODUTO_ITENS'
      Origin = 'ID_PRODUTO_ITENS'
    end
    object sql_ItensQUANTIDADE_MOVIMENTO: TIntegerField
      FieldName = 'QUANTIDADE_MOVIMENTO'
      Origin = 'QUANTIDADE_MOVIMENTO'
    end
    object sql_ItensVALOR_MOVIMENTO: TBCDField
      FieldName = 'VALOR_MOVIMENTO'
      Origin = 'VALOR_MOVIMENTO'
      Precision = 18
      Size = 2
    end
    object sql_ItensTOTAL_MOVIMENTO: TBCDField
      FieldName = 'TOTAL_MOVIMENTO'
      Origin = 'TOTAL_MOVIMENTO'
      Precision = 18
      Size = 2
    end
    object sql_ItensNOME_PRODUTO_ITENS: TStringField
      FieldName = 'NOME_PRODUTO_ITENS'
      Origin = 'NOME_PRODUTO_ITENS'
      Size = 60
    end
  end
  object sql_IncluirItens: TFDQuery
    Aggregates = <
      item
        Name = 'Soma'
        Expression = 'Sum(TOTAL_MOVIMENTO)'
        Active = True
      end>
    AggregatesActive = True
    Connection = BDConnectionFB
    SQL.Strings = (
      ''
      'SELECT * FROM ITENSMOVIMENTO')
    Left = 912
    Top = 528
    object sql_IncluirItensID_ITEM_MOVIMENTO: TIntegerField
      FieldName = 'ID_ITEM_MOVIMENTO'
      Origin = 'ID_ITEM_MOVIMENTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sql_IncluirItensID_MOVIMENTO_ITENS: TIntegerField
      FieldName = 'ID_MOVIMENTO_ITENS'
      Origin = 'ID_MOVIMENTO_ITENS'
    end
    object sql_IncluirItensID_PRODUTO_ITENS: TIntegerField
      FieldName = 'ID_PRODUTO_ITENS'
      Origin = 'ID_PRODUTO_ITENS'
    end
    object sql_IncluirItensQUANTIDADE_MOVIMENTO: TIntegerField
      FieldName = 'QUANTIDADE_MOVIMENTO'
      Origin = 'QUANTIDADE_MOVIMENTO'
    end
    object sql_IncluirItensVALOR_MOVIMENTO: TBCDField
      FieldName = 'VALOR_MOVIMENTO'
      Origin = 'VALOR_MOVIMENTO'
      DisplayFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object sql_IncluirItensTOTAL_MOVIMENTO: TBCDField
      FieldName = 'TOTAL_MOVIMENTO'
      Origin = 'TOTAL_MOVIMENTO'
      DisplayFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object sql_IncluirItensNOME_PRODUTO_ITENS: TStringField
      FieldName = 'NOME_PRODUTO_ITENS'
      Origin = 'NOME_PRODUTO_ITENS'
      Size = 60
    end
    object sql_IncluirItensSoma: TAggregateField
      FieldName = 'Soma'
      Active = True
      currency = True
      DisplayName = ''
      DisplayFormat = '0.00'
      Expression = 'Sum(TOTAL_MOVIMENTO)'
    end
  end
  object ds_Incluiritens: TDataSource
    DataSet = sql_IncluirItens
    Left = 912
    Top = 464
  end
  object sql_Gen_Item: TFDQuery
    Connection = BDConnectionFB
    SQL.Strings = (
      'select gen_id(id_item_movimento,1)as id from rdb$database')
    Left = 768
    Top = 600
    object sql_Gen_ItemID: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object sql_IncluirItensDBG: TFDQuery
    Aggregates = <
      item
        Name = 'Soma'
        Expression = 'Sum(TOTAL_MOVIMENTO)'
        Active = True
      end
      item
        Name = 'SomaQtd'
        Expression = 'Sum(QUANTIDADE_MOVIMENTO)'
        Active = True
      end>
    AggregatesActive = True
    Connection = BDConnectionFB
    SQL.Strings = (
      ''
      ''
      'select * from itensmovimento')
    Left = 1000
    Top = 528
    object sql_IncluirItensDBGID_ITEM_MOVIMENTO: TIntegerField
      FieldName = 'ID_ITEM_MOVIMENTO'
      Origin = 'ID_ITEM_MOVIMENTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sql_IncluirItensDBGID_MOVIMENTO_ITENS: TIntegerField
      FieldName = 'ID_MOVIMENTO_ITENS'
      Origin = 'ID_MOVIMENTO_ITENS'
    end
    object sql_IncluirItensDBGID_PRODUTO_ITENS: TIntegerField
      FieldName = 'ID_PRODUTO_ITENS'
      Origin = 'ID_PRODUTO_ITENS'
    end
    object sql_IncluirItensDBGQUANTIDADE_MOVIMENTO: TIntegerField
      FieldName = 'QUANTIDADE_MOVIMENTO'
      Origin = 'QUANTIDADE_MOVIMENTO'
    end
    object sql_IncluirItensDBGVALOR_MOVIMENTO: TBCDField
      FieldName = 'VALOR_MOVIMENTO'
      Origin = 'VALOR_MOVIMENTO'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 2
    end
    object sql_IncluirItensDBGTOTAL_MOVIMENTO: TBCDField
      FieldName = 'TOTAL_MOVIMENTO'
      Origin = 'TOTAL_MOVIMENTO'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 2
    end
    object sql_IncluirItensDBGNOME_PRODUTO_ITENS: TStringField
      FieldName = 'NOME_PRODUTO_ITENS'
      Origin = 'NOME_PRODUTO_ITENS'
      Size = 60
    end
    object AggregateField1: TAggregateField
      FieldName = 'Soma'
      Active = True
      currency = True
      DisplayName = ''
      DisplayFormat = 'R$ 0.00'
      Expression = 'Sum(TOTAL_MOVIMENTO)'
    end
    object sql_IncluirItensDBGSomaQtd: TAggregateField
      FieldName = 'SomaQtd'
      Active = True
      DisplayName = ''
      Expression = 'Sum(QUANTIDADE_MOVIMENTO)'
    end
  end
  object ds_IncluiritensDBG: TDataSource
    DataSet = sql_IncluirItensDBG
    Left = 1000
    Top = 464
  end
  object sql_pessoa2: TFDQuery
    Connection = BDConnectionFB
    SQL.Strings = (
      'select * from pessoas '
      ''
      'WHERE'
      ''
      
        '(TIPO_PESSOA= :TIPO_PESSOA OR '#39'T'#39'= :TIPO_PESSOA)AND (NOME_PESSOA' +
        ' LIKE :NOME_PESSOA)'
      ''
      'ORDER BY NOME_PESSOA'
      ''
      '')
    Left = 208
    Top = 728
    ParamData = <
      item
        Name = 'TIPO_PESSOA'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 1
        Value = Null
      end
      item
        Name = 'NOME_PESSOA'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end>
    object sql_pessoa2ID_PESSOA: TIntegerField
      FieldName = 'ID_PESSOA'
      Origin = 'ID_PESSOA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sql_pessoa2NOME_PESSOA: TStringField
      FieldName = 'NOME_PESSOA'
      Origin = 'NOME_PESSOA'
      Size = 50
    end
    object sql_pessoa2DOCUMENTO_PESSOA: TStringField
      FieldName = 'DOCUMENTO_PESSOA'
      Origin = 'DOCUMENTO_PESSOA'
      Size = 50
    end
    object sql_pessoa2FONE_PESSOA: TStringField
      FieldName = 'FONE_PESSOA'
      Origin = 'FONE_PESSOA'
      Size = 50
    end
    object sql_pessoa2TIPO_PESSOA: TStringField
      FieldName = 'TIPO_PESSOA'
      Origin = 'TIPO_PESSOA'
      FixedChar = True
      Size = 1
    end
    object sql_pessoa2ID_PAIS_PESSOA: TIntegerField
      FieldName = 'ID_PAIS_PESSOA'
      Origin = 'ID_PAIS_PESSOA'
    end
  end
  object ds_pessoa2: TDataSource
    DataSet = sql_pessoa2
    Left = 208
    Top = 656
  end
  object ds_itensarm: TDataSource
    DataSet = sql_itensarm
    Left = 840
    Top = 464
  end
  object sql_itensarm: TFDQuery
    Connection = BDConnectionFB
    SQL.Strings = (
      'select * from itensmovimentoarm'
      ''
      'where id_item_movimento = :id_item_movimento')
    Left = 840
    Top = 528
    ParamData = <
      item
        Name = 'ID_ITEM_MOVIMENTO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object sql_itensarmID_ITEM_MOVIMENTO: TIntegerField
      FieldName = 'ID_ITEM_MOVIMENTO'
      Origin = 'ID_ITEM_MOVIMENTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sql_itensarmID_MOVIMENTO_ITENS: TIntegerField
      FieldName = 'ID_MOVIMENTO_ITENS'
      Origin = 'ID_MOVIMENTO_ITENS'
    end
    object sql_itensarmID_PRODUTO_ITENS: TIntegerField
      FieldName = 'ID_PRODUTO_ITENS'
      Origin = 'ID_PRODUTO_ITENS'
    end
    object sql_itensarmQUANTIDADE_MOVIMENTO: TIntegerField
      FieldName = 'QUANTIDADE_MOVIMENTO'
      Origin = 'QUANTIDADE_MOVIMENTO'
    end
    object sql_itensarmVALOR_MOVIMENTO: TBCDField
      FieldName = 'VALOR_MOVIMENTO'
      Origin = 'VALOR_MOVIMENTO'
      Precision = 18
      Size = 2
    end
    object sql_itensarmTOTAL_MOVIMENTO: TBCDField
      FieldName = 'TOTAL_MOVIMENTO'
      Origin = 'TOTAL_MOVIMENTO'
      Precision = 18
      Size = 2
    end
    object sql_itensarmNOME_PRODUTO_ITENS: TStringField
      FieldName = 'NOME_PRODUTO_ITENS'
      Origin = 'NOME_PRODUTO_ITENS'
      Size = 60
    end
  end
  object sql_sItensArm: TFDQuery
    Connection = BDConnectionFB
    SQL.Strings = (
      
        'select I.*,P.nome_produto from Itensmovimentoarm I inner join pr' +
        'odutos p'
      ''
      'on I.id_produto_itens = p.id_produto'
      ''
      'where id_movimento_itens = :id_movimento_itenss')
    Left = 912
    Top = 696
    ParamData = <
      item
        Name = 'ID_MOVIMENTO_ITENSS'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object sql_sItensArmID_ITEM_MOVIMENTO: TIntegerField
      FieldName = 'ID_ITEM_MOVIMENTO'
      Origin = 'ID_ITEM_MOVIMENTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sql_sItensArmID_MOVIMENTO_ITENS: TIntegerField
      FieldName = 'ID_MOVIMENTO_ITENS'
      Origin = 'ID_MOVIMENTO_ITENS'
    end
    object sql_sItensArmID_PRODUTO_ITENS: TIntegerField
      FieldName = 'ID_PRODUTO_ITENS'
      Origin = 'ID_PRODUTO_ITENS'
    end
    object sql_sItensArmQUANTIDADE_MOVIMENTO: TIntegerField
      FieldName = 'QUANTIDADE_MOVIMENTO'
      Origin = 'QUANTIDADE_MOVIMENTO'
    end
    object sql_sItensArmVALOR_MOVIMENTO: TBCDField
      FieldName = 'VALOR_MOVIMENTO'
      Origin = 'VALOR_MOVIMENTO'
      Precision = 18
      Size = 2
    end
    object sql_sItensArmTOTAL_MOVIMENTO: TBCDField
      FieldName = 'TOTAL_MOVIMENTO'
      Origin = 'TOTAL_MOVIMENTO'
      Precision = 18
      Size = 2
    end
    object sql_sItensArmNOME_PRODUTO_ITENS: TStringField
      FieldName = 'NOME_PRODUTO_ITENS'
      Origin = 'NOME_PRODUTO_ITENS'
      Size = 60
    end
    object sql_sItensArmNOME_PRODUTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME_PRODUTO'
      Origin = 'NOME_PRODUTO'
      ProviderFlags = []
      ReadOnly = True
      Size = 60
    end
  end
end
