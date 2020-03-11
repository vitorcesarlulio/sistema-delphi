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
    dbNav: TDBNavigator;
    Panel2: TPanel;
    rgModelo: TRadioGroup;
    edtModelo: TEdit;
    btnAbrir: TBitBtn;
    dbgModelo: TDBGrid;
    dsDados: TDataSource;
    lbCodigo: TLabel;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure rgModeloClick(Sender: TObject);
    procedure dbgModeloDblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnApagarClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_modelo: Tfrm_modelo;

implementation

{$R *.dfm}


procedure Tfrm_modelo.btnAlterarClick(Sender: TObject);
begin
  //BOTAO ALTERAR
  dsDados.DataSet.Edit;
end;

procedure Tfrm_modelo.btnApagarClick(Sender: TObject);
begin
  //BOTAO APAGAR - CONFIRMAR EXCLUSAO
  if Application.MessageBox ('Confirma Exclusão?', 'Atenção',
                            MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON2)
                            = IDYES then
                            dsDados.DataSet.Delete;
end;

procedure Tfrm_modelo.btnCancelarClick(Sender: TObject);
begin
  //BOTAO CANCELAR
  dsDados.DataSet.Cancel;
end;

procedure Tfrm_modelo.btnFecharClick(Sender: TObject);
begin
  //BOTAO FECHAR
  Close;
end;

procedure Tfrm_modelo.btnNovoClick(Sender: TObject);
begin
  //BOTAO NOVO
  dsDados.DataSet.Append;
end;

procedure Tfrm_modelo.btnSalvarClick(Sender: TObject);
begin
  //BOTAO SALVAR - ABRE UM REGISTRO EM BRANCO NA ONDE O dsDados ESTA LIGADO
  dsDados.DataSet.Post;
end;

procedure Tfrm_modelo.dbgModeloDblClick(Sender: TObject);
begin
  //DUPLO CLICK NO dbgModelo ELE ABRE A ABA DADOS//
  pgcModelo.ActivePageIndex := 0;
end;

procedure Tfrm_modelo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //CONFIRMACAO PARA FECHAR O FORM//
  if Application.MessageBox ('Deseja mesmo fechar?', 'Aviso',
                            MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON2)
                            = IDNO then Abort;
end;

procedure Tfrm_modelo.FormKeyPress(Sender: TObject; var Key: Char);
begin
  //FECHAR FORMULARIO COM A TECLA "ESC"//
  if Key=#27 then
    close;
end;

procedure Tfrm_modelo.rgModeloClick(Sender: TObject);
begin
  //MUDAR LABEL DE ACORDO COM O QUE O USUARIO SELECIONA
  lbCodigo.caption := rgModelo.Items[rgModelo.ItemIndex];
end;

end. //FIM
