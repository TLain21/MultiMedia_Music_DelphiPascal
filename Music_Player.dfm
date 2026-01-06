object frmAudio: TfrmAudio
  Left = 438
  Top = 197
  BorderIcons = [biSystemMenu, biMaximize]
  BorderStyle = bsSingle
  Caption = 'frmAudio'
  ClientHeight = 311
  ClientWidth = 397
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 0
    Top = 0
    Width = 397
    Height = 20
    Align = alTop
    Alignment = taCenter
    Caption = 'Aplikasi Audio Player'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 0
    Top = 20
    Width = 397
    Height = 13
    Align = alTop
    Alignment = taCenter
    Caption = 'Dibuat Oleh: OKOC'
  end
  object lblNamaFile: TLabel
    Left = 0
    Top = 235
    Width = 397
    Height = 76
    Align = alClient
    AutoSize = False
    WordWrap = True
  end
  object grp1: TGroupBox
    Left = 0
    Top = 33
    Width = 397
    Height = 185
    Align = alTop
    Caption = 'Informasi File Audio'
    TabOrder = 0
  end
  object pbProgress: TProgressBar
    Left = 0
    Top = 218
    Width = 397
    Height = 17
    Align = alTop
    TabOrder = 1
  end
  object mpLatih: TMediaPlayer
    Left = 16
    Top = 240
    Width = 253
    Height = 30
    Enabled = False
    TabOrder = 2
  end
  object btBuka: TButton
    Left = 296
    Top = 240
    Width = 75
    Height = 25
    Caption = 'Buka'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = btBukaClick
  end
  object tmrLatih: TTimer
    Enabled = False
    Interval = 100
    OnTimer = tmrLatihTimer
    Left = 168
    Top = 160
  end
  object dlgBuka: TOpenDialog
    Left = 232
    Top = 168
  end
end
