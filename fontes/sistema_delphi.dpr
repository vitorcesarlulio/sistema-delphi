program sistema_delphi;

uses
  Vcl.Forms,
  u_frm_modelo in 'u_frm_modelo.pas' {frm_modelo},
  u_frm_principal in 'u_frm_principal.pas' {frm_principal},
  udm in 'dm.pas' {DataModule1: TDataModule},
  dm in 'dm.pas' {DataModule2: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tfrm_modelo, frm_modelo);
  Application.CreateForm(Tfrm_principal, frm_principal);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TDataModule2, DataModule2);
  Application.Run;
end.
