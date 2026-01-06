program Music_PlayerProject;

uses
  Forms,
  Music_Player in 'Music_Player.pas' {frmAudio};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmAudio, frmAudio);
  Application.Run;
end.
