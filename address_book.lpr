program address_book;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces,SysUtils,Dialogs, // this includes the LCL widgetset
  Process,LCLintf, FileUtil, LCLProc, Classes, IniFiles, gettext,Translations,
  Forms, dbflaz, runtimetypeinfocontrols, form_main, Global, FormAbout,
  formdisplay, form_view_error;

{$R *.res}
procedure TranslateLCL;
var
  AProcess: TProcess;
  AStringList: TStringList;
  Conffile: Tinifile;
  mHandle : longint;
  hMutex : longint;
begin
   {$IFDEF LINUX}
     global.GetSysDefaultEncodeing();
     AProcess := TProcess.Create(nil);
     AStringList := TStringList.Create;
     AProcess.CommandLine := '';
     AProcess.Options := AProcess.Options + [poWaitOnExit, poUsePipes];
     AProcess.Execute;
     AStringList.LoadFromStream(AProcess.Output);
     Lu:=AStringList.Strings[0];
     AProcess.Free;
     AStringList.Free;
     fileconf:=(Lu+'/Conf.ini');
     LangLu:=Lu+'/locale/';
  {$ELSE}
     Lu := ExtractFilePath(ParamStr(0));
     fileconf:=(Lu+'Conf.ini');
     LangLu:=Lu+'locale\';
  {$ENDIF}
  LCLGetLanguageIDs(Lang,FallbackLang); // in unit LCLProc
  if lang = 'ch_CH' then lang:='zh';
  if FallbackLang = 'ch' then FallbackLang:='zh';
  if global.MYDefaultTextEncoding='cp950' then
  begin
      lang:='big5';
  end;
  if FileExists(fileconf) then
  begin
   Conffile := TInifile.Create(fileconf) ;
   try
     lang:= Conffile.ReadString(Environment,'Lang',lang);
     FallbackLang:= Conffile.ReadString(Environment,'FallbackLang',FallbackLang);
   finally
     Conffile.Free;
   end;
  end;
  if Lang = 'Default' then
  begin
    LCLGetLanguageIDs(Lang,FallbackLang);
    if lang = 'ch_CH' then lang:='zh';
    if FallbackLang = 'ch' then FallbackLang:='zh';
    if global.MYDefaultTextEncoding='cp950' then
    begin
      lang:='big5';
      FallbackLang:='big5'
    end;
  end;


 Translations.TranslateUnitResourceStrings('Global',
                      'locale/address_book.%s.po',Lang,FallbackLang);
end;
begin
  TranslateLCL;
  //ShowMessage(global.nALable00 + ' ' + LangLu);
  Application.Initialize;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TfrmAbout, frmAbout);
  Application.CreateForm(TfrmDisplay, frmDisplay);
  Application.CreateForm(TfrmViewError, frmViewError);
  Application.Run;
end.

