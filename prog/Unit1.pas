unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, IniFiles, ExtCtrls, JPEG, acImage, StdCtrls, sLabel, RzPanel,
  RzLabel, RzBckgnd, XPMan, ComCtrls, MPlayer, Buttons, RzTrkBar;

type
  TForm1 = class(TForm)
    Ava: TsImage;
    Name: TsLabel;
    Panel1: TRzPanel;
    Ver: TLabel;
    Panel2: TRzPanel;
    About: TLabel;
    XPManifest1: TXPManifest;
    Header: THeaderControl;
    URL1: TRzURLLabel;
    URLPanel: TRzPanel;
    URL3: TRzURLLabel;
    URL2: TRzURLLabel;
    Audio: TMediaPlayer;
    Background: TRzBackground;
    ListBox: TListBox;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  ini: TIniFile;
  pathINI: string;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
var b: TStringList;
begin
  pathINI:=extractfilepath(application.ExeName)+'UTAUModule.ini';
  if FileExists(pathINI) then
   begin
    ini:=TIniFile.Create(pathINI);
    Form1.Caption:=ini.ReadString('UTAUModule','Title','');
    Ava.Picture.LoadFromFile(ini.ReadString('UTAUModule','Avatar',''));
    if ini.ReadString('UTAUModule','Name','')=ini.ReadString('UTAUModule','Name','') then
    Name.Caption:=ini.ReadString('UTAUModule','Title','') else Name.Caption:=ini.ReadString('UTAUModule','Name','');
    Ver.Caption:='Version '+ini.ReadString('UTAUModule','Ver','');
    Header.Sections[0].Text:='Edited by '+ini.ReadString('UTAUModule','Author','');
    Header.Sections[1].Text:='Illustration by '+ini.ReadString('UTAUModule','Illust','');
    Header.Sections[2].Text:='Voicer '+ini.ReadString('UTAUModule','Voicer','');
    if not(ini.ReadString('UTAUModule','URL1','') = '') and not(ini.ReadString('UTAUModule','URL1Name','URL Title') = 'URL Title') then begin URL1.Caption:=ini.ReadString('UTAUModule','URL1Name',''); URL1.URL:=ini.ReadString('UTAUModule','URL1',''); URL1.Visible:=True; end;
    if not(ini.ReadString('UTAUModule','URL2','') = '') and not(ini.ReadString('UTAUModule','URL2Name','URL Title') = 'URL Title') then begin URL2.Caption:=ini.ReadString('UTAUModule','URL2Name',''); URL2.URL:=ini.ReadString('UTAUModule','URL2',''); URL2.Visible:=True; end;
    if not(ini.ReadString('UTAUModule','URL3','') = '') and not(ini.ReadString('UTAUModule','URL3Name','URL Title') = 'URL Title') then begin URL3.Caption:=ini.ReadString('UTAUModule','URL3Name',''); URL3.URL:=ini.ReadString('UTAUModule','URL3',''); URL3.Visible:=True; end;
    if ini.ReadString('UTAUModule','Audio','') = '' then Audio.Visible:=False else begin Audio.FileName:=ini.ReadString('UTAUModule','Audio',''); Audio.Open; end;
    if ini.ReadString('UTAUModule','Background','yes') = 'yes' then Background.Visible:=True;
    if ini.ReadString('UTAUModule','Background','') = '' then begin Background.Visible:=False; URL1.UnvisitedColor:=clBlack; URL2.UnvisitedColor:=clBlack; URL3.UnvisitedColor:=clBlack;end
    end;
    if FileExists(extractfilepath(application.ExeName)+'readme.txt') then begin
    b:=TStringList.Create;
    b.LoadFromFile(extractfilepath(application.ExeName)+'readme.txt');
    ListBox.Items:=b;
    b.Free; end;
end;

end.

