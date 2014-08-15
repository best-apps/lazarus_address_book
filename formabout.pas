unit FormAbout;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls, ComCtrls, RTTICtrls,Global;

type

  { TfrmAbout }

  TfrmAbout = class(TForm)
    ButtonClose: TButton;
    Image1: TImage;
    LabelInfo: TLabel;
    LabelTitle: TLabel;
    Memo1: TMemo;
    Memo2: TMemo;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    procedure ButtonCloseClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Label1Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end; 

var
  frmAbout: TfrmAbout;

implementation

{$R *.lfm}

{ TfrmAbout }

procedure TfrmAbout.FormCreate(Sender: TObject);
begin
    self.Caption:= 'About ' + nMainFormCaption + global.Version;
    self.LabelTitle.Caption:= nMainFormCaption + global.Version;
    self.ButtonClose.Caption:=nLableClose;
    self.LabelInfo.Caption:=nLableSoftInfo;


end;

procedure TfrmAbout.Label1Click(Sender: TObject);
begin

end;

procedure TfrmAbout.ButtonCloseClick(Sender: TObject);
begin
  self.Close;
end;

end.

