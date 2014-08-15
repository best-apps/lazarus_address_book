

unit Global;

{$mode objfpc}{$H+}

interface

uses
  Classes,Inifiles, SysUtils ,Dialogs,LConvEncoding;

//////////////////////////////////////////////////////////////////////////////
  const
  Environment='Environment';        // 表段常量名
  Messages='Messages';
  ColumnNums = 21;   //导入文件的字段数量
//////////////////////////////////////////////////////////////////////////////

  type AddRec=record
    id : longint;
    code : String;
    name : String;
    gender_id : integer;
    gender : String;
    dept_group_id : integer;
    dept_group : String;
    company :  String;
    company_id :  integer;
    A0 : String;
    A1 : String;
    A2 : String;
    A3 : String;
    A4 : String;
    A5 : String;
    A6 : String;
    A7 : String;
    A8 : String;
    A9 : String;
    A10 : String;
    A11 : String;
    A12 : String;
    A13 : String;
    A14 : String;
    A15 : String;

  end;

  type ConditionType = record
    code : String;
    name : String;

    dept_id : Integer;
    company_id : Integer;
    key : String;

  end;

  var
  Lu,LangLu, fileconf: String; //camino de dir
  Lang, FallbackLang: String;  //for Envirmoment Lenguage
  IniReader : TIniFile;
  current_rec : AddRec;
  condition : ConditionType;
  A_Lable : array[0..15] of String;
  currentMode : String;
  TxtInfo : String;
  MYDefaultTextEncoding: String;



//////////////////////////////////////////////////////////////////////////////
  resourcestring
  /////////////// FormMain ///////////////
  Version =' Ver 1.00';
  zh = 'Simplified Chinese';
  en = 'English';
  nDefault = 'Default';
  nMainFormCaption = 'Address Book Powered by LAZARUS ';
  nLanguagePrompt = 'you must restart this appliction to use new language.';
  nDatabaseNotConnected = 'Database Not Connected';

  nLableDelete ='Delete';
  nLableDeleteAll ='Delete All';
  nLableClose ='Close';
  nLabelNew = 'New';
  nLabelEdit = 'Edit';
  nLabelSave= 'Save';
  nLabelCancel = 'Cancel';
  nLabelExit = 'Exit';
  nLableView ='View';

  nLabelAll = 'All Records';
  nLabelBack = '<= BackSpace';

  nALableCode = 'Code';
  nALableName = 'Name';
  nALableCompanyCountry ='Company';
  nALableGroupDept ='Department';
  nLabelGender = 'Gender';
  nLabelMan = 'Male';
  nLabelWoMan = 'Female';
  nLableLanguage = 'Settings';
  nLabelNull = ' is Null.';

  nLableCopyToClipBoard = 'Copy To ClipBoard';
  nlableDisplay = 'View Detail information in Text';
  nLableSoftInfo ='Free,Green Software. Powered by Lazarus and sqlite.';
  nLableAuthor ='Author:';
  nLableEmail ='E-Mail:';

  nLableImport ='Import';
  nLableExport ='Export';
  nLableShow ='Show';
  nLableAbout ='About';
  nLableExportTitile ='Export csv file in UTF8.';
  {
  1职务          Position
  2办公电话      Office Phone
  3办公传真      Office Fax
  4移动电话      Mobile Phone
  5住宅电话      Home Phone
  6住宅传真      Home Fax
  7电子邮件      E-Mail
  8办公地址      Office Address
  9家庭地址      Home Address
  10公司网址     Company Web
  11个人网址     Personal Web
  12即时通讯     IM Account
  13备注1        Memo 1
  14备注2        Memo 2
  15备注3        Memo 3
  }
  nALable00 = 'Position';
  nALable01 = 'Office Phone';
  nALable02 = 'Office Fax';
  nALable03 = 'Mobile Phone';
  nALable04 = 'E-Mail';
  nALable05 = 'Home Phone';
  nALable06 = 'Home Fax';
  nALable07 = 'Office Address';
  nALable08 = 'Home Address';
  nALable09 = 'Company Site';
  nALable10 = 'Personal Site';
  nALable11 = 'IM Account';
  nALable12 = 'Memo 1';
  nALable13 = 'Memo 2';
  nALable14 = 'Memo 3';
  nALable15 = 'Memo 4';

  nLableAll = '------All------';
  nLableAdd = 'Add';
  nLableConfirm = 'Confirm';
  nLableCancel = 'Cancel';
  nLableGroupCompany ='Select company';
  nLableGroupDept ='Select group';

  nNotSaveData = 'Have not save data.';
  nHaveValue = 'Alreday there is this value:';

  nLableFormatNumErr = 'Columns count error:';

  nLableFormatCodeErr = 'Code is null:';
  nLableFormatNameErr = 'Name is null:';

  nLableImportSuccess='Import sucessed counts: ' ;
  nLableExportSuccess='Export sucessed counts: ' ;

  nLableRun ='Could not run over one time.';



