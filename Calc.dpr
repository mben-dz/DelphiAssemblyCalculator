program Calc;

uses
  Vcl.Forms,
  Main.View in 'Main.View.pas' {MainView},
  API.AssemblyCalc in 'API\API.AssemblyCalc.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMainView, MainView);
  Application.Run;
end.
