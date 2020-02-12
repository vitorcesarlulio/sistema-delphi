program sistema_delphi;

uses
  Vcl.Forms,
  u_frm_modelo in 'u_frm_modelo.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
