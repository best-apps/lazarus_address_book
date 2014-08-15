unit FormSelectValue;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs,Global,
  sqlite3conn, sqldb;

type

  { TfrmSelectValue }

  TfrmSelectValue = class(TForm)
    SQLite3Connection1: TSQLite3Connection;
    SQLQueryAddList: TSQLQuery;
    SQLTransaction1: TSQLTransaction;
    procedure FormCreate(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
    procedure SelectValue(type1 : String);
  end;


var
  frmSelectValue: TfrmSelectValue;

implementation

{$R *.lfm}

procedure TfrmSelectValue.FormCreate(Sender: TObject);
begin
  try
      self.SQLite3Connection1.DatabaseName:='data/addressbook.db';
      self.SQLite3Connection1.Open;

   except
     ShowMessage('open database error.');
     exit;
   end;
end;

procedure TfrmSelectValue.SelectValue(type1 : String);
begin
  self.Caption:='Select Department';
  if type1='Company' then
  begin
    self.Caption:='Select Company ';
  end;
end;
end.

