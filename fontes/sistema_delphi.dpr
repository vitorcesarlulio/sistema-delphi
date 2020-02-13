program sistema_delphi;

uses
  Vcl.Forms,
  u_frm_modelo in 'u_frm_modelo.pas' {frm_modelo},
  u_frm_principal in 'u_frm_principal.pas' {frm_principal};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tfrm_modelo, frm_modelo);
  Application.CreateForm(Tfrm_principal, frm_principal);
  Application.Run;
end.
