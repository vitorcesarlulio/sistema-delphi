object DataModule2: TDataModule2
  OldCreateOrder = False
  Height = 378
  Width = 542
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
    Left = 248
    Top = 16
  end
  object DST_PROFISSOES: TSQLDataSet
    CommandText = 'select * from TB_PROFISSOES'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQL_CON
    Left = 216
    Top = 88
  end
  object DST_CLIENTES: TSQLDataSet
    CommandText = 'select * from TB_CLIENTES'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQL_CON
    Left = 448
    Top = 88
  end
  object DST_TIPOPRODUTO: TSQLDataSet
    CommandText = 'select * from TB_TIPOPRODUTO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQL_CON
    Left = 72
    Top = 88
  end
  object DST_PRODUTOS: TSQLDataSet
    CommandText = 'select * from TB_PRODUTOS'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQL_CON
    Left = 336
    Top = 88
  end
end
