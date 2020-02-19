object dm: Tdm
  OldCreateOrder = False
  Height = 240
  Width = 431
  object SQL_CON: TSQLConnection
    DriverName = 'Firebird'
    LoginPrompt = False
    Params.Strings = (
      'DriverUnit=Data.DBXFirebird'
      
        'DriverPackageLoader=TDBXDynalinkDriverLoader,DbxCommonDriver260.' +
        'bpl'
      
        'DriverAssemblyLoader=Borland.Data.TDBXDynalinkDriverLoader,Borla' +
        'nd.Data.DbxCommonDriver,Version=24.0.0.0,Culture=neutral,PublicK' +
        'eyToken=91d62ebb5b0d1b1b'
      
        'MetaDataPackageLoader=TDBXFirebirdMetaDataCommandFactory,DbxFire' +
        'birdDriver260.bpl'
      
        'MetaDataAssemblyLoader=Borland.Data.TDBXFirebirdMetaDataCommandF' +
        'actory,Borland.Data.DbxFirebirdDriver,Version=24.0.0.0,Culture=n' +
        'eutral,PublicKeyToken=91d62ebb5b0d1b1b'
      'GetDriverFunc=getSQLDriverINTERBASE'
      'LibraryName=dbxfb.dll'
      'LibraryNameOsx=libsqlfb.dylib'
      'VendorLib=fbclient.dll'
      'VendorLibWin64=fbclient.dll'
      'VendorLibOsx=/Library/Frameworks/Firebird.framework/Firebird'
      
        'Database=127.0.0.1:C:\desenvolvimento\sistema-delphi\dados\BD_SI' +
        'STEMA_DELPHI.FDB'
      'User_Name=sysdba'
      'Password=masterkey'
      'Role=RoleName'
      'MaxBlobSize=-1'
      'LocaleCode=0000'
      'IsolationLevel=ReadCommitted'
      'SQLDialect=3'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'TrimChar=False'
      'BlobSize=-1'
      'ErrorResourceFile='
      'RoleName=RoleName'
      'ServerCharSet='
      'Trim Char=False')
    Connected = True
    Left = 192
    Top = 16
  end
  object DST_CLIENTES: TSQLDataSet
    CommandText = 'select * from TB_CLIENTES'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQL_CON
    Left = 48
    Top = 72
  end
  object DST_PRODUTOS: TSQLDataSet
    CommandText = 'select * from TB_PRODUTOS'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQL_CON
    Left = 144
    Top = 72
  end
  object DST_PROFISSOES: TSQLDataSet
    CommandText = 'select * from TB_PROFISSOES'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQL_CON
    Left = 240
    Top = 72
  end
  object DST_TIPOPRODUTO: TSQLDataSet
    CommandText = 'select * from TB_TIPOPRODUTO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQL_CON
    Left = 352
    Top = 72
  end
  object DSP_CLIENTES: TDataSetProvider
    DataSet = DST_CLIENTES
    Left = 48
    Top = 128
  end
  object DSP_PRODUTOS: TDataSetProvider
    DataSet = DST_PRODUTOS
    Left = 144
    Top = 128
  end
  object DSP_PROFISSOES: TDataSetProvider
    DataSet = DST_PROFISSOES
    Left = 240
    Top = 128
  end
  object DSP_TIPOPRODUTO: TDataSetProvider
    DataSet = DST_TIPOPRODUTO
    Left = 352
    Top = 128
  end
  object CDS_CLIENTES: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DSP_CLIENTES'
    Left = 48
    Top = 184
    object CDS_CLIENTESCLI_CODIGO: TIntegerField
      FieldName = 'CLI_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDS_CLIENTESPRF_CODIGO: TIntegerField
      FieldName = 'PRF_CODIGO'
    end
    object CDS_CLIENTESCLI_NOME: TStringField
      FieldName = 'CLI_NOME'
      Size = 80
    end
    object CDS_CLIENTESCLI_TIPOPESSOA: TStringField
      FieldName = 'CLI_TIPOPESSOA'
      FixedChar = True
      Size = 1
    end
    object CDS_CLIENTESCLI_CPFCNPJ: TStringField
      FieldName = 'CLI_CPFCNPJ'
      Size = 14
    end
    object CDS_CLIENTESCLI_RGIE: TStringField
      FieldName = 'CLI_RGIE'
      Size = 12
    end
    object CDS_CLIENTESCLI_ENDERECO: TStringField
      FieldName = 'CLI_ENDERECO'
      Size = 80
    end
    object CDS_CLIENTESCLI_NUMERO: TStringField
      FieldName = 'CLI_NUMERO'
    end
    object CDS_CLIENTESCLI_COMPLEMENTO: TStringField
      FieldName = 'CLI_COMPLEMENTO'
      Size = 50
    end
    object CDS_CLIENTESCLI_BAIRRO: TStringField
      FieldName = 'CLI_BAIRRO'
      Size = 80
    end
    object CDS_CLIENTESCLI_CIDADE: TStringField
      FieldName = 'CLI_CIDADE'
      Size = 80
    end
    object CDS_CLIENTESCLI_UF: TStringField
      FieldName = 'CLI_UF'
      FixedChar = True
      Size = 2
    end
    object CDS_CLIENTESCLI_TELEFONE: TStringField
      FieldName = 'CLI_TELEFONE'
      EditMask = '!\(99\)0000-0000;0;_'
      Size = 10
    end
    object CDS_CLIENTESCLI_CELULAR: TStringField
      FieldName = 'CLI_CELULAR'
      EditMask = '!\(99\)00000-0000;0;_'
      Size = 10
    end
    object CDS_CLIENTESCLI_CEP: TStringField
      FieldName = 'CLI_CEP'
      EditMask = '00\.000\-999;0; '
      Size = 8
    end
    object CDS_CLIENTESCLI_EMAIL: TStringField
      FieldName = 'CLI_EMAIL'
      Size = 100
    end
  end
  object CDS_PRODUTOS: TClientDataSet
    Active = True
    Aggregates = <>
    DisableStringTrim = True
    Params = <>
    ProviderName = 'DSP_PRODUTOS'
    Left = 144
    Top = 184
    object CDS_PRODUTOSPRO_CODIGO: TIntegerField
      FieldName = 'PRO_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDS_PRODUTOSTPP_CODIGO: TIntegerField
      FieldName = 'TPP_CODIGO'
    end
    object CDS_PRODUTOSPRO_DESCRICAO: TStringField
      FieldName = 'PRO_DESCRICAO'
      Size = 80
    end
    object CDS_PRODUTOSPRO_REFERENCIA: TStringField
      FieldName = 'PRO_REFERENCIA'
      Size = 80
    end
    object CDS_PRODUTOSPRO_ESTOQUE: TFMTBCDField
      FieldName = 'PRO_ESTOQUE'
      EditFormat = ',0.000'
      Precision = 18
      Size = 3
    end
    object CDS_PRODUTOSPRO_PRECOCUSTO: TFMTBCDField
      FieldName = 'PRO_PRECOCUSTO'
      EditFormat = ',0.00'
      Precision = 18
      Size = 4
    end
    object CDS_PRODUTOSPRO_PRECOVENDA: TFMTBCDField
      FieldName = 'PRO_PRECOVENDA'
      EditFormat = ',0.00'
      Precision = 18
      Size = 4
    end
    object CDS_PRODUTOSPRO_EMBALAGEM: TStringField
      FieldName = 'PRO_EMBALAGEM'
      FixedChar = True
      Size = 2
    end
    object CDS_PRODUTOSPRO_CODIGOBARRAS: TStringField
      FieldName = 'PRO_CODIGOBARRAS'
      Size = 80
    end
    object CDS_PRODUTOSPRO_FOTO: TStringField
      FieldName = 'PRO_FOTO'
      Size = 100
    end
  end
  object CDS_PROFISSOES: TClientDataSet
    Active = True
    Aggregates = <>
    DisableStringTrim = True
    Params = <>
    ProviderName = 'DSP_PROFISSOES'
    Left = 240
    Top = 184
    object CDS_PROFISSOESPRF_CODIGO: TIntegerField
      FieldName = 'PRF_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDS_PROFISSOESPRF_DESCRICAO: TStringField
      FieldName = 'PRF_DESCRICAO'
      Size = 80
    end
    object CDS_PROFISSOESPRF_SALARIO: TFMTBCDField
      FieldName = 'PRF_SALARIO'
      EditFormat = ',0.00'
      Precision = 18
      Size = 2
    end
  end
  object CDS_TIPOPRODUTO: TClientDataSet
    Active = True
    Aggregates = <>
    DisableStringTrim = True
    Params = <>
    ProviderName = 'DSP_TIPOPRODUTO'
    Left = 352
    Top = 184
    object CDS_TIPOPRODUTOTPP_CODIGO: TIntegerField
      FieldName = 'TPP_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDS_TIPOPRODUTOTPP_DESCRICAO: TStringField
      FieldName = 'TPP_DESCRICAO'
      Size = 80
    end
  end
end
