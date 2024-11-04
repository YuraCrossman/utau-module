library UTAUModule;

{ Create by Yura Crossman }

uses
  SysUtils,
  ShellAPI,
  Windows,
  Classes;

{$R *.res}
function setup(integer:hwnd):PChar; stdcall;
begin
  ShellExecute(0,nil,'UTAUModule.exe',nil,nil,SW_NORMAL);
end;

exports setup;

begin
end.
 