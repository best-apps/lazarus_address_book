unit form_main;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, sqlite3conn, LConvEncoding, sqldb, db, dbf, Inifiles,
  FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls, ComCtrls, StdCtrls,
  DbCtrls, Menus, Global, FormAbout, formdisplay, form_view_error, DateUtils
  ;

type LablePtr =   ^TLabel;
type EditPtr =   ^TEdit;
type

  { TfrmMain }

  TfrmMain = class(TForm)
    Bevel1: TBevel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    Bevel5: TBevel;
    Bevel6: TBevel;
    ButtonView: TButton;
    ButtonSelectConfirm: TButton;
    ButtonNew: TButton;
    ButtonAll: TButton;
    ButtonA: TButton;
    ButtonA1: TButton;
    ButtonA10: TButton;
    ButtonA11: TButton;
    ButtonA12: TButton;
    ButtonA13: TButton;
    ButtonA14: TButton;
    ButtonA15: TButton;
    ButtonA16: TButton;
    ButtonA17: TButton;
    ButtonA18: TButton;
    ButtonA19: TButton;
    ButtonA2: TButton;
    ButtonA20: TButton;
    ButtonA21: TButton;
    ButtonA22: TButton;
    ButtonA23: TButton;
    ButtonA24: TButton;
    ButtonA25: TButton;
    ButtonBack: TButton;
    ButtonA3: TButton;
    ButtonA4: TButton;
    ButtonA5: TButton;
    ButtonA6: TButton;
    ButtonA7: TButton;
    ButtonA8: TButton;
    ButtonA9: TButton;
    ButtonEdit: TButton;
    ButtonSave: TButton;
    ButtonClose: TButton;
    ButtonCancel: TButton;
    ButtonSelectCancel: TButton;
    ButtonSelectAdd: TButton;
    ComboBoxCompany: TComboBox;
    ComboBoxDept: TComboBox;
    ComboBoxLanguage: TComboBox;
    DatasourceAddList: TDatasource;
    EditValue: TEdit;
    Edit_Code: TEdit;
    EditCode: TEdit;
    EditName: TEdit;
    Edit_Company: TEdit;
    EDIT_DEPT: TEdit;
    Edit_NAME: TEdit;
    GroupSelect: TGroupBox;
    ImageGender: TImage;
    ImageList1: TImageList;
    LableLanguage: TLabel;
    Label_Code: TLabel;
    Label_Company: TLabel;
    Label_Dept: TLabel;
    Label_Gender: TLabel;
    Label_Name: TLabel;
    lblCode: TLabel;
    lblCompany: TLabel;
    lblDept: TLabel;
    lblName: TLabel;
    ListBoxSelect: TListBox;
    ListView1: TListView;
    Memo1: TMemo;
    MenuItemDelete: TMenuItem;
    MenuItemExit: TMenuItem;
    MenuItemShow: TMenuItem;
    MenuItemDeleteAll: TMenuItem;
    OpenDialog1: TOpenDialog;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    PanelSmallKeys: TPanel;
    PanelTop: TPanel;
    PopupMenu1: TPopupMenu;
    PopupMenuTray: TPopupMenu;
    RadioButtonMan: TRadioButton;
    RadioButtonWoman: TRadioButton;
    SaveDialog1: TSaveDialog;
    ScrollBox1: TScrollBox;
    Splitter1: TSplitter;
    SQLite3Connection1: TSQLite3Connection;
    SQLQuery1: TSQLQuery;
    SQLQueryAddList: TSQLQuery;
    SQLScript1: TSQLScript;
    SQLTransaction1: TSQLTransaction;
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    TrayIcon1: TTrayIcon;



    procedure Button1Click(Sender: TObject);
    procedure ButtonCancelClick(Sender: TObject);
    procedure ButtonCloseClick(Sender: TObject);
    procedure ButtonEditClick(Sender: TObject);
    procedure ButtonNewClick(Sender: TObject);
    procedure ButtonAllClick(Sender: TObject);
    procedure ButtonA10Click(Sender: TObject);
    procedure ButtonA11Click(Sender: TObject);
    procedure ButtonA12Click(Sender: TObject);
    procedure ButtonA13Click(Sender: TObject);
    procedure ButtonA14Click(Sender: TObject);
    procedure ButtonA15Click(Sender: TObject);
    procedure ButtonA16Click(Sender: TObject);
    procedure ButtonA17Click(Sender: TObject);
    procedure ButtonA18Click(Sender: TObject);
    procedure ButtonA19Click(Sender: TObject);
    procedure ButtonA1Click(Sender: TObject);
    procedure ButtonA20Click(Sender: TObject);
    procedure ButtonA21Click(Sender: TObject);
    procedure ButtonA22Click(Sender: TObject);
    procedure ButtonA23Click(Sender: TObject);
    procedure ButtonA24Click(Sender: TObject);
    procedure ButtonA25Click(Sender: TObject);
    procedure ButtonA2Click(Sender: TObject);
    procedure ButtonA3Click(Sender: TObject);
    procedure ButtonA4Click(Sender: TObject);
    procedure ButtonA5Click(Sender: TObject);
    procedure ButtonA6Click(Sender: TObject);
    procedure ButtonA7Click(Sender: TObject);
    procedure ButtonA8Click(Sender: TObject);
    procedure ButtonA9Click(Sender: TObject);
    procedure ButtonAClick(Sender: TObject);
    procedure ButtonSaveClick(Sender: TObject);
    procedure ButtonSelectAddClick(Sender: TObject);
    procedure ButtonSelectCancelClick(Sender: TObject);
    procedure ButtonSelectConfirmClick(Sender: TObject);
    procedure ButtonViewClick(Sender: TObject);
    procedure ComboBoxLanguageChange(Sender: TObject);
    procedure ComboBoxCompanyChange(Sender: TObject);
    procedure ComboBoxDeptChange(Sender: TObject);
    procedure EditCodeChange(Sender: TObject);
    procedure EditNameChange(Sender: TObject);
    procedure Edit_CompanyChange(Sender: TObject);
    procedure Edit_CompanyClick(Sender: TObject);
    procedure EDIT_DEPTChange(Sender: TObject);
    procedure EDIT_DEPTClick(Sender: TObject);
    procedure Edit_NAMEChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);

    procedure FormCreate(Sender: TObject);
    procedure ListBoxSelectClick(Sender: TObject);
    procedure ListView1Click(Sender: TObject);
    procedure MenuItemDeleteClick(Sender: TObject);
    procedure MenuItemDeleteAllClick(Sender: TObject);
    procedure MenuItemExitClick(Sender: TObject);
    procedure MenuItemShowClick(Sender: TObject);
    procedure RadioButtonManChange(Sender: TObject);
    procedure RadioButtonWomanChange(Sender: TObject);
    procedure ScrollBox1Click(Sender: TObject);
    procedure Splitter1Moved(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure ToggleBox1Change(Sender: TObject);
    procedure TrayIcon1Click(Sender: TObject);
    procedure TrayIcon1DblClick(Sender: TObject);


  private
    lables : array [0..15] of LablePtr;
    edits : array [0..15] of EditPtr;
    SelectType : String;
    Pre_Id : longint;
    Pre_Value : String;
    current_time : Double;
    can_run_flag : boolean;
    { private declarations }
    procedure QueryAddress();
    procedure QueryAddressById(id : longint);
    procedure SetRecDataByDataSet();
    procedure SetEditsByRecData();

    procedure FillCompanyList();
    procedure GetConditions();
    procedure ClearEdits();
    procedure CreateOtherCtrls();
    procedure SetCtrlsReadonly(b : boolean);
    procedure ClearCtrlsData();
    function CheckCtrlsData():boolean;
    procedure SetCaptions();

    procedure ExportData(filename:String);
    procedure ImportData(filename:String);
    procedure InsertCurrentRecToDB(mode:integer);  // 1 ovewrite  2 create new 3 do not insert
    procedure UpdateRecoredById(id:Integer);
  public
    { public declarations }
  end; 

var
  frmMain: TfrmMain;

implementation

{$R *.lfm}

{ TfrmMain }

procedure TfrmMain.UpdateRecoredById(id:Integer);
var

  sql:String;
begin

   sql:= 'update  T_address set '
       + 'code=' + '''' + global.current_rec.code  + ''''
       + ',' +  'name=' + '''' + global.current_rec.name  + ''''
       + ',' +  'gender_id=' + inttostr(global.current_rec.gender_id)
       + ',' + 'company_id=' + inttostr(global.current_rec.company_id)
       + ',' + 'dept_group_id=' + inttostr(global.current_rec.dept_group_id);

       sql:= sql + ',A' + 	inttostr(0)	+ '='  + '''' + 	global.current_rec.A0	+ '''';
       sql:= sql + ',A' + 	inttostr(1)	+ '='  + '''' + 	global.current_rec.A1	+ '''';
       sql:= sql + ',A' + 	inttostr(2)	+ '='  + '''' + 	global.current_rec.A2	+ '''';
       sql:= sql + ',A' + 	inttostr(3)	+ '='  + '''' + 	global.current_rec.A3	+ '''';
       sql:= sql + ',A' + 	inttostr(4)	+ '='  + '''' + 	global.current_rec.A4	+ '''';
       sql:= sql + ',A' + 	inttostr(5)	+ '='  + '''' + 	global.current_rec.A5	+ '''';
       sql:= sql + ',A' + 	inttostr(6)	+ '='  + '''' + 	global.current_rec.A6	+ '''';
       sql:= sql + ',A' + 	inttostr(7)	+ '='  + '''' + 	global.current_rec.A7	+ '''';
       sql:= sql + ',A' + 	inttostr(8)	+ '='  + '''' + 	global.current_rec.A8	+ '''';
       sql:= sql + ',A' + 	inttostr(9)	+ '='  + '''' + 	global.current_rec.A9	+ '''';
       sql:= sql + ',A' + 	inttostr(10)	+ '='  + '''' + 	global.current_rec.A10	+ '''';
       sql:= sql + ',A' + 	inttostr(11)	+ '='  + '''' + 	global.current_rec.A11	+ '''';
       sql:= sql + ',A' + 	inttostr(12)	+ '='  + '''' + 	global.current_rec.A12	+ '''';
       sql:= sql + ',A' + 	inttostr(13)	+ '='  + '''' + 	global.current_rec.A13	+ '''';
       sql:= sql + ',A' + 	inttostr(14)	+ '='  + '''' + 	global.current_rec.A14	+ '''';
       sql:= sql + ',A' + 	inttostr(15)	+ '='  + '''' + 	global.current_rec.A15	+ '''';
       sql := sql + ' where id=' + inttostr(id);
       self.SQLQueryAddList.Close;
       self.SQLQueryAddList.SQL.Clear;
       self.SQLQueryAddList.SQL.Add(sql);

       self.SQLQueryAddList.ExecSQL;
       self.SQLTransaction1.Commit;


end;

procedure TfrmMain.InsertCurrentRecToDB(mode:integer);  // 1 ovewrite by name  2 create new 3 do not insert
var
  i   : integer;
  sql : String;
  id  : integer;
begin
  self.SQLQueryAddList.Close;
  self.SQLQueryAddList.SQL.Clear;
  self.SQLQueryAddList.SQL.Add('select * from t_address where name =' + '''' + global.current_rec.name + '''');
  self.SQLQueryAddList.Open;
  id:=0;
  if (self.SQLQueryAddList.RecordCount>0) and  (mode=3) then
  begin
      exit;
  end;

  if (self.SQLQueryAddList.RecordCount>0) and  (mode=1) then
  begin
    id:=self.SQLQueryAddList.FieldByName('id').AsInteger;
    self.UpdateRecoredById(id);

  end;

  if (self.SQLQueryAddList.RecordCount>=0) and  (mode=2) then
  begin
      sql:= 'insert into T_address (code,name,gender_id,company_id,dept_group_id,A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15)';
      sql:= sql + ' values(' + ''''  + global.current_rec.code;
      sql:= sql +  ''''+ ',' + '''' + global.current_rec.name + '''' ;
      sql:= sql +   ','   +  inttostr(global.current_rec.gender_id) ;
      sql:= sql +   ','   +  inttostr(global.current_rec.company_id) ;
      sql:= sql +   ','   +  inttostr(global.current_rec.dept_group_id) ;
       			 sql:= sql + ','+ '''' + 	global.current_rec.A0	+ '''';
       sql:= sql + ','+ '''' + 	global.current_rec.A1	+ '''';
       sql:= sql + ','+ '''' + 	global.current_rec.A2	+ '''';
       sql:= sql + ','+ '''' + 	global.current_rec.A3	+ '''';
       sql:= sql + ','+ '''' + 	global.current_rec.A4	+ '''';
       sql:= sql + ','+ '''' + 	global.current_rec.A5	+ '''';
       sql:= sql + ','+ '''' + 	global.current_rec.A6	+ '''';
       sql:= sql + ','+ '''' + 	global.current_rec.A7	+ '''';
       sql:= sql + ','+ '''' + 	global.current_rec.A8	+ '''';
       sql:= sql + ','+ '''' + 	global.current_rec.A9	+ '''';
       sql:= sql + ','  + '''' + 	global.current_rec.A10	+ '''';
       sql:= sql + ','  + '''' + 	global.current_rec.A11	+ '''';
       sql:= sql + ','  + '''' + 	global.current_rec.A12	+ '''';
       sql:= sql + ','  + '''' + 	global.current_rec.A13	+ '''';
       sql:= sql + ','  + '''' + 	global.current_rec.A14	+ '''';
       sql:= sql + ','  + '''' + 	global.current_rec.A15	+ '''';
       sql := sql + ')';

       self.SQLQueryAddList.Close;
       self.SQLQueryAddList.SQL.Clear;
       self.SQLQueryAddList.SQL.Add(sql);
       self.SQLQueryAddList.ExecSQL;
       self.SQLTransaction1.Commit;
  end;

end;

procedure TfrmMain.ImportData(filename:String);
var
  s : String;
  i : integer;
  j : integer;
  ss : TStrings ;
  s_error : String;
  s_tmp : String;
  total : Integer;
begin
     s_error:='';
     total :=0;
     self.Memo1.Lines.Clear;
     self.Memo1.Lines.LoadFromFile(filename);
     //check the file data
     for i:=0 to self.Memo1.Lines.Count -1 do
     begin
          ss := global.Split(self.Memo1.Lines[i],',');
          if ss.Count<> global.ColumnNums then
          begin
            s_error:= s_error +   nLableFormatNumErr + '[' + IntToStr(i)  + ']' + self.Memo1.Lines[i] + #13;
          end;
          //check line
          for j:=0 to ss.Count-1 do
          begin
              if j=0 then
              begin
                  ss[j]:=trim(ss[j]) ;
                  if length(ss[j])=0 then
                  begin
                      s_error:= s_error +   nLableFormatCodeErr + '[' + IntToStr(i)  + ']' + self.Memo1.Lines[i] + #13;
                  end;
              end;
              if j=1 then
              begin
                  ss[j]:=trim(ss[j]) ;
                  if length(ss[j])=0 then
                  begin
                      s_error:= s_error +   nLableFormatNameErr + '[' + IntToStr(i)  + ']' + self.Memo1.Lines[i] + #13;
                  end;
              end;
          end;
     end;
     if s_error<>'' then
     begin
         frmViewError.Memo1.Text:=s_error ;
         frmViewError.ShowModal;
         exit;
     end;

     global.ClearRecData();
     //ignore first line
     for i:=1 to self.Memo1.Lines.Count -1 do
     begin
          ss := global.Split(self.Memo1.Lines[i],',');

          for j:=0 to ss.Count-1 do
          begin
               if j=0 then  global.current_rec.code:= global.ToUtf8(trim(ss[j]));
               if j=1 then  global.current_rec.name:=   global.ToUtf8(trim(ss[j]));
               if j=2 then  global.current_rec.company:= global.ToUtf8(trim(ss[j]));
               if j=3 then  global.current_rec.dept_group:= global.ToUtf8(trim(ss[j]));
               if j=4 then  global.current_rec.gender:= global.ToUtf8(trim(ss[j]));

               if j=5 then	global.current_rec.A0 :=  global.ToUtf8( trim(ss[j])) ;
               if j=6 then	global.current_rec.A1 :=  global.ToUtf8( trim(ss[j])) ;
               if j=7 then	global.current_rec.A2 :=  global.ToUtf8( trim(ss[j])) ;
               if j=8 then	global.current_rec.A3 :=  global.ToUtf8( trim(ss[j])) ;
               if j=9 then	global.current_rec.A4 :=  global.ToUtf8( trim(ss[j])) ;
               if j=10 then	global.current_rec.A5 :=  global.ToUtf8( trim(ss[j])) ;
               if j=11 then	global.current_rec.A6 :=  global.ToUtf8( trim(ss[j])) ;
               if j=12 then	global.current_rec.A7 :=  global.ToUtf8( trim(ss[j])) ;
               if j=13 then	global.current_rec.A8 :=  global.ToUtf8( trim(ss[j])) ;
               if j=14 then	global.current_rec.A9 :=  global.ToUtf8( trim(ss[j])) ;
               if j=15 then	global.current_rec.A10:=  global.ToUtf8( trim(ss[j])) ;
               if j=16 then	global.current_rec.A11:=  global.ToUtf8( trim(ss[j])) ;
               if j=17 then	global.current_rec.A12:=  global.ToUtf8( trim(ss[j])) ;
               if j=18 then	global.current_rec.A13:=  global.ToUtf8( trim(ss[j])) ;
               if j=19 then	global.current_rec.A14:=  global.ToUtf8( trim(ss[j])) ;
               if j=20 then	global.current_rec.A15:=  global.ToUtf8( trim(ss[j])) ;

          end;


          //get gender_id
     s_tmp:=uppercase(global.current_rec.gender);

     {
             if (  (s_tmp<>'MALE')  and  (s_tmp<>'FEMALE')
                       and  (s_tmp<>'男') and  (s_tmp<>'女') then
                       begin

                       end;
     }
     //ShowMessage(s_tmp);
     global.current_rec.gender_id:=1;
     if (s_tmp<>'MAN')  and  (s_tmp<>'MALE') and  (s_tmp<>'男')  then global.current_rec.gender_id:=0;

     //get compamy_id
     //global.current_rec.company
     self.SQLQueryAddList.Close;
     self.SQLQueryAddList.SQL.Clear;
     self.SQLQueryAddList.SQL.Add('select * from t_company where value=' + '''' + global.current_rec.company  + '''' );
     self.SQLQueryAddList.Open;
     if self.SQLQueryAddList.RecordCount=0 then
        begin
              self.SQLQueryAddList.Close;
              self.SQLQueryAddList.SQL.Clear;
              self.SQLQueryAddList.SQL.Add('insert into t_company (value) values (' + '''' + global.current_rec.company + '''' + ')');
              self.SQLQueryAddList.ExecSQL;
              self.SQLTransaction1.Commit;
              //reget compamy_id
              self.SQLQueryAddList.Close;
              self.SQLQueryAddList.SQL.Clear;
              self.SQLQueryAddList.SQL.Add('select * from t_company where value=' + '''' + global.current_rec.company  + '''' );
              self.SQLQueryAddList.Open;
              global.current_rec.company_id:= self.SQLQueryAddList.FieldByName('id').AsInteger;
        end
     else
         begin
             global.current_rec.company_id:= self.SQLQueryAddList.FieldByName('id').AsInteger;
         end;
     //////////////////////////////////////////

     //get dept_group_id
     //global.current_rec.dept_group;
     self.SQLQueryAddList.Close;
     self.SQLQueryAddList.SQL.Clear;
     self.SQLQueryAddList.SQL.Add('select * from t_dept where value=' + '''' + global.current_rec.dept_group  + '''' );
     self.SQLQueryAddList.Open;
     if self.SQLQueryAddList.RecordCount=0 then
        begin
              self.SQLQueryAddList.Close;
              self.SQLQueryAddList.SQL.Clear;
              self.SQLQueryAddList.SQL.Add('insert into t_dept (value) values (' + '''' + global.current_rec.dept_group + '''' + ')');
              self.SQLQueryAddList.ExecSQL;
              self.SQLTransaction1.Commit;
              //reget dept_group_id
              self.SQLQueryAddList.Close;
              self.SQLQueryAddList.SQL.Clear;
              self.SQLQueryAddList.SQL.Add('select * from t_dept where value=' + '''' + global.current_rec.dept_group  + '''' );
              self.SQLQueryAddList.Open;
              global.current_rec.dept_group_id:= self.SQLQueryAddList.FieldByName('id').AsInteger;
        end
     else
         begin
             global.current_rec.dept_group_id:= self.SQLQueryAddList.FieldByName('id').AsInteger;
         end;

         self.InsertCurrentRecToDB(2);
         total := total +1;
     end;

     showmessage(nLableImportSuccess + IntToStr(total));

end;

procedure TfrmMain.ExportData(filename:String);
var
  s : String;
  i : integer;
  j : integer;
  total : integer;
begin
  total:=0;
  self.Memo1.Lines.Clear;

  s:= self.Label_Code.Caption + ',';

  s:=  s + self.Label_Name.Caption + ',';

  s:= s+ self.Label_Company.Caption   + ',';


  s:=  s + self.Label_Dept.Caption + ',';
  s:=  s+ self.Label_Gender.Caption + ',';


  for i:=0 to 15 do
  begin
       s := s +   global.A_Lable[i];
       if i<15 then s:= s + ','
  end;
  s := global.ToLocalString(s);

  self.Memo1.Lines.Add(s);
  s:='';
  self.QueryAddress();
  self.SQLQueryAddList.First;
  while not self.SQLQueryAddList.EOF do
  begin
       s:='';
       s:= s + self.SQLQueryAddList.FieldByName('code').AsString + ',';
       s:= s + self.SQLQueryAddList.FieldByName('name').AsString + ',';
       s:= s + self.SQLQueryAddList.FieldByName('company').AsString + ',';
       s:= s + self.SQLQueryAddList.FieldByName('dept_group').AsString + ',';
       j:= self.SQLQueryAddList.FieldByName('gender_id').AsInteger;
       if (j=0) and (lang='en') then
         s:= s + 'woman' + ',';

       if (j=1) and (lang='en') then
         s:= s + 'man' + ',';

       if (j=0) and (lang='zh') then
         s:= s + '女' + ',';

       if (j=1) and (lang='zh') then
         s:= s + '男' + ',';

       for i:=0 to 15 do
       begin
            s:= s + self.SQLQueryAddList.FieldByName('A' + IntToStr(i)).AsString;
            if i<15 then s:= s +','
       end;

        s :=  global.ToLocalString(s);
        self.Memo1.Lines.Add(s);
        total:= total +1;
        self.SQLQueryAddList.Next;
  end;
  self.Memo1.Lines.SaveToFile(filename);

  showmessage(nLableExportSuccess + IntToStr(total));
end;

procedure TfrmMain.SetCaptions();
begin

   self.Caption:=nMainFormCaption + global.Version;
   self.LableLanguage.Caption:= nLableLanguage;
   self.Label_Gender.Caption:=  nLabelGender ;
   self.lblDept.Caption:=nALableGroupDept;
   self.ButtonNew.Caption:=nLabelNew;
   self.ButtonEdit.Caption:=nLabelEdit;
   self.ButtonSave.Caption:=nLabelSave;
   self.ButtonCancel.Caption:=nLabelCancel;
   self.ButtonClose.Caption:=nLabelExit;
   self.ButtonBack.Caption:=nLabelBack ;
   self.ButtonAll.Caption:=nLabelAll;
   self.ButtonView.Caption:=nLableView;

   self.ButtonSelectAdd.Caption:= nLableAdd;
   self.ButtonSelectConfirm.Caption:=nLableConfirm;
   self.ButtonSelectCancel.Caption:=nLableCancel;


   self.MenuItemDeleteAll.Caption:= global.nLableDeleteAll;
   //self.TrayIcon1.Icon:= self.Icon;

end;

function TfrmMain.CheckCtrlsData():boolean;
var
  s : string;
begin
  s:='';
  self.Edit_Code.Text:= trim(self.Edit_Code.Text);
  self.Edit_Name.Text:= trim(self.Edit_Name.Text);
  self.Edit_Company.Text:= trim(self.Edit_Company.Text);
  self.EDIT_DEPT.Text:= trim(self.EDIT_DEPT.Text);

  if length(self.Edit_Code.Text) =0 then
  begin
    s:= s + nALableCode + nLabelNull + #13;
  end;

  if length(self.Edit_Name.Text) =0 then
  begin
    s:= s + nALableName + nLabelNull + #13;
  end;

  if length(self.Edit_Company.Text) =0 then
  begin
    s:= s + nALableCompanyCountry + nLabelNull + #13;
  end;

  if length(self.EDIT_DEPT.Text) =0 then
  begin
    s:= s + nALableGroupDept + nLabelNull + #13;
  end;
  if s='' then
  begin
    Result:=true;
    exit;
  end;
  ShowMessage(s);
  Result:=false;
end;

procedure TfrmMain.ClearCtrlsData();
var
   i: integer;
begin
     self.Edit_Code.Text:='';
     self.Edit_NAME.text:='';
     self.Edit_Company.Text:='';
     self.EDIT_DEPT.Text:='';
     self.RadioButtonMan.Checked:=true;
     for i:=0 to 15 do
     begin
         self.edits[i]^.text:='';
     end;
end;

procedure TfrmMain.SetCtrlsReadonly(b : boolean);
var
   i: integer;
   cl : TColor;
begin
     cl:=clDefault;
     if b=false then cl:=clSkyBlue;

     self.Edit_Code.ReadOnly:=b;
     self.Edit_NAME.ReadOnly:=b;
     self.RadioButtonMan.Enabled:=not b;
     self.RadioButtonWoman.Enabled:=not b;

     self.Edit_Code.Color:=cl;
     self.Edit_NAME.Color:=cl;
     self.RadioButtonMan.Color:=cl;
     self.RadioButtonWoman.Color:=cl;
     self.Edit_Company.Color:=cl;
     self.EDIT_DEPT.Color:=cl;
     for i:=0 to 15 do
     begin
         self.edits[i]^.ReadOnly:=b;
         self.edits[i]^.Color:=cl;
     end;

end;

procedure TfrmMain.CreateOtherCtrls();
var
  i: integer;
  y: integer;
  l_x:integer;
  e_x:integer;
  h:integer;
begin
  l_x:=10;
  e_x:=136;
  y:=152+30;
  h:=30;

  self.Label_Code.Caption:=nALableCode;
  self.lblCode.Caption:=nALableCode;
  self.Label_Name.Caption:=nALableName;
  self.lblName.Caption:=nALableName;
  self.Label_Company.Caption:=nALableCompanyCountry;
  self.lblCompany.Caption:=nALableCompanyCountry;
  self.Label_Dept.Caption:=nALableGroupDept;
  self.RadioButtonMan.Caption:=nLabelMan;
  self.RadioButtonwoMan.Caption:=nLabelwoMan;

  self.MenuItemDelete.Caption := nLableDelete;
  self.MenuItemExit.Caption:= global.nLabelExit;
  self.MenuItemShow.Caption:= global.nLableShow ;

  self.Edit_Code.ReadOnly:=true;
  self.Edit_NAME.ReadOnly:=true;
  self.RadioButtonMan.Enabled:=false;
  self.RadioButtonWoman.Enabled:=false;
  Global.SetLables();
  for i:=0 to 15 do
  begin
     new(self.lables[i]);
     new(self.edits[i]);
     self.lables[i]^:=TLabel.Create(self);
     self.lables[i]^.Parent:=self.ScrollBox1;
     self.edits[i]^:=TEdit.Create(self);
     self.edits[i]^.Parent:=self.ScrollBox1;
     self.lables[i]^.Width:=115;
     self.lables[i]^.Height:=21;
     self.edits[i]^.Width:=405;
     self.edits[i]^.Height:=26;

     self.lables[i]^.Left:= l_x;
     self.lables[i]^.Top:=y + i * h ;
     self.edits[i]^.Left:=e_x;
     self.edits[i]^.Top:=y + i * h;

     self.lables[i]^.Caption:= Global.A_Lable[i];
     self.lables[i]^.Alignment:= taRightJustify;
     self.lables[i]^.AutoSize:=false;

     self.edits[i]^.ReadOnly:=true;

  end;
end;

procedure TfrmMain.GetConditions();
begin
  global.condition.name:=self.EditName.Text;
  global.condition.code:=self.EditCode.Text;
  if (self.ComboBoxCompany.ItemIndex=0) or (self.ComboBoxCompany.ItemIndex<0) then
    begin
     global.condition.company_id:=-1;
    end
  else
     global.condition.company_id:=longint(self.ComboBoxCompany.Items.Objects[self.ComboBoxCompany.ItemIndex]);


  if (self.ComboBoxDept.ItemIndex=0) or (self.ComboBoxDept.ItemIndex<0) then
    begin
     global.condition.dept_id:=-1;
    end
  else
     global.condition.dept_id:=longint(self.ComboBoxDept.Items.Objects[self.ComboBoxDept.ItemIndex]);;



  global.condition.code:=trim(global.condition.code);
  global.condition.name:=trim(global.condition.name);

  self.ClearEdits();
  self.QueryAddress();
end;

procedure TfrmMain.ButtonNewClick(Sender: TObject);
begin
  if global.SetMode('New')=false then exit;

  self.ButtonNew.Enabled:=false;
  self.ButtonEdit.Enabled:=false;
  self.ButtonSave.Enabled:=true;
  self.ButtonCancel.Enabled:=true;
  self.SetCtrlsReadonly(false);
  self.ClearCtrlsData();




end;

procedure TfrmMain.ButtonCloseClick(Sender: TObject);
begin
    if global.SetMode('Exit') = false then
    begin
        exit;
    end;
    self.Close;
end;

procedure TfrmMain.ButtonCancelClick(Sender: TObject);
begin
  if global.SetMode('Cancel')=false then exit;
  self.ButtonNew.Enabled:=true;
  self.ButtonEdit.Enabled:=false;
  self.ButtonSave.Enabled:=false;
  self.ButtonCancel.Enabled:=false;
  self.SetCtrlsReadonly(true);
  self.GroupSelect.Visible:=false;
  //self.ClearCtrlsData();
end;

procedure TfrmMain.Button1Click(Sender: TObject);
begin
   ShowMessage(GetDefaultTextEncoding() );
end;






procedure TfrmMain.ButtonEditClick(Sender: TObject);
begin
  if global.SetMode('Edit')=false then exit;
  self.SetCtrlsReadonly(false);
  self.ButtonNew.Enabled:=false;
  self.ButtonEdit.Enabled:=false;
  self.ButtonSave.Enabled:=true;
  self.ButtonCancel.Enabled:=true;
end;

procedure TfrmMain.ButtonAllClick(Sender: TObject);
begin
  self.EditCode.Text:='';
  self.EditName.Text:='';
  self.ComboBoxDept.ItemIndex:=-1;
  self.ComboBoxCompany.ItemIndex:=-1;
  global.condition.key:='';
  self.GetConditions();
end;

procedure TfrmMain.ButtonA10Click(Sender: TObject);
begin
   self.EditCode.Text:= self.EditCode.Text + 'R';

end;

procedure TfrmMain.ButtonA11Click(Sender: TObject);
begin
   self.EditCode.Text:= self.EditCode.Text + 'Q';

end;

procedure TfrmMain.ButtonA12Click(Sender: TObject);
begin
   self.EditCode.Text:= self.EditCode.Text + 'P';

end;

procedure TfrmMain.ButtonA13Click(Sender: TObject);
begin
   self.EditCode.Text:= self.EditCode.Text + 'O';

end;

procedure TfrmMain.ButtonA14Click(Sender: TObject);
begin
    self.EditCode.Text:= self.EditCode.Text + 'N';

end;

procedure TfrmMain.ButtonA15Click(Sender: TObject);
begin
   self.EditCode.Text:= self.EditCode.Text + 'M';

end;

procedure TfrmMain.ButtonA16Click(Sender: TObject);
begin
 self.EditCode.Text:= self.EditCode.Text + 'L';

end;

procedure TfrmMain.ButtonA17Click(Sender: TObject);
begin
   self.EditCode.Text:= self.EditCode.Text + 'K';

end;

procedure TfrmMain.ButtonA18Click(Sender: TObject);
begin
  self.EditCode.Text:= self.EditCode.Text + 'J';

end;

procedure TfrmMain.ButtonA19Click(Sender: TObject);
begin
  self.EditCode.Text:= self.EditCode.Text + 'I';

end;

procedure TfrmMain.ButtonA1Click(Sender: TObject);
begin
  self.EditCode.Text:= self.EditCode.Text + 'B';

end;

procedure TfrmMain.ButtonA20Click(Sender: TObject);
begin
    self.EditCode.Text:= self.EditCode.Text + 'H';


end;

procedure TfrmMain.ButtonA21Click(Sender: TObject);
begin
    self.EditCode.Text:= self.EditCode.Text + 'G';


end;

procedure TfrmMain.ButtonA22Click(Sender: TObject);
begin
    self.EditCode.Text:= self.EditCode.Text + 'F';


end;

procedure TfrmMain.ButtonA23Click(Sender: TObject);
begin
   self.EditCode.Text:= self.EditCode.Text + 'E';


end;

procedure TfrmMain.ButtonA24Click(Sender: TObject);
begin
   self.EditCode.Text:= self.EditCode.Text + 'D';


end;

procedure TfrmMain.ButtonA25Click(Sender: TObject);
begin
   self.EditCode.Text:= self.EditCode.Text + 'C';


end;

procedure TfrmMain.ButtonA2Click(Sender: TObject);
begin

  if length(self.EditCode.Text)=1 then
    begin
         self.EditCode.Text:='';
         exit;
    end;

  if length(self.EditCode.Text)>1 then
    begin
         self.EditCode.Text:=copy(self.EditCode.Text,0, length(self.EditCode.Text)-1 );
         exit;
    end;
end;

procedure TfrmMain.ButtonA3Click(Sender: TObject);
begin
  self.EditCode.Text:= self.EditCode.Text + 'Y';


end;

procedure TfrmMain.ButtonA4Click(Sender: TObject);
begin
  self.EditCode.Text:= self.EditCode.Text + 'X';


end;

procedure TfrmMain.ButtonA5Click(Sender: TObject);
begin
    self.EditCode.Text:= self.EditCode.Text + 'W';


end;

procedure TfrmMain.ButtonA6Click(Sender: TObject);
begin
  self.EditCode.Text:= self.EditCode.Text + 'V';


end;

procedure TfrmMain.ButtonA7Click(Sender: TObject);
begin
    self.EditCode.Text:= self.EditCode.Text + 'U';


end;

procedure TfrmMain.ButtonA8Click(Sender: TObject);
begin
    self.EditCode.Text:= self.EditCode.Text + 'T';


end;

procedure TfrmMain.ButtonA9Click(Sender: TObject);
begin
   self.EditCode.Text:= self.EditCode.Text + 'S';


end;

procedure TfrmMain.ButtonAClick(Sender: TObject);
begin
     self.EditCode.Text:= self.EditCode.Text + 'A';

end;

procedure TfrmMain.ButtonSaveClick(Sender: TObject);
var
  mode : String;
  sql : String;
  id : integer;
  i : integer;
begin
  mode := global.currentMode;
  if (mode<>'New') and (mode<>'Edit') then
  begin
       self.SetCtrlsReadonly(true);
       self.ButtonNew.Enabled:=true;
       self.ButtonEdit.Enabled:=false;
       self.ButtonSave.Enabled:=false;
       self.ButtonCancel.Enabled:=false;
       exit;
  end;

  sql:='';
  if global.SetMode('Save')=false then exit;
  if self.CheckCtrlsData()=false then exit;

  if mode= 'New' then
  begin
      sql:= 'insert into T_address (code,name,gender_id,company_id,dept_group_id,A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15)';
      sql:= sql + ' values(' + ''''  + self.Edit_Code.Text;
      sql:= sql +  ''''+ ',' + '''' + self.Edit_NAME.Text + '''' ;
      sql:= sql +   ','   +  inttostr(global.current_rec.gender_id) ;
      sql:= sql +   ','   +  inttostr(global.current_rec.company_id) ;
      sql:= sql +   ','   +  inttostr(global.current_rec.dept_group_id) ;

      for i:=0 to 15 do
      begin
           sql:= sql + ',' + '''' + self.edits[i]^.Text + '''';
      end;
      sql := sql + ')';

  end;

  if mode= 'Edit' then
  begin
       id:= global.current_rec.id;
       sql:= 'update  T_address set '
       + 'code=' + '''' + self.edit_code.text + ''''
       + ',' +  'name=' + '''' + self.edit_Name.text + ''''
       + ',' +  'gender_id=' + inttostr(global.current_rec.gender_id)
       + ',' + 'company_id=' + inttostr(global.current_rec.company_id)
       + ',' + 'dept_group_id=' + inttostr(global.current_rec.dept_group_id);
       for i:=0 to 15 do
       begin
           sql:= sql + ',A' + inttostr(i) + '='  + '''' + self.edits[i]^.Text + '''';
       end;
       sql := sql + ' where id=' + inttostr(id);
  end;
  self.SQLTransaction1.EndTransaction;
  self.SQLTransaction1.StartTransaction;
  self.SQLQueryAddList.Close;
  self.SQLQueryAddList.SQL.Clear;
  self.SQLQueryAddList.SQL.Add(sql);
  self.SQLQueryAddList.ExecSQL;
  self.SQLTransaction1.Commit;
  self.SQLTransaction1.EndTransaction;
  self.QueryAddress();

  self.SetCtrlsReadonly(true);
  self.ButtonNew.Enabled:=true;
  self.ButtonEdit.Enabled:=true;
  self.ButtonSave.Enabled:=false;
  self.ButtonCancel.Enabled:=false;
end;

procedure TfrmMain.ButtonSelectAddClick(Sender: TObject);
var
  table:String;
  sql : String;
begin
  self.EditValue.Text:=trim(self.EditValue.Text);
  if length(self.EditValue.Text)=0 then
  begin
       ShowMessage('value is null !');
       self.EditValue.SetFocus;
       exit;
  end;
  if self.SelectType='Company' then
  begin
       table:='T_Company';
  end;

  if self.SelectType='Department' then
  begin
       table:='T_Dept';
  end;
  self.SQLQueryAddList.Close;
  self.SQLQueryAddList.SQL.Clear;
  self.SQLQueryAddList.SQL.Add('select * from ' + table + ' where value=' + '''' + self.EditValue.Text + '''');
  self.SQLQueryAddList.Open;
  if self.SQLQueryAddList.RecordCount>0 then
  begin
       SHowMessage(nHaveValue + self.EditValue.Text);
       exit;
  end;
  sql := 'insert into ' + table + ' (value) values (' + '''' + self.EditValue.Text + '''' + ')';
  self.SQLQueryAddList.Close;
  self.SQLQueryAddList.SQL.Clear;
  self.SQLQueryAddList.SQL.Add(sql);
  self.SQLQueryAddList.ExecSQL;
  self.EditValue.Text:='';
  self.SQLTransaction1.Commit;
  self.SQLQueryAddList.Close;


      self.SQLQueryAddList.SQL.Clear;
      self.SQLQueryAddList.SQL.Add('select * from ' + table + ' order by value');
      self.SQLQueryAddList.Open;
      self.ComboBoxCompany.Clear;

      self.ListBoxSelect.Clear;
      while not self.SQLQueryAddList.EOF do
      begin
           self.ListBoxSelect.Items.AddObject(self.SQLQueryAddList.FieldByName('value').AsString,TObject(self.SQLQueryAddList.FieldByName('id').asinteger));
           self.SQLQueryAddList.Next;
      end;
end;

procedure TfrmMain.ButtonSelectCancelClick(Sender: TObject);

  var
  i : integer;
begin
  if self.SelectType='Company' then
  begin
       self.Edit_Company.Text:= self.Pre_Value;
       global.current_rec.company_id:=self.Pre_Id;
       global.current_rec.company:=self.Pre_Value;
  end;

  if self.SelectType='Department' then
  begin
       self.EDIT_DEPT.Text:= self.Pre_Value;
       global.current_rec.dept_group_id:=self.Pre_Id;
       global.current_rec.dept_group:=self.Pre_Value;
  end;
  for i:=0 to 15 do
  begin
     self.edits[i]^.Visible:=true;
  end;

  self.GroupSelect.Visible:=false;
end;

procedure TfrmMain.ButtonSelectConfirmClick(Sender: TObject);
var
  i : integer;
begin
  for i:=0 to 15 do
  begin
     self.edits[i]^.Visible:=true;
  end;

  self.GroupSelect.Visible:=false;
end;

procedure TfrmMain.ButtonViewClick(Sender: TObject);
var
  s : String;
  i : integer;
begin
  frmdisplay.Memo1.Lines.Clear;
  s:= self.Label_Code.Caption + '  :  ' + self.Edit_Code.Text + #13;
  frmdisplay.Memo1.Lines.Add(s);
  s:= self.Label_Name.Caption + '  :  ' + self.Edit_Name.Text + #13;
  frmdisplay.Memo1.Lines.Add(s);
  s:= self.Label_Company.Caption + '  :  ' + self.Edit_company.Text + #13;
  frmdisplay.Memo1.Lines.Add(s);

  s:= self.Label_Dept.Caption + '  :  ' + self.Edit_dept.Text + #13;
  frmdisplay.Memo1.Lines.Add(s);

  s:= self.Label_Gender.Caption + '  :  ';
  if self.RadioButtonMan.Checked=true then
  begin
       s:= s + self.RadioButtonMan.Caption;
  end;
  if self.RadioButtonwoMan.Checked=true then
  begin
       s:= s + self.RadioButtonwoMan.Caption;
  end;

  frmdisplay.Memo1.Lines.Add(s);


  s:= global.A_Lable[0] + '  :  ' + global.current_rec.A0;
  frmdisplay.Memo1.Lines.Add(s);

  s:= global.A_Lable[1] + '  :  ' + global.current_rec.A1;
  frmdisplay.Memo1.Lines.Add(s);

  s:= global.A_Lable[2] + '  :  ' + global.current_rec.A2;
  frmdisplay.Memo1.Lines.Add(s);

  s:= global.A_Lable[3] + '  :  ' + global.current_rec.A3;
  frmdisplay.Memo1.Lines.Add(s);

  s:= global.A_Lable[4] + '  :  ' + global.current_rec.A4;
  frmdisplay.Memo1.Lines.Add(s);


  s:= global.A_Lable[5] + '  :  ' + global.current_rec.A5;
  frmdisplay.Memo1.Lines.Add(s);

  s:= global.A_Lable[6] + '  :  ' + global.current_rec.A6;
  frmdisplay.Memo1.Lines.Add(s);

  s:= global.A_Lable[7] + '  :  ' + global.current_rec.A7;
  frmdisplay.Memo1.Lines.Add(s);

  s:= global.A_Lable[8] + '  :  ' + global.current_rec.A8;
  frmdisplay.Memo1.Lines.Add(s);

  s:= global.A_Lable[9] + '  :  ' + global.current_rec.A9;
  frmdisplay.Memo1.Lines.Add(s);

  s:= global.A_Lable[10] + '  :  ' + global.current_rec.A10;
  frmdisplay.Memo1.Lines.Add(s);

  s:= global.A_Lable[11] + '  :  ' + global.current_rec.A11;
  frmdisplay.Memo1.Lines.Add(s);

  s:= global.A_Lable[12] + '  :  ' + global.current_rec.A12;
  frmdisplay.Memo1.Lines.Add(s);
  s:= global.A_Lable[13] + '  :  ' + global.current_rec.A13;
  frmdisplay.Memo1.Lines.Add(s);

  s:= global.A_Lable[14] + '  :  ' + global.current_rec.A14;
  frmdisplay.Memo1.Lines.Add(s);

  s:= global.A_Lable[15] + '  :  ' + global.current_rec.A15;
  frmdisplay.Memo1.Lines.Add(s);
  frmDisplay.ShowModal;
end;

procedure TfrmMain.ComboBoxLanguageChange(Sender: TObject);
var
  lan:String;
  s : String;
begin
     if self.ComboBoxLanguage.ItemIndex=5 then
     begin
          frmAbout.ShowModal;
          exit;
     end;
     //Export
     if self.ComboBoxLanguage.ItemIndex=3 then
     begin
          //self.SaveDialog1.Title:=nLableExportTitile;
          self.SaveDialog1.Execute;
          if self.SaveDialog1.FileName='' then exit;


          self.ExportData(self.SaveDialog1.FileName);
          showmessage(nLableExportSuccess);
          exit;
     end;
     //Import
     if self.ComboBoxLanguage.ItemIndex=4 then
     begin
          self.OpenDialog1.Filename:='*.csv';
          self.OpenDialog1.Execute;
          if self.OpenDialog1.FileName='' then exit;
          self.ImportData(self.OpenDialog1.FileName);
          self.QueryAddress();

          exit;
     end;
      lan:='en';
      if self.ComboBoxLanguage.ItemIndex<0 then exit;
      if self.ComboBoxLanguage.ItemIndex=0 then lan:='zh';
      if self.ComboBoxLanguage.ItemIndex=2 then lan:='big5';

      OpenDialog1.FileName:=fileconf;
      IniReader := TIniFile.Create(OpenDialog1.FileName);
      IniReader.WriteString('Environment','Lang',lan);
      IniReader.WriteString('Environment','FallbackLang',lan);
      IniReader.Free;

      ShowMessage(nLanguagePrompt);



end;


procedure TfrmMain.ComboBoxCompanyChange(Sender: TObject);
begin
  self.ClearCtrlsData();
  self.GetConditions();
end;

procedure TfrmMain.ComboBoxDeptChange(Sender: TObject);

begin
  self.ClearCtrlsData();
  self.GetConditions();


end;

procedure TfrmMain.EditCodeChange(Sender: TObject);
begin
  self.ClearCtrlsData();
  self.GetConditions();
end;

procedure TfrmMain.EditNameChange(Sender: TObject);
begin
  self.ClearCtrlsData();
  self.GetConditions();
end;

procedure TfrmMain.Edit_CompanyChange(Sender: TObject);
begin

end;

procedure TfrmMain.Edit_CompanyClick(Sender: TObject);
var
  i : integer;
  id : integer;
begin
  if (global.currentMode<>'New') and (global.currentMode<>'Edit') then exit;

  self.Pre_Id:= global.current_rec.company_id;
  self.Pre_Value:= global.current_rec.company;
  self.SelectType:='Company';
  for i:=0 to 15 do
  begin
     self.edits[i]^.Visible:=false;
  end;
      self.SQLQueryAddList.Close;
      self.SQLQueryAddList.SQL.Clear;
      self.SQLQueryAddList.SQL.Add('select * from t_company order by value');
      self.SQLQueryAddList.Open;
      self.ComboBoxCompany.Clear;
      id:=0;
      self.ListBoxSelect.Clear;
      while not self.SQLQueryAddList.EOF do
      begin
           self.ListBoxSelect.Items.AddObject(self.SQLQueryAddList.FieldByName('value').AsString,TObject(self.SQLQueryAddList.FieldByName('id').asinteger));
           self.SQLQueryAddList.Next;
      end;


      self.GroupSelect.Caption:=nLableGroupCompany;
      self.GroupSelect.Top:= self.EDIT_DEPT.Top;
      self.GroupSelect.Visible:=true;



end;

procedure TfrmMain.EDIT_DEPTChange(Sender: TObject);
begin

end;

procedure TfrmMain.EDIT_DEPTClick(Sender: TObject);
var
  i : integer;
begin
  if (global.currentMode<>'New') and (global.currentMode<>'Edit') then exit;
  self.Pre_Id:= global.current_rec.dept_group_id;
  self.Pre_Value:= global.current_rec.dept_group;
  self.SelectType:='Department';
  for i:=0 to 15 do
  begin
     self.edits[i]^.Visible:=false;
  end;

  self.SQLQueryAddList.Close;
      self.SQLQueryAddList.SQL.Clear;
      self.SQLQueryAddList.SQL.Add('select * from t_dept order by value');
      self.SQLQueryAddList.Open;
      self.ComboBoxCompany.Clear;

      self.ListBoxSelect.Clear;
      while not self.SQLQueryAddList.EOF do
      begin
           self.ListBoxSelect.Items.AddObject(self.SQLQueryAddList.FieldByName('value').AsString,TObject(self.SQLQueryAddList.FieldByName('id').asinteger));
           self.SQLQueryAddList.Next;
      end;

  self.GroupSelect.Caption:=nLableGroupDept;
  self.GroupSelect.Top:= self.RadioButtonMan.Top;
  self.GroupSelect.Visible:=true;
end;

procedure TfrmMain.Edit_NAMEChange(Sender: TObject);
begin

end;

procedure TfrmMain.FormActivate(Sender: TObject);
var

  db_run_time : double;
begin
    db_run_time:=0;
    can_run_flag:=true;
    self.current_time:= sysutils.Now;

     //showmessage(floattostr(self.current_time));
     self.SQLQuery1.Close;
     self.SQLQuery1.SQL.Clear;
     self.SQLQuery1.SQL.Add('select * from t_run');
     self.SQLQuery1.Open;
     if self.SQLQuery1.RecordCount=0 then
     begin
        can_run_flag:=true;
        self.SQLQuery1.Close;
        self.SQLQuery1.SQL.Clear;
        self.SQLQuery1.SQL.Add('insert into  t_run (runtime) values('  + FloatToStr(self.current_time)  +')');
        self.SQLQuery1.ExecSQL;
        self.SQLTransaction1.Commit;
     end
     else
     begin
         db_run_time:= self.SQLQuery1.FieldByName('runtime').AsFloat;
     end;

     //ShowMessage(floattostr(self.current_time) + '  ' + floattostr(db_run_time));
     if db_run_time>0 then
     begin
         if WithinPastSeconds(self.current_time, db_run_time,60)=true then
         begin
                can_run_flag:=false;

         end
         else   can_run_flag:=true;

     end;
     if    can_run_flag=false then
     begin
         ShowMessage(nLableRun);
         self.Close;
         exit;
     end;
     self.SQLQuery1.Close;
end;

procedure TfrmMain.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
    if can_run_flag=true then
    begin
         // ShowMessage('delete');
         self.SQLQuery1.Close;
         self.SQLQuery1.SQL.Clear;
         self.SQLQuery1.SQL.Add('delete from t_run');
         self.SQLQuery1.ExecSQL;
         self.SQLTransaction1.Commit;
    end;
    self.SQLQueryAddList.Close;
    self.SQLite3Connection1.Close;
end;



procedure TfrmMain.FormCreate(Sender: TObject);

begin

     global.GetSysDefaultEncodeing();
     self.ComboBoxLanguage.ItemIndex:=1;
     if global.Lang='zh' then self.ComboBoxLanguage.ItemIndex:=0;
     if global.Lang='big5' then self.ComboBoxLanguage.ItemIndex:=2;
     self.ComboBoxLanguage.Items.Add(nLableExport);
     self.ComboBoxLanguage.Items.Add(nLableImport);
     self.ComboBoxLanguage.Items.Add(nLableAbout);

     global.currentMode:='View';
     self.CreateOtherCtrls();

     try
      self.SQLite3Connection1.DatabaseName:='data/addressbook.db';
      self.SQLite3Connection1.Open;
      self.QueryAddress();
   except
     ShowMessage('open database error.');
     exit;
   end;



   self.FillCompanyList();
   self.SetCaptions();
end;

procedure TfrmMain.ListBoxSelectClick(Sender: TObject);
begin
  if self.ListBoxSelect.ItemIndex<0 then exit;
  if self.SelectType='Company' then
  begin
     self.Edit_Company.Text:= self.ListBoxSelect.Items.Strings[self.ListBoxSelect.ItemIndex];
     global.current_rec.company_id:=longint(self.ListBoxSelect.Items.Objects[self.ListBoxSelect.ItemIndex]);
     global.current_rec.company:=self.ListBoxSelect.Items.Strings[self.ListBoxSelect.ItemIndex];     ;
  end;
  if self.SelectType='Department' then
  begin
     self.EDIT_DEPT.Text:= self.ListBoxSelect.Items.Strings[self.ListBoxSelect.ItemIndex];
     global.current_rec.dept_group_id:=longint(self.ListBoxSelect.Items.Objects[self.ListBoxSelect.ItemIndex]);
     global.current_rec.dept_group:= self.ListBoxSelect.Items.Strings[self.ListBoxSelect.ItemIndex];
  end;
end;

procedure TfrmMain.ListView1Click(Sender: TObject);
var
  id : longint;
begin
  self.ButtonView.Enabled:=false;;
  if  global.SetMode('View') = false then
  begin
      exit;
  end;

  self.ButtonEdit.Enabled:=false;
  self.ButtonNew.Enabled:=true;
  self.ClearCtrlsData();
  if self.ListView1.ItemIndex<0 then
  begin
      exit;
  end;
  self.ButtonEdit.Enabled:=true;
  id:= StrToInt(self.ListView1.Selected.SubItems[0]);
  self.QueryAddressById(id);
  self.SetEditsByRecData();
  self.SetCtrlsReadonly(true);
  self.ButtonView.Enabled:=true;

end;

procedure TfrmMain.MenuItemDeleteClick(Sender: TObject);
var
  id : integer;
  sql : string;
begin
  if self.ListView1.ItemIndex<0 then
  begin
      Showmessage('please select one person.');
      exit;
  end;
  id:= StrToInt(self.ListView1.Selected.SubItems[0]);
  sql := 'delete from t_address where id=' + inttostr(id);
  self.SQLTransaction1.StartTransaction;
  self.SQLQueryAddList.Close;
  self.SQLQueryAddList.SQL.Clear;
  self.SQLQueryAddList.SQL.Add(sql);
  self.SQLQueryAddList.ExecSQL;
  self.SQLTransaction1.Commit;
  self.SQLTransaction1.EndTransaction;
  self.QueryAddress();
end;

procedure TfrmMain.MenuItemDeleteAllClick(Sender: TObject);
var
  sql : String;
begin
  sql := 'delete from t_address ';
  self.SQLTransaction1.StartTransaction;
  self.SQLQueryAddList.Close;
  self.SQLQueryAddList.SQL.Clear;
  self.SQLQueryAddList.SQL.Add(sql);
  self.SQLQueryAddList.ExecSQL;
  self.SQLTransaction1.Commit;
  self.SQLTransaction1.EndTransaction;
  self.QueryAddress();
end;

procedure TfrmMain.MenuItemExitClick(Sender: TObject);
begin
  close;
  halt;
end;

procedure TfrmMain.MenuItemShowClick(Sender: TObject);
begin
  self.Hide;
  self.Show;
end;

procedure TfrmMain.RadioButtonManChange(Sender: TObject);
begin
  global.current_rec.gender_id:=1;
  self.ImageList1.GetBitmap(1, ImageGender.Picture.Bitmap);
end;

procedure TfrmMain.RadioButtonWomanChange(Sender: TObject);
begin
  global.current_rec.gender_id:=0;
  self.ImageList1.GetBitmap(0, ImageGender.Picture.Bitmap);
end;

procedure TfrmMain.ScrollBox1Click(Sender: TObject);
begin

end;

procedure TfrmMain.Splitter1Moved(Sender: TObject);
begin
  self.GetConditions();
  self.QueryAddress();
end;

procedure TfrmMain.Timer1Timer(Sender: TObject);
begin
        self.SQLQuery1.Close;
        self.SQLQuery1.SQL.Clear;
        self.SQLQuery1.SQL.Add('delete from  t_run ');
        self.SQLQuery1.ExecSQL;
        self.SQLTransaction1.Commit;
        self.SQLQuery1.SQL.Clear;
        self.SQLQuery1.SQL.Add('insert into  t_run (runtime) values('  + FloatToStr(self.current_time)  +')');
        self.SQLQuery1.ExecSQL;
        self.SQLTransaction1.Commit;


end;

procedure TfrmMain.ToggleBox1Change(Sender: TObject);
begin

end;

procedure TfrmMain.TrayIcon1Click(Sender: TObject);
begin

end;

procedure TfrmMain.TrayIcon1DblClick(Sender: TObject);
begin
   self.Hide;
   self.WindowState:=wsNormal;
   self.Show;
end;






procedure TfrmMain.QueryAddress();
var
  li:TListItem;
  cond : String;
begin
      cond:='';

      if length(global.condition.code)>0 then
      begin
          cond:= cond + ' and a.code like ''%' + global.condition.code;
          cond:= cond + '%' + '''';
      end;
      if length(global.condition.name)>0 then
      begin
          cond:= cond + ' and a.name like ''%' + global.condition.name;
          cond:= cond + '%' + '''';
      end;

      if global.condition.dept_id>0 then
      begin
          cond:= cond + ' and b.id = ' + inttostr(global.condition.dept_id);

      end;
      if global.condition.company_id>0 then
      begin
          cond:= cond + ' and c.id =' +   inttostr(global.condition.company_id);

      end;

      if global.condition.key<>'' then
      begin
          cond:= cond + ' and a.code like ''' + global.condition.key;
          cond:= cond + '%' + '''';
      end;

      //ShowMessage(cond);
      li:=nil;
      self.ListView1.Clear;
      if self.SQLite3Connection1.Connected=false then
      begin
        ShowMessage('Database have not connected.');
        exit;
      end;
      self.SQLQueryAddList.Close;
      self.SQLQueryAddList.SQL.Clear;
      self.SQLQueryAddList.SQL.Add('select a.*,b.value as dept_group,c.value as company from t_address a , t_dept b , t_company c where a.dept_group_id=b.id and a.company_id=c.id ' + cond );
      self.SQLQueryAddList.Open;
      if (self.SQLQueryAddList.RecordCount<=0) then
      begin
         exit;
      end;
      self.SQLQueryAddList.First;
      self.ListView1.BeginUpdate;
      while (not self.SQLQueryAddList.EOF)  do
            begin

                 li:= self.ListView1.Items.Add;
                 li.Caption:=self.SQLQueryAddList.FieldByName('Name').AsString;
                 li.ImageIndex:=self.SQLQueryAddList.FieldByName('gender_id').AsInteger;
                 li.SubItems.Add(self.SQLQueryAddList.FieldByName('id').AsString);
                 self.SQLQueryAddList.Next;
      end;
      self.ListView1.EndUpdate;
      //self.SQLQueryAddList.Close;


end;
procedure TfrmMain.QueryAddressById(id : longint);
begin
      Global.ClearRecData();
      self.SQLQueryAddList.Close;
      self.SQLQueryAddList.SQL.Clear;
      self.SQLQueryAddList.SQL.Add('select a.*,b.value as dept_group,c.value as company from t_address a , t_dept b , t_company c where a.dept_group_id=b.id and a.company_id=c.id and a.id=' + IntToStr(id));
      self.SQLQueryAddList.Open;
      self.SetRecDataByDataSet();

end;
procedure TfrmMain.SetRecDataByDataSet();
begin
    if not self.SQLQueryAddList.BOF and not self.SQLQueryAddList.EOF then
      begin
 	current_rec.id                := self.SQLQueryAddList.FieldByName('id').AsLongint ;
        current_rec.code              := self.SQLQueryAddList.FieldByName('code').AsString;
        current_rec.name              := self.SQLQueryAddList.FieldByName('name').AsString;
        current_rec.gender_id         := self.SQLQueryAddList.FieldByName('gender_id').AsInteger;
        current_rec.dept_group_id     := self.SQLQueryAddList.FieldByName('dept_group_id').AsInteger;
        current_rec.dept_group        := self.SQLQueryAddList.FieldByName('dept_group').AsString;
        current_rec.company_id        := self.SQLQueryAddList.FieldByName('company_id').AsInteger;
        current_rec.company           := self.SQLQueryAddList.FieldByName('company').AsString;
        global.current_rec.gender_id := 1;
        global.current_rec.gender_id := self.SQLQueryAddList.FieldByName('gender_id').AsInteger;
        current_rec.A0                := self.SQLQueryAddList.FieldByName('A0').AsString;
        current_rec.A1                := self.SQLQueryAddList.FieldByName('A1').AsString;
        current_rec.A2                := self.SQLQueryAddList.FieldByName('A2').AsString;
        current_rec.A3                := self.SQLQueryAddList.FieldByName('A3').AsString;
        current_rec.A4                := self.SQLQueryAddList.FieldByName('A4').AsString;
        current_rec.A5                := self.SQLQueryAddList.FieldByName('A5').AsString;
        current_rec.A6                := self.SQLQueryAddList.FieldByName('A6').AsString;
        current_rec.A7                := self.SQLQueryAddList.FieldByName('A7').AsString;
        current_rec.A8                := self.SQLQueryAddList.FieldByName('A8').AsString;
        current_rec.A9                := self.SQLQueryAddList.FieldByName('A9').AsString;
        current_rec.A10               := self.SQLQueryAddList.FieldByName('A10').AsString;
        current_rec.A11               := self.SQLQueryAddList.FieldByName('A11').AsString;
        current_rec.A12               := self.SQLQueryAddList.FieldByName('A12').AsString;
        current_rec.A13               := self.SQLQueryAddList.FieldByName('A13').AsString;
        current_rec.A14               := self.SQLQueryAddList.FieldByName('A14').AsString;
        current_rec.A15               := self.SQLQueryAddList.FieldByName('A15').AsString;
        //ShowMessage('111');
      end;
end;
procedure TfrmMain.ClearEdits();
begin
   self.Edit_Code.Text:='';
   self.Edit_Name.Text:='';
   self.Edit_Company.Text:='';
   self.EDIT_DEPT.Text:='';


end;
procedure TfrmMain.SetEditsByRecData();

begin
   self.Edit_Code.Text:=global.current_rec.code;
   self.Edit_Name.Text:=global.current_rec.name;
   self.Edit_Company.Text:=global.current_rec.company;
   self.EDIT_DEPT.Text:=global.current_rec.dept_group;
   self.RadioButtonMan.Checked:=true;
   self.ImageList1.GetBitmap(1, ImageGender.Picture.Bitmap);
   if global.current_rec.gender_id=0 then
   begin
     self.RadioButtonWoman.Checked:=true;
     self.ImageList1.GetBitmap(0, ImageGender.Picture.Bitmap);
   end;

   self.edits[0]^.Text	:=	 global.current_rec.A0;
   self.edits[1]^.Text	:=	 global.current_rec.A1;
   self.edits[2]^.Text	:=	 global.current_rec.A2;
   self.edits[3]^.Text	:=	 global.current_rec.A3;
   self.edits[4]^.Text	:=	 global.current_rec.A4;
   self.edits[5]^.Text	:=	 global.current_rec.A5;
   self.edits[6]^.Text	:=	 global.current_rec.A6;
   self.edits[7]^.Text	:=	 global.current_rec.A7;
   self.edits[8]^.Text	:=	 global.current_rec.A8;
   self.edits[9]^.Text	:=	 global.current_rec.A9;
   self.edits[10]^.Text	:=	 global.current_rec.A10;
   self.edits[11]^.Text	:=	 global.current_rec.A11;
   self.edits[12]^.Text	:=	 global.current_rec.A12;
   self.edits[13]^.Text	:=	 global.current_rec.A13;
   self.edits[14]^.Text	:=	 global.current_rec.A14;
   self.edits[15]^.Text	:=	 global.current_rec.A15;



end;
procedure TfrmMain.FillCompanyList();
var
  id : integer;
begin
      self.SQLQueryAddList.Close;
      self.SQLQueryAddList.SQL.Clear;
      self.SQLQueryAddList.SQL.Add('select * from t_company order by value');
      self.SQLQueryAddList.Open;
      self.ComboBoxCompany.Clear;
      id:=0;
      self.ComboBoxCompany.AddItem(nLableAll,TObject(id));
      while not self.SQLQueryAddList.EOF do
      begin
           self.ComboBoxCompany.AddItem(self.SQLQueryAddList.FieldByName('value').AsString,TObject(self.SQLQueryAddList.FieldByName('id').asinteger));
           self.SQLQueryAddList.Next;
      end;

      self.SQLQueryAddList.Close;
      self.SQLQueryAddList.SQL.Clear;
      self.SQLQueryAddList.SQL.Add('select * from t_dept order by value');
      self.SQLQueryAddList.Open;
      self.ComboBoxDept.Clear;
      id:=0;
      self.ComboBoxDept.AddItem(nLableAll,TObject(id));
      while not self.SQLQueryAddList.EOF do
      begin
           self.ComboBoxDept.AddItem(self.SQLQueryAddList.FieldByName('value').AsString,TObject(self.SQLQueryAddList.FieldByName('id').asinteger));
           self.SQLQueryAddList.Next;
      end;
end;

end.



