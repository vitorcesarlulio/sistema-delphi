unit udm;

interface

uses
  System.SysUtils, System.Classes, Data.DBXFirebird, Data.FMTBcd, Data.DB,
  Data.SqlExpr;

type
  Tdm = class(TDataModule)
    SQL_CON: TSQLConnection;
    DST_CLIENTES: TSQLDataSet;
    DST_PRODUTOS: TSQLDataSet;
    DST_PROFISSOES: TSQLDataSet;
    DST_TIPOPRODUTO: TSQLDataSet;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dm: Tdm;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
