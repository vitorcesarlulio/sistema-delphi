unit udm;

interface

uses
  System.SysUtils, System.Classes, Data.DBXFirebird, Data.FMTBcd, Data.DB,
  Data.SqlExpr, Datasnap.Provider, Datasnap.DBClient;

type
  Tdm = class(TDataModule)
    SQL_CON: TSQLConnection;
    DST_CLIENTES: TSQLDataSet;
    DST_PRODUTOS: TSQLDataSet;
    DST_PROFISSOES: TSQLDataSet;
    DST_TIPOPRODUTO: TSQLDataSet;
    DSP_CLIENTES: TDataSetProvider;
    DSP_PRODUTOS: TDataSetProvider;
    DSP_PROFISSOES: TDataSetProvider;
    DSP_TIPOPRODUTO: TDataSetProvider;
    CDS_CLIENTES: TClientDataSet;
    CDS_PRODUTOS: TClientDataSet;
    CDS_PROFISSOES: TClientDataSet;
    CDS_TIPOPRODUTO: TClientDataSet;
    CDS_CLIENTESCLI_CODIGO: TIntegerField;
    CDS_CLIENTESPRF_CODIGO: TIntegerField;
    CDS_CLIENTESCLI_NOME: TStringField;
    CDS_CLIENTESCLI_TIPOPESSOA: TStringField;
    CDS_CLIENTESCLI_CPFCNPJ: TStringField;
    CDS_CLIENTESCLI_RGIE: TStringField;
    CDS_CLIENTESCLI_ENDERECO: TStringField;
    CDS_CLIENTESCLI_NUMERO: TStringField;
    CDS_CLIENTESCLI_COMPLEMENTO: TStringField;
    CDS_CLIENTESCLI_BAIRRO: TStringField;
    CDS_CLIENTESCLI_CIDADE: TStringField;
    CDS_CLIENTESCLI_UF: TStringField;
    CDS_CLIENTESCLI_TELEFONE: TStringField;
    CDS_CLIENTESCLI_CELULAR: TStringField;
    CDS_CLIENTESCLI_CEP: TStringField;
    CDS_CLIENTESCLI_EMAIL: TStringField;
    CDS_PRODUTOSPRO_CODIGO: TIntegerField;
    CDS_PRODUTOSTPP_CODIGO: TIntegerField;
    CDS_PRODUTOSPRO_DESCRICAO: TStringField;
    CDS_PRODUTOSPRO_REFERENCIA: TStringField;
    CDS_PRODUTOSPRO_ESTOQUE: TFMTBCDField;
    CDS_PRODUTOSPRO_PRECOCUSTO: TFMTBCDField;
    CDS_PRODUTOSPRO_PRECOVENDA: TFMTBCDField;
    CDS_PRODUTOSPRO_EMBALAGEM: TStringField;
    CDS_PRODUTOSPRO_CODIGOBARRAS: TStringField;
    CDS_PRODUTOSPRO_FOTO: TStringField;
    CDS_PROFISSOESPRF_CODIGO: TIntegerField;
    CDS_PROFISSOESPRF_DESCRICAO: TStringField;
    CDS_PROFISSOESPRF_SALARIO: TFMTBCDField;
    CDS_TIPOPRODUTOTPP_CODIGO: TIntegerField;
    CDS_TIPOPRODUTOTPP_DESCRICAO: TStringField;
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
