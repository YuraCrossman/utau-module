unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, IniFiles, StdCtrls, RzTray, ExtDlgs, JPEG, ShellAPI;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Title: TEdit;
    Button1: TButton;
    Icon: TRzTrayIcon;
    Label2: TLabel;
    Picture: TOpenPictureDialog;
    Ava: TButton;
    Label3: TLabel;
    Dialog1: TOpenDialog;
    Audio: TButton;
    Label4: TLabel;
    Ver: TEdit;
    Label5: TLabel;
    URL1: TEdit;
    URL2: TEdit;
    URL3Name: TEdit;
    URL3: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    Author: TEdit;
    Label8: TLabel;
    Name: TEdit;
    Label9: TLabel;
    Illustrator: TEdit;
    Label10: TLabel;
    Voicer: TEdit;
    Button2: TButton;
    AvaH: TLabel;
    AudioH: TLabel;
    URL1Name: TEdit;
    URL2Name: TEdit;
    Label11: TLabel;
    Radio1: TRadioButton;
    Radio2: TRadioButton;
    procedure FormCreate(Sender: TObject);
    procedure SaveClick(Sender: TObject);
    procedure AvaClick(Sender: TObject);
    procedure AudioClick(Sender: TObject);
    procedure OpenClick(Sender: TObject);
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
begin
  pathINI:=extractfilepath(application.ExeName)+'UTAUModule.ini';
  Picture.DefaultExt:=extractfilepath(application.ExeName);
  Dialog1.DefaultExt:=extractfilepath(application.ExeName);
  if FileExists(pathINI) then
   begin
    ini:=TIniFile.Create(pathINI);
    Title.Text:=ini.ReadString('UTAUModule','Title','');
    Ver.Text:=ini.ReadString('UTAUModule','Ver','');
    Author.Text:=ini.ReadString('UTAUModule','Author','');
    Name.Text:=ini.ReadString('UTAUModule','Name','');
    Illustrator.Text:=ini.ReadString('UTAUModule','Illust','');
    Voicer.Text:=ini.ReadString('UTAUModule','Voicer','');
    AvaH.Hint:=ini.ReadString('UTAUModule','Avatar','');
    AudioH.Hint:=ini.ReadString('UTAUModule','Audio','');
    URL1.Text:=ini.ReadString('UTAUModule','URL1','');
    URL1Name.Text:=ini.ReadString('UTAUModule','URL1Name','URL Title');
    URL2.Text:=ini.ReadString('UTAUModule','URL2','');
    URL2Name.Text:=ini.ReadString('UTAUModule','URL2Name','URL Title');
    URL3.Text:=ini.ReadString('UTAUModule','URL3','');
    URL3Name.Text:=ini.ReadString('UTAUModule','URL3Name','URL Title');
   end
end;

procedure TForm1.SaveClick(Sender: TObject);
begin
  ini:=TIniFile.Create(pathINI);
  ini.WriteString('UTAUModule','Title',Title.Text);
  ini.WriteString('UTAUModule','Avatar',Picture.FileName);
  ini.WriteString('UTAUModule','Name',Name.Text);
  ini.WriteString('UTAUModule','Ver',Ver.Text);
  ini.WriteString('UTAUModule','Author',Author.Text);
  ini.WriteString('UTAUModule','Illust',Illustrator.Text);
  ini.WriteString('UTAUModule','Voicer',Voicer.Text);
  ini.WriteString('UTAUModule','Audio',Dialog1.FileName);
  ini.WriteString('UTAUModule','URL1',URL1.Text);
  ini.WriteString('UTAUModule','URL2',URL2.Text);
  ini.WriteString('UTAUModule','URL3',URL3.Text);
  if (URL1Name.Text = '') or (URL1Name.Text = 'URL Title') then ini.WriteString('UTAUModule','URL1Name','') else ini.WriteString('UTAUModule','URL1Name',URL1Name.Text);
  if (URL2Name.Text = '') or (URL2Name.Text = 'URL Title') then ini.WriteString('UTAUModule','URL2Name','') else ini.WriteString('UTAUModule','URL2Name',URL2Name.Text);
  if (URL3Name.Text = '') or (URL3Name.Text = 'URL Title') then ini.WriteString('UTAUModule','URL3Name','') else ini.WriteString('UTAUModule','URL3Name',URL3Name.Text);
  if Radio1.Checked = True then ini.WriteString('UTAUModule','Background','yes');
  if Radio2.Checked = True then ini.WriteString('UTAUModule','Background','');
  Form1.Refresh;
  Icon.ShowBalloonHint(Form1.Caption,'File save!',bhiInfo,10);
end;

procedure TForm1.AvaClick(Sender: TObject);
begin
  if Picture.Execute then AvaH.Hint:=Picture.FileName;
end;

procedure TForm1.AudioClick(Sender: TObject);
begin
  if Dialog1.Execute then AudioH.Hint:=Dialog1.FileName;
end;

procedure TForm1.OpenClick(Sender: TObject);
begin
  ShellExecute(handle,'open','UTAUModule.exe',nil,nil,SW_SHOWNORMAL);
end;

end.
