program Supply;

uses
  Forms,
  SupplyMain in 'SupplyMain.pas' {fMailSupply};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfMailSupply, fMailSupply);
  Application.Run;
end.
