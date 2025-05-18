unit DependencyInjection;

interface

uses
  MainForm,
  IPatientServ,
  PatientService,
  IPatientRepo,
  JsonPatientRepository,
  FileLogger;

var
  PatientService: IPatientService;
  Logger: ILogger;
  MainForm: TMainForm; // ќбъ€вление здесь вместо .dpr

procedure InitializeDependencies;

implementation

uses
  Vcl.Forms;

procedure InitializeDependencies;
begin
  Logger := TFileLogger.Create('app.log');
  PatientService := TPatientService.Create(
    TJsonPatientRepository.Create('patients.json')
  );

  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  MainForm := TMainForm.Create(Application);
  Application.MainForm := MainForm;
end;

initialization
  InitializeDependencies;

finalization
  MainForm.Free;
end.
