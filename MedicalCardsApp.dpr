program MedicalCardsApp;

uses
  Vcl.Forms,
  DependencyInjection in 'DependencyInjection.pas',  // Должен быть первым
  MainForm in 'UI/Forms/MainForm.pas',
  PatientCardFrame in 'UI/Frames/PatientCardFrame.pas',
  Patient in 'Core/Entities/Patient.pas',
  IPatientRepository in 'Core/Repositories/IPatientRepository.pas',
  JsonPatientRepository in 'Infrastructure/Repositories/JsonPatientRepository.pas',
  FileLogger in 'Infrastructure/Logging/FileLogger.pas',
  PatientService in 'Application/Services/PatientService.pas';

{$R *.res}

begin
  // Инициализация и создание формы уже выполнены в DependencyInjection.pas
  Application.Run;
end.
