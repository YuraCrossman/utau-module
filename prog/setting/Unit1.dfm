object Form1: TForm1
  Left = 122
  Top = 164
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'UTAUModule Settings'
  ClientHeight = 266
  ClientWidth = 441
  Color = clMenu
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 16
    Width = 68
    Height = 20
    Caption = 'Title form:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 16
    Top = 112
    Width = 115
    Height = 20
    Caption = 'Avatar (100x100):'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 224
    Top = 112
    Width = 102
    Height = 20
    Caption = 'Audio or video:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 16
    Top = 48
    Width = 51
    Height = 20
    Caption = 'Version:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 16
    Top = 144
    Width = 29
    Height = 20
    Caption = 'URL:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 16
    Top = 176
    Width = 63
    Height = 39
    Caption = 'Leave'#13'unnecessary'#13'blank'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label7: TLabel
    Left = 16
    Top = 80
    Width = 46
    Height = 20
    Hint = 'Can be left blank'
    Caption = 'Edited:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
  end
  object Label8: TLabel
    Left = 224
    Top = 16
    Width = 84
    Height = 20
    Hint = 'Can be left blank'
    Caption = 'Name UTAU:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
  end
  object Label9: TLabel
    Left = 224
    Top = 48
    Width = 66
    Height = 20
    Hint = 'Can be left blank'
    Caption = 'Illustrator:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
  end
  object Label10: TLabel
    Left = 224
    Top = 80
    Width = 44
    Height = 20
    Caption = 'Voicer:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object AvaH: TLabel
    Left = 194
    Top = 110
    Width = 9
    Height = 25
    Caption = '?'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
  end
  object AudioH: TLabel
    Left = 402
    Top = 110
    Width = 9
    Height = 25
    Caption = '?'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
  end
  object Label11: TLabel
    Left = 138
    Top = 200
    Width = 82
    Height = 20
    Caption = 'Background:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Title: TEdit
    Left = 88
    Top = 16
    Width = 121
    Height = 21
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object Button1: TButton
    Left = 149
    Top = 231
    Width = 75
    Height = 25
    Caption = 'Save'
    TabOrder = 1
    OnClick = SaveClick
  end
  object Ava: TButton
    Left = 136
    Top = 112
    Width = 51
    Height = 25
    Caption = 'Open'
    TabOrder = 2
    OnClick = AvaClick
  end
  object Audio: TButton
    Left = 344
    Top = 112
    Width = 51
    Height = 25
    Caption = 'Open'
    TabOrder = 3
    OnClick = AudioClick
  end
  object Ver: TEdit
    Left = 88
    Top = 48
    Width = 121
    Height = 21
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
  object URL1: TEdit
    Left = 56
    Top = 168
    Width = 121
    Height = 21
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
  end
  object URL2: TEdit
    Left = 184
    Top = 168
    Width = 121
    Height = 21
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
  end
  object URL3Name: TEdit
    Left = 312
    Top = 144
    Width = 121
    Height = 21
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    Text = 'URL Title'
  end
  object URL3: TEdit
    Left = 312
    Top = 168
    Width = 121
    Height = 21
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
  end
  object Author: TEdit
    Left = 88
    Top = 80
    Width = 121
    Height = 21
    Hint = 'Can be left blank'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 9
  end
  object Name: TEdit
    Left = 312
    Top = 16
    Width = 121
    Height = 21
    Hint = 'Can be left blank'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 10
  end
  object Illustrator: TEdit
    Left = 312
    Top = 48
    Width = 121
    Height = 21
    Hint = 'Can be left blank'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 11
  end
  object Voicer: TEdit
    Left = 312
    Top = 80
    Width = 121
    Height = 21
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 12
  end
  object Button2: TButton
    Left = 229
    Top = 231
    Width = 75
    Height = 25
    Caption = 'Open Module'
    TabOrder = 13
    OnClick = OpenClick
  end
  object URL1Name: TEdit
    Left = 56
    Top = 144
    Width = 121
    Height = 21
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 14
    Text = 'URL Title'
  end
  object URL2Name: TEdit
    Left = 184
    Top = 144
    Width = 121
    Height = 21
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 15
    Text = 'URL Title'
  end
  object Radio1: TRadioButton
    Left = 233
    Top = 205
    Width = 42
    Height = 17
    Caption = 'Yes'
    Checked = True
    TabOrder = 16
    TabStop = True
  end
  object Radio2: TRadioButton
    Left = 281
    Top = 205
    Width = 42
    Height = 17
    Caption = 'No'
    TabOrder = 17
  end
  object Icon: TRzTrayIcon
    Left = 408
    Top = 231
  end
  object Picture: TOpenPictureDialog
    Left = 376
    Top = 231
  end
  object Dialog1: TOpenDialog
    Filter = 
      'All  (*.mp3, *.mp2, *.wav, *.aiff, *.aac, *.flac, *.ogg, *.m4a, ' +
      '*.wma, *.avi, *.mp4, *.wmv, *.mov, *.mkv)|*.mp3;*.mp2;*.wav;*.ai' +
      'ff;*.aac;*.flac;*.ogg;*.m4a;*.wma;*.mp4;*.avi;*.wmv;*.mov;*.mkv|' +
      'Audio (*.mp3, *.mp2, *.wav, *.aiff, *.aac, *.flac, *.ogg, *.m4a,' +
      ' *.wma)|*.mp3;*.mp2;*.wav;*.aiff;*.aac;*.flac;*.ogg;*.m4a;*.wma|' +
      'Video (*.avi, *.mp4, *.wmv, *.mov, *.mkv)|*.mp4;*.avi;*.wmv;*.mo' +
      'v;*.mkv'
    Left = 344
    Top = 231
  end
end
