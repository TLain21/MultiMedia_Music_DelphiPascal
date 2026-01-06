unit Music_Player;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, MPlayer, ExtCtrls, ComCtrls;

type
  TfrmAudio = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lblNamaFile: TLabel;
    grp1: TGroupBox;
    pbProgress: TProgressBar;
    tmrLatih: TTimer;
    mpLatih: TMediaPlayer;
    dlgBuka: TOpenDialog;
    btBuka: TButton;
    procedure btBukaClick(Sender: TObject);
    procedure tmrLatihTimer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAudio: TfrmAudio;

implementation

{$R *.dfm}

procedure TfrmAudio.btBukaClick(Sender: TObject);
begin
if dlgBuka.Execute then
  begin
  lblNamaFile.Caption := dlgBuka.FileName;
  mpLatih.FileName := dlgBuka.FileName;
  mpLatih.Open;
  pbProgress.Position := mpLatih.Position;
  pbProgress.Max := mpLatih.Length;
  mpLatih.Enabled := True;
  tmrLatih.Enabled := True;
  end;
end;

procedure TfrmAudio.tmrLatihTimer(Sender: TObject);
begin
  pbProgress.Position := mpLatih.Position;
end;

end.
