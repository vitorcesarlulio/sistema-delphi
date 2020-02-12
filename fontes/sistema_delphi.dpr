program sistema_delphi;

uses
  Vcl.Forms,
  u_frm_modelo in 'u_frm_modelo.pas' {Form1},
  u_frm_principal in 'u_frm_principal.pas' {Form2},
  udm in 'udm.pas' {DataModule1: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
