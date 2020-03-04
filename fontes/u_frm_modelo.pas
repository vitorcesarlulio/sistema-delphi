unit u_frm_modelo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.StdCtrls, Vcl.Buttons, Data.DB, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids;

type
  Tfrm_modelo = class(TForm)
    pgcModelo: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel1: TPanel;
    btnNovo: TBitBtn;
    btnSalvar: TBitBtn;
    btnCancelar: TBitBtn;
    btnApagar: TBitBtn;
    btnAlterar: TBitBtn;
    btnImprimir: TBitBtn;
    btnFechar: TBitBtn;
    DBNav: TDBNavigator;
    Panel2: TPanel;
    rgModelo: TRadioGroup;
    edtModelo: TEdit;
    btnAbrir: TBitBtn;
    dbgModelo: TDBGrid;
    dsDados: TDataSource;
    lbCodigo: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_modelo: Tfrm_modelo;

implementation

{$R *.dfm}

end.
