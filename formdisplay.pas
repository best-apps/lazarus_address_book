unit formdisplay;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  global;

type

  { TfrmDisplay }

  TfrmDisplay = class(TForm)
    ButtonCopy: TButton;
    ButtonClose: TButton;
    Memo1: TMemo;
    procedure ButtonCloseClick(Sender: TObject);
    procedure ButtonCopyClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end; 

var
  frmDisplay: TfrmDisplay;

implementation

{$R *.lfm}

{ TfrmDisplay }

procedure TfrmDisplay.FormCreate(Sender: TObject);
begin
   self.ButtonCopy.Caption:= nLableCopyToClipBoard;
   self.ButtonClose.Caption:= global.nLableClose ;
   self.Caption:=nlableDisplay;
end;

procedure TfrmDisplay.ButtonCloseClick(Sender: TObject);
begin
     self.Close;
end;

procedure TfrmDisplay.ButtonCopyClick(Sender: TObject);
begin
       self.Memo1.SelectAll;
       self.Memo1.CopyToClipboard;
end;

end.