//////////////////////////////////////////////////////////////////////////////

    procedure ClearRecData();
    procedure SetLables();
    function SetMode(mode : String) :  boolean;
    function Split(StrIn:string;Spliter:char):TStrings;
    function GetSysDefaultEncodeing():String;
    function ToUtf8(ss : string) : String;
    function ToLocalString(ss : string) : String;
implementation

function GetSysDefaultEncodeing():String;
begin
       MYDefaultTextEncoding:=GetDefaultTextEncoding();
       Result:= MYDefaultTextEncoding;
end;
function ToLocalString(ss : string) : String;
begin
    Result:=   LConvEncoding.ConvertEncoding(ss,EncodingUTF8,MYDefaultTextEncoding);
end;

function ToUtf8(ss : string) : String;
var
   tmp : String;
begin
   tmp:=   LConvEncoding.GuessEncoding(ss);

   Result:=   LConvEncoding.ConvertEncoding(ss,tmp,EncodingUTF8);


end;

function Split(StrIn:string;Spliter:char):TStrings;
var
   SptLen,StrLen:integer;
begin
     Result:=TStringList.Create;
     while SptLen>0 do
     begin
       StrLen:=Length(StrIn);
       SptLen:=pos(spliter,StrIn);
       Result.Add(trim(copy(StrIn,1,SptLen-1)));
       StrIn:=copy(StrIn,SptLen+1,StrLen-SptLen);
     end;
end;


    function SetMode(mode : String) :  boolean;
    var
       m : String;
    begin
       m:= currentMode;
       if (mode='View') and ((m='New') or (m='Edit')) then
       begin
           ShowMessage(nNotSaveData);
           Result:= false;
           exit;
       end;


       if m='View' then
       begin
           currentMode:= mode;
           Result:= true;
           exit;
       end;

       if (mode='Exit') and ((m='New') or (m='Edit')) then
       begin
           ShowMessage(nNotSaveData);
           Result:= false;
           exit;
       end;

       if ((mode='New') or (mode='Edit')) and ((m='New') or (m='Edit')) then
       begin
           ShowMessage(nNotSaveData);
           Result:= false;
           exit;
       end;

       if (mode='Save') and ((m='New') or (m='Edit')) then
       begin
           currentMode:= 'View';
           Result:= true;
           exit;
       end;
       if (mode='Cancel') and ((m='New') or (m='Edit')) then
       begin
           currentMode:= 'View';
           Result:= true;
           exit;
       end;

       currentMode:= mode;
       Result:=true;
    end;

    procedure SetLables();
    begin
        A_Lable[0]	:=	nALable00;
        A_Lable[1]	:=	nALable01;
        A_Lable[2]	:=	nALable02;
        A_Lable[3]	:=	nALable03;
        A_Lable[4]	:=	nALable04;
        A_Lable[5]	:=	nALable05;
        A_Lable[6]	:=	nALable06;
        A_Lable[7]	:=	nALable07;
        A_Lable[8]	:=	nALable08;
        A_Lable[9]	:=	nALable09;
        A_Lable[10]	:=	nALable10;
        A_Lable[11]	:=	nALable11;
        A_Lable[12]	:=	nALable12;
        A_Lable[13]	:=	nALable13;
        A_Lable[14]	:=	nALable14;
        A_Lable[15]	:=	nALable15;

    end;

    procedure ClearRecData();
    begin
    current_rec.id :=0 ;
    current_rec.code := '';
    current_rec.name := '';
    current_rec.gender_id :=0 ;
    current_rec.gender :='' ;
    current_rec.dept_group_id :=0;
    current_rec.dept_group :='' ;
    current_rec.company_id :=0  ;
    current_rec.company :=''  ;
    current_rec.A0 := '';
    current_rec.A1 := '';
    current_rec.A2 := '';
    current_rec.A3 := '';
    current_rec.A4 := '';
    current_rec.A5 := '';
    current_rec.A6 := '';
    current_rec.A7 := '';
    current_rec.A8 := '';
    current_rec.A9 := '';
    current_rec.A10 := '';
    current_rec.A11 := '';
    current_rec.A12 := '';
    current_rec.A13 := '';
    current_rec.A14 := '';
    current_rec.A15 := '';
    end;

end.

