program PadPRJ;

uses
  Forms,
  UnitMain in 'UnitMain.pas' {MainForm};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
