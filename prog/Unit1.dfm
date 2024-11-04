object Form1: TForm1
  Left = 231
  Top = 206
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Title'
  ClientHeight = 289
  ClientWidth = 507
  Color = clWindow
  Ctl3D = False
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Background: TRzBackground
    Left = 0
    Top = 0
    Width = 507
    Height = 272
    Active = True
    Align = alClient
    ImageStyle = isCenter
    ShowGradient = True
    ShowImage = False
    ShowTexture = False
  end
  object Ava: TsImage
    Left = 32
    Top = 16
    Width = 105
    Height = 105
    AutoSize = True
    Center = True
    Picture.Data = {07544269746D617000000000}
    SkinData.SkinSection = 'CHECKBOX'
  end
  object Label1: TLabel
    Left = 324
    Top = 258
    Width = 182
    Height = 13
    Alignment = taRightJustify
    Caption = 'Module for UTAU by Yura Crossman'
  end
  object Panel1: TRzPanel
    Left = 160
    Top = 16
    Width = 337
    Height = 41
    TabOrder = 0
    object Name: TsLabel
      Left = 2
      Top = 2
      Width = 333
      Height = 24
      Align = alClient
      Alignment = taCenter
      Caption = 'Name'
      ParentFont = False
      Layout = tlCenter
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold, fsItalic]
    end
    object Ver: TLabel
      Left = 2
      Top = 26
      Width = 333
      Height = 13
      Align = alBottom
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Version 0.0 or SuperPuper'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
  end
  object Panel2: TRzPanel
    Left = 160
    Top = 64
    Width = 337
    Height = 185
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 1
    object About: TLabel
      Left = 2
      Top = 2
      Width = 333
      Height = 25
      Align = alTop
      Alignment = taCenter
      Caption = 'About'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      Transparent = True
    end
    object ListBox: TListBox
      Left = 2
      Top = 27
      Width = 333
      Height = 156
      Align = alClient
      ItemHeight = 13
      TabOrder = 0
    end
  end
  object Header: THeaderControl
    Left = 0
    Top = 272
    Width = 507
    Height = 17
    Align = alBottom
    Sections = <
      item
        AllowClick = False
        AutoSize = True
        ImageIndex = -1
        Text = 'Edited by'
        Width = 169
      end
      item
        AutoSize = True
        ImageIndex = -1
        Text = 'Illustration by'
        Width = 169
      end
      item
        AutoSize = True
        ImageIndex = -1
        Text = 'Voicer'
        Width = 169
      end>
    Style = hsFlat
  end
  object URLPanel: TRzPanel
    Left = 32
    Top = 144
    Width = 105
    Height = 41
    BorderOuter = fsNone
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 3
    Transparent = True
    object URL1: TRzURLLabel
      Left = 0
      Top = 0
      Width = 105
      Height = 13
      Align = alTop
      Alignment = taCenter
      Caption = 'URL1'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsUnderline]
      ParentFont = False
      Transparent = True
      Visible = False
      Rotation = roFlat
      UnvisitedColor = clWhite
    end
    object URL3: TRzURLLabel
      Left = 0
      Top = 26
      Width = 105
      Height = 13
      Align = alTop
      Alignment = taCenter
      Caption = 'URL3'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsUnderline]
      ParentFont = False
      Transparent = True
      Visible = False
      Rotation = roFlat
      UnvisitedColor = clWhite
    end
    object URL2: TRzURLLabel
      Left = 0
      Top = 13
      Width = 105
      Height = 13
      Align = alTop
      Alignment = taCenter
      Caption = 'URL2'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsUnderline]
      ParentFont = False
      Transparent = True
      Visible = False
      Rotation = roFlat
      UnvisitedColor = clWhite
    end
  end
  object Audio: TMediaPlayer
    Left = 41
    Top = 208
    Width = 85
    Height = 30
    VisibleButtons = [btPlay, btPause, btStop]
    AutoRewind = False
    TabOrder = 4
  end
  object XPManifest1: TXPManifest
  end
end
