program Swewind1;

uses
  Forms,
  swewind in 'swewind.pas' {Form1};

{$R *.RES}

begin
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
