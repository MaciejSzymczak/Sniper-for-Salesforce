program SalesforceSniper;

uses
  Forms,
  UMain in 'UMain.pas' {FSniper};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFSniper, FSniper);
  Application.Run;
end.
