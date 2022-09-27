unit UMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Menus, shellApi, registry, Mask,
  ToolEdit, FileCtrl, Math, ComCtrls;

type
  TFSniper = class(TForm)
    OpenDialog: TOpenDialog;
    Splitter2: TSplitter;
    Popup: TPopupMenu;
    Basicexample1: TMenuItem;
    WritingErrorToGenerallog1: TMenuItem;
    Mergeaccount1: TMenuItem;
    Mergecontacts1: TMenuItem;
    Example5ConvertLead1: TMenuItem;
    Example6ConvertAttachmentsintoFiles1: TMenuItem;
    Example7Mergecontactsbasic1: TMenuItem;
    Gen: TPopupMenu;
    MenuItem1: TMenuItem;
    Example8Lockopportunities1: TMenuItem;
    Pages: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel3: TPanel;
    ButtonsPane1: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton7: TSpeedButton;
    BodyPanel1: TPanel;
    LogonPanel: TPanel;
    Label3: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    url: TEdit;
    User: TEdit;
    Password: TEdit;
    ButtonsPane12: TPanel;
    SpeedButton5: TSpeedButton;
    SpeedButton4: TSpeedButton;
    Panel6: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Label1: TLabel;
    HeaderLoadFromFile: TBitBtn;
    BitBtn1: TBitBtn;
    Header: TMemo;
    Panel1: TPanel;
    Panel2: TPanel;
    Label2: TLabel;
    LinesLoadFromFile: TBitBtn;
    Lines: TMemo;
    Splitter1: TSplitter;
    ConfigPanel: TGroupBox;
    Label5: TLabel;
    processes: TEdit;
    Label4: TLabel;
    workingDir: TDirectoryEdit;
    SpeedButton2: TSpeedButton;
    ButtonsPanel3: TPanel;
    Back3: TSpeedButton;
    RunBtn: TSpeedButton;
    GenerateAndExecute: TSpeedButton;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Panel9: TPanel;
    PasswordNotProvided: TLabel;
    SecurityToken: TEdit;
    Label11: TLabel;
    LinesHelp: TSpeedButton;
    HeadersHelp: TSpeedButton;
    procedure LinesLoadFromFileClick(Sender: TObject);
    procedure HeaderLoadFromFileClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Basicexample1Click(Sender: TObject);
    procedure WritingErrorToGenerallog1Click(Sender: TObject);
    procedure Mergeaccount1Click(Sender: TObject);
    procedure Mergecontacts1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Example5ConvertLead1Click(Sender: TObject);
    procedure Example6ConvertAttachmentsintoFiles1Click(Sender: TObject);
    procedure HeaderKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure LinesKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Example7Mergecontactsbasic1Click(Sender: TObject);
    procedure processesChange(Sender: TObject);
    procedure RunBtnClick(Sender: TObject);
    procedure GenerateAndExecuteClick(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Example8Lockopportunities1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure Back3Click(Sender: TObject);
    procedure TabSheet1Resize(Sender: TObject);
    procedure TabSheet2Resize(Sender: TObject);
    procedure TabSheet3Resize(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure PasswordChange(Sender: TObject);
    procedure LinesHelpClick(Sender: TObject);
    procedure HeadersHelpClick(Sender: TObject);
  private
    appDir : string;
    timestampDir : string;
    procedure generateRun (dir : string; fname : tFileName; recordFrom : integer; recordTo : integer; numberOfLines : integer; processName : string);
  public
    defaultWorkingPath : string;
    function Generate : boolean;
  end;

var
  FSniper: TFSniper;

implementation

{$R *.dfm}

// strFolder is the folder you want to open
procedure ShowFolder(strFolder: string);
begin
  ShellExecute(Application.Handle,
    PChar('explore'),
    PChar(strFolder),
    nil,
    nil,
    SW_SHOWNORMAL);
end;

procedure DeleteFiles(const FileName: String);
var
  FileOp: TSHFileOpStruct;
begin
  FileOp.Wnd := Application.Handle;
  FileOp.wFunc := FO_DELETE;
  FileOp.pFrom := PChar(FileName + #0);
  FileOp.pTo := nil;
  FileOp.fFlags := FOF_ALLOWUNDO or FOF_NOCONFIRMATION or FOF_SILENT;
  SHFileOperation(FileOp);
end;

Function NVL(S, S1 : String) : String;
Begin
 If Trim(S) = '' Then Result := S1 Else Result := S;
End;

Var R : TRegistry;

Procedure  SetSystemParam(Name, Value : ShortString);
 var aconfigurationSet : string;
     appName           : string;
Begin
 R:=TRegistry.Create;
 R.RootKey:=HKEY_CURRENT_USER;
 R.OpenKey('SOFTWARE\Software Factory\ScriptGenerator',TRUE);
 R.WriteString(Name, Value);
 R.CloseKey;
 R.Destroy;
End;

Function  GetSystemParam(Name : ShortString) : ShortString;  overload;
 var appName : string;
Begin
 R:=TRegistry.Create;
 R.RootKey:=HKEY_CURRENT_USER;
 R.OpenKey('SOFTWARE\Software Factory\ScriptGenerator' ,TRUE);

 NAME := UPPERCASE(NAME);

 Result  := R.ReadString(Name);
 R.CloseKey;
 R.Destroy;
End;

function  GetSystemParam(Name : ShortString; defaultValue : shortString) : ShortString;  overload;
begin
 result := nvl( GetSystemParam(Name), defaultValue);
end;

Type  TCharSet = Set of Char;

function WordPosition(const N: Integer; S: string; WordDelims: TCharSet): Integer;
var
  Count, I: Integer;
begin
  Count := 0;
  I := 1;
  Result := 0;
  while (I <= Length(S)) and (Count <> N) do begin

    while (I <= Length(S)) and (S[I] in WordDelims) do Begin
      Inc(I);
      Break;
    End;

    if I <= Length(S) then
      Inc(Count);

    if Count <> N then
      while (I <= Length(S)) and not (S[I] in WordDelims) do
        Inc(I)
    else Result := I;
  end;
end;

function ExtractWord(N: Integer; const S: string; WordDelims: TCharSet): string;
var
  I: Word;
  Len: Integer;
begin
  Len := 0;
  I := WordPosition(N, S, WordDelims);
  if I <> 0 then
    while (I <= Length(S)) and not(S[I] in WordDelims) do begin
      Inc(Len);
      SetLength(Result, Len);
      Result[Len] := S[I];
      Inc(I);
    end;
  SetLength(Result, Len);
end;


procedure TFSniper.FormShow(Sender: TObject);
begin
 appDir := extractFilePath (Application.ExeName);

 defaultWorkingPath := sysUtils.GetEnvironmentVariable('USERPROFILE') + '\'+copy(extractFileName(application.ExeName), 1,   length ( extractFileName(application.ExeName) ) - 4);
 FileCtrl.ForceDirectories(defaultWorkingPath);

 url.Text := getSystemParam('url',url.Text);
 User.Text := getSystemParam('User',User.Text);
 //Password.Text := getSystemParam('Password',Password.Text);
 processes.Text := getSystemParam('processes',processes.Text);
 workingDir.Text := getSystemParam('workingDir',defaultWorkingPath);
 if fileExists(defaultWorkingPath+'\tmpHeader.txt') then header.Lines.LoadFromFile(defaultWorkingPath+'\tmpHeader.txt');
 if fileExists(defaultWorkingPath+'\tmpLines.txt') then lines.Lines.LoadFromFile(defaultWorkingPath+'\tmpLines.txt');

end;

procedure cleanUp(Dir: String; fileMask: String);
var
  Result: TSearchRec; Found: Boolean;
begin
  Found := False;
  if FindFirst(Dir + '\'+fileMask, faAnyFile, Result) = 0 then
    while not Found do begin
      if (Result.Attr and faAnyFile <> faDirectory) then DeleteFile(Dir + '\' + Result.Name);
      Found := FindNext(Result) <> 0;
    end;
  FindClose(Result);
  //RemoveDir(Dir);
end;


procedure TFSniper.generateRun (dir : string; fname : tFileName; recordFrom : integer; recordTo : integer; numberOfLines : integer; processName : string);
var f : textfile;
    n : integer;
begin
  Header.Lines.SaveToFile(dir+'\Header.txt');
  Lines.Lines.SaveToFile(dir+'\Lines.txt');

  //RUN.BAT
  AssignFile(f,dir+fname);
  reWrite(f);

  if (numberOfLines>0) then begin
    WriteLn(f,'cd "'+dir+'"');
    WriteLn(f,'call config.bat');
    for n := recordFrom to recordTo Do begin
      WriteLn(f,'time /T');
      WriteLn(f,'java -Dfile.encoding=UTF8 -jar executeAnonymous.jar %url% %uname% %pass% %apiv% script'+inttostr(n)+'.txt >> general'+processName+'.log');
      if (n mod 100 = 0) then begin
        RunBtn.Caption :=  inttostr(n) +' of ' + inttostr(numberOfLines);
        RunBtn.refresh;
      end;
    end;
    WriteLn(f,'del config.bat');
    WriteLn(f,'del script*.txt');
    WriteLn(f,'pause');
    closeFile(f);
  end else begin
      WriteLn(f,'cd "'+dir+'"');
      WriteLn(f,'call config.bat');
      WriteLn(f,':do_while_loop_start');
      WriteLn(f,'time /T');
      WriteLn(f,'java -Dfile.encoding=UTF8 -jar executeAnonymous.jar %url% %uname% %pass% %apiv% script.txt >> general'+processName+'.log');
      WriteLn(f,'goto do_while_loop_start');
      closeFile(f);

      AssignFile(f,dir+'\script.txt');
      reWrite(f);
      WriteLn(f,
        Header.Text
      );
      closeFile(f);
  end;
end;

Function DateToYYYYMMDD_HHMMSSMI(Data : TDateTime) : ShortString;
//DD-MM-YYYY HH24:MI:SS:MI
  Var Year,Month,Day      : Word;
      TS                  : TTimeStamp;
      Hour, Min, Sec, MSec: Word;
Begin
 TS := DateTimeToTimeStamp(Data);
 TS.Time := 0;
 decodeDate(TimeStampToDateTime(TS) ,Year,Month,Day);

 TS := DateTimeToTimeStamp(Data);
 TS.Date := 0;
 DecodeTime(Data ,Hour, Min, Sec, MSec);

 Result := FormatFloat('0000',Year)+'-'+FormatFloat('00',Month)+'-'+FormatFloat('00',Day)+'_'+FormatFloat('00',Hour)+FormatFloat('00',Min)+FormatFloat('00',Sec); //+':'+FormatFloat('000',MSec);
End;


function TFSniper.Generate : boolean;
var f : textfile;
    t : integer;
    c : integer;
    numberOfProcesses : integer;
    numberOfLines     : integer;
    recordsInProcess : integer;
    recordFrom : integer;
    recordTo : integer;
    processNumber : integer;
    processName : string;
    headerText : string;
    currLine : string;
    parameter1 : string;
    parameter2 : string;
    parameter3 : string;
    parameter4 : string;
    parameter5 : string;
    parameter6 : string;
    parameter7 : string;
    parameter8 : string;
    parameter9 : string;
    parameter10 : string;

begin
  timestampDir := workingDir.text + '/' + DateToYYYYMMDD_HHMMSSMI(now);
  FileCtrl.ForceDirectories( timestampDir );
  cleanUp(timestampDir, 'script*');
  cleanUp(timestampDir, 'run*');
  cleanUp(timestampDir, 'general*');

  copyFile(
     PAnsiChar(appDir+'ExecuteAnonymous.jar')
   , PAnsiChar(timestampDir+'\ExecuteAnonymous.jar')
   ,false);

  RunBtn.Enabled := false;
  RunBtn.Refresh;

  //CONFIG.BAT
  AssignFile(f, timestampDir+'\config.bat');
  reWrite(f);
  WriteLn(f,'set url='+url.text);
  WriteLn(f,'set uname='+User.text);
  WriteLn(f,'set pass='+Password.Text + SecurityToken.text);
  WriteLn(f,'set apiv=53.0');
  closeFile(f);

  c := Lines.Lines.Count-1;

  numberOfLines := Lines.Lines.Count;
  numberOfProcesses :=  strToInt(processes.text);
  recordsInProcess := Ceil(numberOfLines / numberOfProcesses);

  for processNumber := 1 to numberOfProcesses Do begin
    recordFrom := 1 +  recordsInProcess*(processNumber-1);
    recordTo   := recordsInProcess +  recordsInProcess*(processNumber-1);
    if (recordTo > c+1) then recordTo := numberOfLines;
    if numberOfProcesses = 1 then processName := ''
      else processName := '_process_'+ intToStr(processNumber);
    generateRun(timestampDir, '\run'+processName+'.bat', recordFrom, recordTo, numberOfLines, processName);
  end;

  //script<x>.txt
  for t := 0 to c Do begin
    AssignFile(f,timestampDir+'\script'+inttostr(t+1)+'.txt');
    reWrite(f);

    headerText := Header.Text;

    currLine := StringReplace(Lines.Lines[t],'"','', [rfReplaceAll]);
    parameter1 := ExtractWord(1, currLine, [',',';']);
    parameter2 := ExtractWord(2, currLine, [',',';']);
    parameter3 := ExtractWord(3, currLine, [',',';']);
    parameter4 := ExtractWord(4, currLine, [',',';']);
    parameter5 := ExtractWord(5, currLine, [',',';']);
    parameter6 := ExtractWord(6, currLine, [',',';']);
    parameter7 := ExtractWord(7, currLine, [',',';']);
    parameter8 := ExtractWord(8, currLine, [',',';']);
    parameter9 := ExtractWord(9, currLine, [',',';']);
    parameter10:= ExtractWord(10,currLine, [',',';']);

    headerText := StringReplace(headerText, ':parameter1', parameter1, [rfReplaceAll]);
    headerText := StringReplace(headerText, ':parameter2', parameter2, [rfReplaceAll]);
    headerText := StringReplace(headerText, ':parameter3', parameter3, [rfReplaceAll]);
    headerText := StringReplace(headerText, ':parameter4', parameter4, [rfReplaceAll]);
    headerText := StringReplace(headerText, ':parameter5', parameter5, [rfReplaceAll]);
    headerText := StringReplace(headerText, ':parameter6', parameter6, [rfReplaceAll]);
    headerText := StringReplace(headerText, ':parameter7', parameter7, [rfReplaceAll]);
    headerText := StringReplace(headerText, ':parameter8', parameter8, [rfReplaceAll]);
    headerText := StringReplace(headerText, ':parameter9', parameter9, [rfReplaceAll]);
    headerText := StringReplace(headerText, ':parameter10', parameter10, [rfReplaceAll]);

    if (Header.Text=headerText) then
     //no params
     currLine := Lines.Lines[t]
    else
     currLine := '';

    WriteLn(f,
      headerText+
      currLine
    );
    closeFile(f);
    if (t mod 100 = 0) then begin
      RunBtn.Caption :=  inttostr(t) +' of ' + inttostr(c);
      RunBtn.refresh;
    end;
  end;

  RunBtn.Caption := 'Generate!';
  RunBtn.Enabled := true;
  result := true;
end;


procedure TFSniper.LinesLoadFromFileClick(Sender: TObject);
begin
 OpenDialog.InitialDir := workingDir.Text;
 if OpenDialog.Execute then
   Lines.Lines.LoadFromFile(OpenDialog.FileName);
end;

procedure TFSniper.HeaderLoadFromFileClick(Sender: TObject);
begin
 OpenDialog.InitialDir := workingDir.Text;
 if OpenDialog.Execute then
   Header.Lines.LoadFromFile(OpenDialog.FileName);
end;

procedure TFSniper.BitBtn1Click(Sender: TObject);
var point : tpoint;
    btn   : tcontrol;
begin
 btn     := sender as tcontrol;
 Point.x := 0;
 Point.y := btn.Height;
 Point   := btn.ClientToScreen(Point);
 Popup.Popup(Point.X,Point.Y);
end;

procedure TFSniper.Basicexample1Click(Sender: TObject);
begin
 header.Lines.LoadFromFile( appDir + 'h1.txt' );
 lines.Lines.LoadFromFile( appDir + 'l1.txt' );
end;

procedure TFSniper.WritingErrorToGenerallog1Click(Sender: TObject);
begin
 header.Lines.LoadFromFile( appDir + 'h2.txt' );
 lines.Lines.LoadFromFile( appDir + 'l2.txt' );
end;

procedure TFSniper.Mergeaccount1Click(Sender: TObject);
begin
 header.Lines.LoadFromFile( appDir + 'h3.txt' );
 lines.Lines.LoadFromFile( appDir + 'l3.txt' );
end;

procedure TFSniper.Mergecontacts1Click(Sender: TObject);
begin
 header.Lines.LoadFromFile( appDir + 'h4.txt' );
 lines.Lines.LoadFromFile( appDir + 'l4.txt' );
end;

procedure TFSniper.Example5ConvertLead1Click(Sender: TObject);
begin
 header.Lines.LoadFromFile( appDir + 'h5.txt' );
 lines.Lines.LoadFromFile( appDir + 'l5.txt' );
end;

procedure TFSniper.Example6ConvertAttachmentsintoFiles1Click(
  Sender: TObject);
begin
 header.Lines.LoadFromFile( appDir + 'h6.txt' );
 lines.Lines.LoadFromFile( appDir + 'l6.txt' );
end;

procedure TFSniper.Example7Mergecontactsbasic1Click(Sender: TObject);
begin
 header.Lines.LoadFromFile( appDir + 'h7.txt' );
 lines.Lines.LoadFromFile( appDir + 'l7.txt' );
end;

     function SUBSTR(S : string; Index : integer; const Count: Integer = 65000): string;
     begin
      result := copy(S, Index, count);
     end;

     function INSTR(str : string; substr : string; const fromPos : integer = 1) : integer;
      var truncatedStr : string;
     begin
       truncatedStr := copy( str, 1, fromPos - 1);
       str          := copy( str, fromPos , 65000);

       result := pos (substr, str );
       if result > 0 then result := result + ( length(truncatedStr) );
     end;

function ExecuteFile(const FileName, Params, DefaultDir: string;
  ShowCmd: Integer): THandle;
var
  lParams : string;
  zFileName, zParams, zDir: array[0..79] of Char;
begin
  lParams := Params;
  if ( instr(lParams,' ')<>0 ) and ( instr(lParams,'"')=0 ) then  lParams := '"'+ lParams + '"';
  Result := ShellExecute({Application.MainForm.Handle}0, nil,
    StrPCopy(zFileName, FileName), StrPCopy(zParams, lParams),
    StrPCopy(zDir, DefaultDir), ShowCmd);
end;



procedure TFSniper.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  setSystemParam('url',url.Text);
  setSystemParam('processes',processes.Text);
  setSystemParam('User',User.Text);
  //setSystemParam('Password',Password.Text);
  header.Lines.SaveToFile(defaultWorkingPath+'\tmpHeader.txt');
  lines.Lines.SaveToFile(defaultWorkingPath+'\tmpLines.txt');
  setSystemParam('workingDir',workingDir.Text);
end;

procedure TFSniper.HeaderKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If ssCtrl in Shift then
   if key = 65 then
     Header.SelectAll;
end;

procedure TFSniper.LinesKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If ssCtrl in Shift then
   if key = 65 then
     Lines.SelectAll;
end;


procedure TFSniper.processesChange(Sender: TObject);
begin
 GenerateAndExecute.Enabled := processes.Text = '1';
end;


procedure TFSniper.GenerateAndExecuteClick(Sender: TObject);
var point : tpoint;
    btn   : tcontrol;
begin
 btn     := sender as tcontrol;
 Point.x := 0;
 Point.y := btn.Height;
 Point   := btn.ClientToScreen(Point);
 Gen.Popup(Point.X,Point.Y);
end;

procedure TFSniper.SpeedButton1Click(Sender: TObject);
var
  URL: string;
begin
  URL := 'https://www.linkedin.com/in/maciej-szymczak-a818a011/';
  URL := StringReplace(URL, '"', '%22', [rfReplaceAll]);
  ShellExecute(0, 'open', PChar(URL), nil, nil, SW_SHOWNORMAL);

  URL := 'https://www.linkedin.com/in/emcoste/';
  URL := StringReplace(URL, '"', '%22', [rfReplaceAll]);
  ShellExecute(0, 'open', PChar(URL), nil, nil, SW_SHOWNORMAL);
end;

procedure TFSniper.SpeedButton2Click(Sender: TObject);
begin
  ShowFolder(workingDir.Text);
end;

procedure TFSniper.Example8Lockopportunities1Click(Sender: TObject);
begin
 header.Lines.LoadFromFile( appDir + 'h8.txt' );
 lines.Lines.LoadFromFile( appDir + 'l8.txt' );
end;

procedure TFSniper.Button1Click(Sender: TObject);

var currentChartClasses :
      array of
        array of
          record
            cnt : string;
            classes: array of record a : string; end
          end;
    t : integer;
begin
  setLength(currentChartClasses,10);
  for t := 0 to 9 do
    setLength(currentChartClasses[t],10);



end;

procedure TFSniper.SpeedButton3Click(Sender: TObject);
begin
Pages.ActivePageIndex := 1;
end;

procedure TFSniper.SpeedButton4Click(Sender: TObject);
begin
 Pages.ActivePageIndex := 2;
end;

procedure TFSniper.SpeedButton5Click(Sender: TObject);
begin
 Pages.ActivePageIndex := 0;
end;

procedure TFSniper.Back3Click(Sender: TObject);
begin
 Pages.ActivePageIndex := 1;
end;

procedure TFSniper.TabSheet1Resize(Sender: TObject);
begin
 LogonPanel.Left :=  (BodyPanel1.Width -  LogonPanel.Width) div 2;
 LogonPanel.Top :=  (BodyPanel1.Height -  LogonPanel.Height) div 2;
 ButtonsPane1.Left :=  (TabSheet1.Width -  ButtonsPane1.Width) div 2;

 ButtonsPane12.Left :=  (TabSheet2.Width -  ButtonsPane12.Width) div 2;

 ConfigPanel.Left :=  (TabSheet3.Width -  ConfigPanel.Width) div 2;
 ConfigPanel.Top :=  (BodyPanel1.Height -  ConfigPanel.Height) div 2;
 ButtonsPanel3.Left :=  (TabSheet3.Width -  ButtonsPanel3.Width) div 2;
end;

procedure TFSniper.TabSheet2Resize(Sender: TObject);
begin
 TabSheet1Resize(nil);
end;

procedure TFSniper.TabSheet3Resize(Sender: TObject);
begin
 TabSheet1Resize(nil);
end;

procedure TFSniper.FormPaint(Sender: TObject);
begin
 TabSheet1Resize(nil);
end;

procedure TFSniper.PasswordChange(Sender: TObject);
begin
 PasswordNotProvided.Visible := false;
end;

procedure TFSniper.RunBtnClick(Sender: TObject);
begin
 if not Generate then exit;
 ExecuteFile( timestampDir + '\Run.bat','','',SW_SHOWMAXIMIZED);
end;

procedure TFSniper.MenuItem1Click(Sender: TObject);
begin
  if not Generate then exit;
  showmessage('DONE. Now you can run the script run.bat'+#13+#10+'Remember to keep working folder under key as it contains sensitive data, especially the password in the file config.bat');
  ShowFolder(timestampDir);
end;


procedure TFSniper.LinesHelpClick(Sender: TObject);
begin
  showmessage('Leave the lines blank if you want the script to be executed in the infinite loop');
end;

procedure TFSniper.HeadersHelpClick(Sender: TObject);
begin
  showmessage('You can refer to lines using the syntax :parameter1, :parameter2 and so on');
end;

end.
