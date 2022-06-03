program TesteInfo;

uses
  Vcl.Forms,
  untTesteInfo in 'untTesteInfo.pas' {Form1},
  uPessoa in 'uPessoa.pas',
  uEndereco in 'uEndereco.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
