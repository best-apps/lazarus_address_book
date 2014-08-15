unit form_view_error;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TfrmViewError }

  TfrmViewError = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end; 

var
  frmViewError: TfrmViewError;

implementation

{$R *.lfm}

{ TfrmViewError }

procedure TfrmViewError.Button1Click(Sender: TObject);
begin
  self.Close;
end;

end.

