unit dm;

interface

uses
  System.SysUtils, System.Classes, Data.DBXFirebird, Data.FMTBcd, Data.DB,
  Data.SqlExpr;

type
  TDataModule2 = class(TDataModule)
    SQL_CON: TSQLConnection;
    DST_PROFISSOES: TSQLDataSet;
    DST_CLIENTES: TSQLDataSet;
    DST_TIPOPRODUTO: TSQLDataSet;
    DST_PRODUTOS: TSQLDataSet;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule2: TDataModule2;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
