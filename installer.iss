;//--- Patch information ---\\
#define Name        "Shollym™ Patch"
#define Type        "PES6 Standalone Patch"
#define Year        "2016"
#define Season      "2015/2016"
#define SizeByte    "5627741463"
#define Version     "1.1.0.0"
#define Developer   "Shollym Team"
#define Language    "English"
#define Description "No requirements for PES 6 pre-installed."

#define Link        "https://www.facebook.com/ShollymPatch"

#define Serial      ""
#define Registry    "SOFTWARE\KONAMIPES6\SMPR"

#define PatchID     "{3CC58197-47F6-44A5-BDF1-11AF6A00F411}"


[Setup]
AppId={{#PatchID}}
AppName={#Name}
AppVerName={#Name} {#Season}
AppPublisher={#Developer}
DefaultDirName={sd}\Games\Shollym Multi-Patch
DefaultGroupName=Shollym Multi-Patch
OutputDir=output
OutputBaseFilename=setup
SolidCompression=yes
Compression=lzma2/ultra64
InternalCompressLevel=ultra64 
ExtraDiskSpaceRequired={#SizeByte}
AllowNoIcons=yes
SetupIconFile=icons\install.ico
WizardImageFile=images\WizardImage.bmp
WizardSmallImageFile=images\WizardSmallImage.bmp
VersionInfoCopyright={#Developer}
VersionInfoDescription={#Name} {#Year} Install
VersionInfoVersion={#Version}
UninstallFilesDir={app}\uninstall
;LicenseFile=Help\license.txt
InfoBeforeFile=help\readme.rtf


[Types]
Name: recommend;  Description: "Install with Recommend settings";
Name: custom;     Description: "Install with Custom settings";    Flags: iscustom


[Components]
Name: "balls"; Description: "Kitserver Balls Files"; ExtraDiskSpaceRequired: 65704816; Types: recommend; Flags: checkablealone
Name: "boots"; Description: "Kitserver Boots Files"; ExtraDiskSpaceRequired: 219394233; Types: recommend; Flags: checkablealone
Name: "faces"; Description: "Kitserver Faces Files"; ExtraDiskSpaceRequired: 349372953; Types: recommend; Flags: checkablealone
Name: "hair"; Description: "Kitserver Hair Files"; ExtraDiskSpaceRequired: 200185628; Types: recommend; Flags: checkablealone
;Name: "stadium"; Description: "Kitserver Stadium Files"; ExtraDiskSpaceRequired: 1024
Name: "uni"; Description: "Kitserver Uni Files"; ExtraDiskSpaceRequired: 856626580; Types: recommend; Flags: checkablealone

;sound components
;Name: "sound";              Description: "Patch Sound Files";
;Name: "sound\main";         Description: "Main Sound file (0_sound)";             ExtraDiskSpaceRequired: 1584508928;   Types: recommend; Flags: fixed
;Name: "sound\classic";      Description: "Classic Sound File (x_sound)";          ExtraDiskSpaceRequired: 691276800;    Types: recommend; Flags: checkablealone
;Name: "sound\club";         Description: "Club Sound File (e_sound)";             ExtraDiskSpaceRequired: 1872146432;   Types: recommend; Flags: checkablealone
;Name: "sound\national";     Description: "National Sound File (x_sound)";         ExtraDiskSpaceRequired: 691276800;    Types: recommend; Flags: checkablealone
;text components
;Name: "text";               Description: "Patch Text Files";
;Name: "text\hd";            Description: "High Definition Graphic (0_text)";      ExtraDiskSpaceRequired: 502831104;    Types: recommend; Flags: exclusive checkablealone
;Name: "text\sd";            Description: "Standard Definition Graphic (0_text)";  ExtraDiskSpaceRequired: 493520896;                      Flags: exclusive
;kitserver components
;Name: "kitserver";          Description: "Patch Kitserver Files";
;Name: "kitserver\balls";    Description: "Kitserver Balls Files";                 ExtraDiskSpaceRequired: 65704816;     Types: recommend; Flags: checkablealone
;Name: "kitserver\boots";    Description: "Kitserver Boots Files";                 ExtraDiskSpaceRequired: 219394233;    Types: recommend; Flags: checkablealone
;Name: "kitserver\faces";    Description: "Kitserver Faces Files";                 ExtraDiskSpaceRequired: 349372953;    Types: recommend; Flags: checkablealone
;Name: "kitserver\hair";     Description: "Kitserver Hair Files";                  ExtraDiskSpaceRequired: 200185628;    Types: recommend; Flags: checkablealone
;Name: "kitserver\stadium";  Description: "Kitserver Stadium Files";               ExtraDiskSpaceRequired: 1024;         Types: recommend; Flags: checkablealone
;Name: "kitserver\uni";          Description: "Kitserver Uni Files";               ExtraDiskSpaceRequired: 856626580;    Types: recommend; Flags: checkablealone
;Name: "kitserver\uni\classic";  Description: "Classic Uni Files";                 ExtraDiskSpaceRequired: 221945646;    Types: recommend; Flags: checkablealone
;Name: "Kitserver\uni\club";     Description: "Club Uni Files";                    ExtraDiskSpaceRequired: 286036988;    Types: recommend; Flags: checkablealone
;Name: "kitserver\uni\national"; Description: "National Uni Files";                ExtraDiskSpaceRequired: 348637732;    Types: recommend; Flags: checkablealone



[Registry]
Root: HKLM; Subkey: "{#Registry}"; ValueType: string; ValueName: "installdir";  ValueData: "{app}";     Flags: uninsdeletekey
Root: HKLM; Subkey: "{#Registry}"; ValueType: dword;  ValueName: "lang_e";      ValueData: "1";         Flags: uninsdeletekey
Root: HKLM; Subkey: "{#Registry}"; ValueType: dword;  ValueName: "lang_f";      ValueData: "0";         Flags: uninsdeletekey
Root: HKLM; Subkey: "{#Registry}"; ValueType: dword;  ValueName: "lang_g";      ValueData: "0";         Flags: uninsdeletekey
Root: HKLM; Subkey: "{#Registry}"; ValueType: dword;  ValueName: "lang_i";      ValueData: "0";         Flags: uninsdeletekey
Root: HKLM; Subkey: "{#Registry}"; ValueType: dword;  ValueName: "lang_s";      ValueData: "0";         Flags: uninsdeletekey
Root: HKLM; Subkey: "{#Registry}"; ValueType: dword;  ValueName: "lang_p";      ValueData: "0";         Flags: uninsdeletekey
Root: HKLM; Subkey: "{#Registry}"; ValueType: string; ValueName: "installfrom"; ValueData: "";          Flags: uninsdeletekey
Root: HKLM; Subkey: "{#Registry}"; ValueType: string; ValueName: "code";        ValueData: "{#Serial}"; Flags: uninsdeletekey
Root: HKLM; Subkey: "{#Registry}\1.0"


[Icons]
Name: "{group}\Uninstall";                  Filename: "{app}\uninstall\unins000.exe"; WorkingDir: "{app}\uninstall";  Comment: "Uninstall {#Name}";   Check: CheckError
Name: "{group}\Switcher";                   Filename: "{app}\switcher\switcher.exe";  WorkingDir: "{app}\switcher";   Comment: "{#Name} Switcher";    Check: CheckError
Name: "{group}\Settings";                   Filename: "{app}\settings.exe";           WorkingDir: "{app}";            Comment: "{#Name} Settings";    Check: CheckError
Name: "{group}\Multiplayer";                Filename: "{app}\kitserver\kithost.exe";  WorkingDir: "{app}\kitserver";  Comment: "{#Name} Multiplayer"; Check: CheckError
Name: "{group}\Help";                       Filename: "{app}\help";                   WorkingDir: "{app}\help";       Comment: "{#Name} Help";        Check: CheckError;   Flags: foldershortcut
Name: "{commondesktop}\Shollym™ Switcher";  Filename: "{app}\switcher\switcher.exe";  WorkingDir: "{app}\switcher";   Comment: "{#Name} Switcher";    Check: CheckError

[Tasks]
Name: "DesktopIcon";  Description: "Create a &desktop icon";                GroupDescription: "Additional Icons"; Flags: checkablealone
Name: "DirectX";      Description: "Install Microsoft DirectX Online";      GroupDescription: "Support Software"; Flags: unchecked
Name: "MVCppRedist";  Description: "Install Microsoft Visual C++ Redist";   GroupDescription: "Support Software"; Flags: unchecked
Name: "dotNet";       Description: "Install Microsoft .NET Framework v4.0"; GroupDescription: "Support Software"; Flags: checkablealone


[Run]
;Supprot Software
Filename: "{tmp}\dxwebsetup.exe";             Parameters: "/q"; StatusMsg: "Install Microsoft DirectX online...";          Check: CheckError; Tasks: DirectX;      Flags: skipifdoesntexist
Filename: "{tmp}\vcredist_2005_x86.exe";      Parameters: "/q"; StatusMsg: "Install Microsoft Visual C++ Redist (x86)..."; Check: CheckError; Tasks: MVCppRedist;  Flags: skipifdoesntexist
;Filename: "{src}\redist\vcredist_x64.exe";    Parameters: "/q"; StatusMsg: "Install Microsoft Visual C++ Redist (x64)..."; Check: CheckError; Tasks: MVCppRedist;  Flags: skipifdoesntexist
Filename: "{tmp}\dotNetFx40_Full_setup.exe";  Parameters: "/q"; StatusMsg: "Install Microsoft .NET Framework v4.0...";     Check: CheckError; Tasks: dotNet;       Flags: skipifdoesntexist


[Files]
Source: "include\*";  DestDir: "{tmp}";       Flags: dontcopy
Source: "redist\*";   DestDir: "{tmp}";       Flags: dontcopy
Source: "help\*";     DestDir: "{app}\help";  Flags: ignoreversion


[UninstallDelete]
Type: filesandordirs; Name: {app}


[Languages]
Name: eng; MessagesFile: compiler:Default.isl


[CustomMessages]
PatchName={#Name}
PatchType=Pro Evolution Soccer 6 Patch
PatchYear={#Year}
PatchSeason={#Season}
PatchLanguage={#Language}
PatchDeveloper={#Developer}
PatchDescription=It does not require the installed %nPES 6 on your computer.

FinishedText=The installation is successfully completed saving%n{#Name} {#Year} on your computer.%n%nThe game can run a shortcut on %nthe Desktop or Start Menu.
FinishedSubText=Click Finish to close the window.
FinishedErrorText=An unknown error and the installation was %nnot completed.%n%nTry to solve the problem and run %nSetup again.

eng.ExtractedFile=Extracted file:
eng.Extracted=Data is being installed please wait ...
eng.CancelButton=Cancel
eng.Error=Installation cancelled!
eng.ElapsedTime=Elapsed time:
eng.RemainingTime=Remaining time:
eng.EstimatedTime=Estimated time:
eng.AllElapsedTime=All elapsed time:
eng.ScanFile=Scan file...
eng.TimeError=0 sec


[Messages]
eng.SetupWindowTitle={#Name}: Season {#Season}
eng.BeveledLabel= - © 2007/{#Year} Shollym™
;InfoBefore Page
eng.InfoBeforeLabel=Please read the following important information.
;Select Dir Page
eng.SelectDirDesc=Where should this game be installed?
eng.SelectDirLabel3=Setup will install game into the following folder.
eng.SelectDirBrowseLabel=If you would like to select a different folder, click Browse.%nTo continue, click Next. 
;Select Group Page
eng.SelectStartMenuFolderDesc=Where will be placed shortcuts?
eng.SelectStartMenuFolderBrowseLabel=If you would like to select a different folder, click Browse.%nTo continue, click Next.
;Select Tasks Page
eng.SelectTasksDesc=Select the additional tasks if necessary.
eng.SelectTasksLabel2=Select the additional tasks you would like Setup to perform while installing.%nClick Next to continue.
;Ready Page
eng.ReadyLabel1=Setup is now ready to start the installation.
eng.ReadyLabel2a=Click Install to continue with the installation or back for preview settings.
eng.PreparingDesc=Setup is preparing to install on your computer.
;Install Page
eng.InstallingLabel=Please wait until it is finished!



[Code]
//Types
type
  TCallback = function (OveralPct,CurrentPct: integer;CurrentFile,TimeStr1,TimeStr2,TimeStr3:PAnsiChar): longword;

//Variables
var ISDoneProgressBarMain:  TNewProgressBar;
    
    LabelProgressBarPercent:  TLabel;
    LabelExtractFileName:     TLabel;
    LabelElapsedTime:         TLabel;
    LabelRemainingTime:       TLabel;

    LabelWelcomeTitleName:    TLabel;
    LabelWelcomeTitleSeason:  TLabel;
    
    LabelFinishedTitle:     TLabel;
    LabelFinishedSubTitle:  TLabel;
    LabelFinishedText:      TLabel;
    LabelFinishedSubText:   TLabel;

    BitmapImageAdvertisement:    TBitmapImage;
    
    MyCancelButton:             TButton;
    
    ISDoneCancel:               Integer;
    ISDoneError:                Boolean;
    
//Archive Percent
var intSoundPack:     Integer;
    intTextPack:      Integer;
    intSwitcherPack:  Integer;
    intBallsPack:     Integer;
    intBootsPack:     Integer;
    intFacesPack:     Integer;
    intHairPack:      Integer;
    //intStadiumsPack:  Integer;
    intUniPack:       Integer;


var   LabelInfoName:        TLabel;
      LabelInfoType:        TLabel;
      LabelInfoSeason:      TLabel;
      LabelInfoLanguage:    TLabel;
      LabelInfoDeveloper:   TLabel;
      LabelInfoDescription: TLabel;

var   LabelInfoNameSub:         TLabel;
      LabelInfoTypeSub:         TLabel;
      LabelInfoSeasonSub:       TLabel;
      LabelInfoLanguageSub:     TLabel;
      LabelInfoDeveloperSub:    TLabel;
      LabelInfoDescriptionSub:  TLabel;


//Functions
function ISArcExtract(CurComponent:Cardinal; PctOfTotal:double; InName, OutPath, ExtractedPath: AnsiString; DeleteInFile:boolean; Password, CfgFile, WorkPath: AnsiString; ExtractPCF: boolean ):boolean; external 'ISArcExtract@files:ISDone.dll stdcall delayload';
function IS7ZipExtract(CurComponent:Cardinal; PctOfTotal:double; InName, OutPath: AnsiString; DeleteInFile:boolean; Password: AnsiString):boolean; external 'IS7zipExtract@files:ISDone.dll stdcall delayload';
function ISRarExtract(CurComponent:Cardinal; PctOfTotal:double; InName, OutPath: AnsiString; DeleteInFile:boolean; Password: AnsiString):boolean; external 'ISRarExtract@files:ISDone.dll stdcall delayload';
function ISPrecompExtract(CurComponent:Cardinal; PctOfTotal:double; InName, OutFile: AnsiString; DeleteInFile:boolean):boolean; external 'ISPrecompExtract@files:ISDone.dll stdcall delayload';
function ISSRepExtract(CurComponent:Cardinal; PctOfTotal:double; InName, OutFile: AnsiString; DeleteInFile:boolean):boolean; external 'ISSrepExtract@files:ISDone.dll stdcall delayload';
function ISxDeltaExtract(CurComponent:Cardinal; PctOfTotal:double; minRAM,maxRAM:integer; InName, DiffFile, OutFile: AnsiString; DeleteInFile:boolean):boolean; external 'ISxDeltaExtract@files:ISDone.dll stdcall delayload';
function ISPackZIP(CurComponent:Cardinal; PctOfTotal:double; InName, OutFile: AnsiString;ComprLvl:integer; DeleteInFile:boolean):boolean; external 'ISPackZIP@files:ISDone.dll stdcall delayload';
function ShowChangeDiskWindow(Text, DefaultPath, SearchFile:AnsiString):boolean; external 'ShowChangeDiskWindow@files:ISDone.dll stdcall delayload';

function Exec2 (FileName, Param: PAnsiChar;Show:boolean):boolean; external 'Exec2@files:ISDone.dll stdcall delayload';
function ISFindFiles(CurComponent:Cardinal; FileMask:AnsiString; var ColFiles:integer):integer; external 'ISFindFiles@files:ISDone.dll stdcall delayload';
function ISPickFilename(FindHandle:integer; OutPath:AnsiString; var CurIndex:integer; DeleteInFile:boolean):boolean; external 'ISPickFilename@files:ISDone.dll stdcall delayload';
function ISGetName(TypeStr:integer):PAnsichar; external 'ISGetName@files:ISDone.dll stdcall delayload';
function ISFindFree(FindHandle:integer):boolean; external 'ISFindFree@files:ISDone.dll stdcall delayload';
function ISExec(CurComponent:Cardinal; PctOfTotal,SpecifiedProcessTime:double; ExeName,Parameters,TargetDir,OutputStr:AnsiString;Show:boolean):boolean; external 'ISExec@files:ISDone.dll stdcall delayload';

function SrepInit(TmpPath:PAnsiChar;VirtMem,MaxSave:Cardinal):boolean; external 'SrepInit@files:ISDone.dll stdcall delayload';
function PrecompInit(TmpPath:PAnsiChar;VirtMem:cardinal;PrecompVers:single):boolean; external 'PrecompInit@files:ISDone.dll stdcall delayload';
function FileSearchInit(RecursiveSubDir:boolean):boolean; external 'FileSearchInit@files:ISDone.dll stdcall delayload';
function ISDoneInit(RecordFileName:AnsiString; TimeType,Comp1,Comp2,Comp3:Cardinal; WinHandle, NeededMem:longint; callback:TCallback):boolean; external 'ISDoneInit@files:ISDone.dll stdcall';
function ISDoneStop:boolean; external 'ISDoneStop@files:ISDone.dll stdcall';
function ChangeLanguage(Language:AnsiString):boolean; external 'ChangeLanguage@files:ISDone.dll stdcall delayload';
function SuspendProc:boolean; external 'SuspendProc@files:ISDone.dll stdcall';
function ResumeProc:boolean; external 'ResumeProc@files:ISDone.dll stdcall';

function FindWindow(lpClassName, lpWindowName: PAnsiChar): HWND; external 'FindWindowA@user32.dll stdcall';
function EnableWindow(hWnd: HWND; bEnable: BOOL): BOOL; external 'EnableWindow@user32.dll stdcall';

procedure LoadSkin(lpszPath: PAnsiChar; lpszIniFileName: PAnsiChar); external 'LoadSkin@{tmp}\isskin.dll stdcall delayload';
procedure UnloadSkin; external 'UnloadSkin@{tmp}\isskin.dll stdcall delayload';


function FindWindowByName(Text: PAnsiChar): HWND;
begin
  Result:= FindWindow('#32770', ExpandConstant(Text))
end;


function ProgressCallback(OveralPct,CurrentPct: Integer;CurrentFile,TimeStr1,TimeStr2,TimeStr3:PAnsiChar): LongWord;
var msgwnd: HWND; 
begin
  msgwnd:= FindWindowByName('ISDone.dll');
  
  if msgwnd <> 0 then begin
    EnableWindow(WizardForm.Handle, False) 
    end
  else begin 
    EnableWindow(WizardForm.Handle, True);
  end;

  if OveralPct <= 1000 then begin 
    ISDoneProgressBarMain.Position := OveralPct;
  end;

  if msgwnd = 0 then begin
    LabelProgressBarPercent.Caption := IntToStr(OveralPct div 10) + '.' + chr(48 + OveralPct mod 10) + '%' 
    end
  else begin 
    LabelProgressBarPercent.Caption:= '0%';
  end;

  if msgwnd = 0 then begin
    LabelExtractFileName.Caption := ExpandConstant('{cm:ExtractedFile} ') + MinimizePathName(CurrentFile, LabelExtractFileName.Font, LabelExtractFileName.Width-ScaleX(100)); 
    end
  else begin 
    LabelExtractFileName.Caption:= ExpandConstant('{cm:ScanFile}');
  end;
  
  if msgwnd = 0 then begin
    LabelElapsedTime.Caption := ExpandConstant('{cm:ElapsedTime} ') + TimeStr2;
    end
  else begin 
    LabelElapsedTime.Caption := ExpandConstant('{cm:ElapsedTime} {cm:TimeError}');
  end;

  if msgwnd = 0 then begin 
    LabelRemainingTime.Caption := ExpandConstant('{cm:RemainingTime} ') + TimeStr1;
    end 
  else begin 
    LabelRemainingTime.Caption := ExpandConstant('{cm:RemainingTime} {cm:TimeError}');
  end;
  
  Result := ISDoneCancel;
end;


procedure CancelButtonOnClick(Sender: TObject);
begin
  SuspendProc;
  if MsgBox(SetupMessage(msgExitSetupMessage), mbConfirmation, MB_YESNO) = IDYES then ISDoneCancel:=1;
  ResumeProc;
end;

procedure Advertisement(Sender: TObject);
  var
    ErrCode: integer;
begin
    begin
        ShellExec('open', '{#Link}', '', '', SW_SHOW, ewNoWait, ErrCode);
    end;
end;

function GetUninstallString: string;
var
  sUnInstPath: string;
  sUnInstallString: String;
begin
  Result := '';
  sUnInstPath := ExpandConstant('Software\Microsoft\Windows\CurrentVersion\Uninstall\{3CC58197-47F6-44A5-BDF1-11AF6A00F411}}_is1')
  sUnInstallString := '';
  if not RegQueryStringValue(HKLM, sUnInstPath, 'UninstallString', sUnInstallString) then
    RegQueryStringValue(HKCU, sUnInstPath, 'UninstallString', sUnInstallString);
  Result := sUnInstallString;
end;

function IsUpgrade: Boolean;
begin
  Result := (GetUninstallString() <> '');
end;



procedure HideControls;
begin
  WizardForm.FileNameLabel.Hide;
  ISDoneProgressBarMain.Hide;
  LabelProgressBarPercent.Hide;
  LabelExtractFileName.Hide;
  LabelElapsedTime.Hide;
  LabelRemainingTime.Hide;
  MyCancelButton.Hide;
end;

procedure CreateControls;
begin
  //ProgressBar
  ISDoneProgressBarMain           := TNewProgressBar.Create(WizardForm);
  ISDoneProgressBarMain.Parent    := WizardForm.InstallingPage;
  ISDoneProgressBarMain.Left      := WizardForm.ProgressGauge.Left;
  ISDoneProgressBarMain.Top       := WizardForm.ProgressGauge.Top + ScaleY(5);
  ISDoneProgressBarMain.Height    := WizardForm.ProgressGauge.Height;
  ISDoneProgressBarMain.Width     := WizardForm.ProgressGauge.Width;
  ISDoneProgressBarMain.Max       := 1000;
  //Percent
  LabelProgressBarPercent           := TLabel.Create(WizardForm);
  LabelProgressBarPercent.Parent    := WizardForm.InstallingPage;
  LabelProgressBarPercent.Left      := ISDoneProgressBarMain.Width - ScaleX(50);
  LabelProgressBarPercent.Top       := ISDoneProgressBarMain.Top - ScaleY(18);
  LabelProgressBarPercent.Width     := ScaleX(50);
  LabelProgressBarPercent.Height    := ScaleY(18);
  LabelProgressBarPercent.AutoSize  := False;
  LabelProgressBarPercent.Alignment := taRightJustify;
  //Extract Filename
  LabelExtractFileName            := TLabel.Create(WizardForm);
  LabelExtractFileName.Parent     := WizardForm.InstallingPage;
  LabelExtractFileName.Left       := ISDoneProgressBarMain.Left;
  LabelExtractFileName.Top        := ISDoneProgressBarMain.Top - ScaleY(18);
  LabelExtractFileName.Width      := ISDoneProgressBarMain.Width - ScaleX(50);
  LabelExtractFileName.Height     := ScaleY(18);
  LabelExtractFileName.AutoSize   := False;
  LabelExtractFileName.Alignment  := taLeftJustify;
  //Elapsed Time
  LabelElapsedTime            := TLabel.Create(WizardForm);
  LabelElapsedTime.Parent     := WizardForm.InstallingPage;
  LabelElapsedTime.Left       := ISDoneProgressBarMain.Left;
  LabelElapsedTime.Top        := ISDoneProgressBarMain.Top + ISDoneProgressBarMain.Height + ScaleY(5);
  LabelElapsedTime.Width      := ISDoneProgressBarMain.Width div 2;
  LabelElapsedTime.AutoSize   := False;
  LabelElapsedTime.Alignment  := taLeftJustify;
  //Remaining Time
  LabelRemainingTime            := TLabel.Create(WizardForm);
  LabelRemainingTime.Parent     := WizardForm.InstallingPage;
  LabelRemainingTime.Left       := ISDoneProgressBarMain.Left + LabelElapsedTime.Width;
  LabelRemainingTime.Top        := ISDoneProgressBarMain.Top + ISDoneProgressBarMain.Height + ScaleY(5);
  LabelRemainingTime.Width      := ISDoneProgressBarMain.Width div 2;
  LabelRemainingTime.Height     := ScaleY(18);
  LabelRemainingTime.AutoSize   := False;
  LabelRemainingTime.Alignment  := taRightJustify;
  //My Cancel Button
  MyCancelButton            := TButton.Create(WizardForm);
  MyCancelButton.Parent     := WizardForm;
  MyCancelButton.Left       := WizardForm.CancelButton.Left;
  MyCancelButton.Top        := WizardForm.CancelButton.Top;
  MyCancelButton.Width      := WizardForm.CancelButton.Width;
  MyCancelButton.Height     := WizardForm.CancelButton.Height;
  MyCancelButton.OnClick    := @CancelButtonOnClick;
  MyCancelButton.Caption    := 'Cancel'
 
  
  //Welcome Title Name
  LabelWelcomeTitleName             := TLabel.Create(WizardForm);
  LabelWelcomeTitleName.Parent      := WizardForm.WelcomePage;  
  LabelWelcomeTitleName.Left        := 200;
  LabelWelcomeTitleName.Top         := 10;
  LabelWelcomeTitleName.Caption     := '{#Name}';
  LabelWelcomeTitleName.Autosize    := True;
  LabelWelcomeTitleName.Font.Name   := 'Segoe UI';
  LabelWelcomeTitleName.Font.Size   := 24;
  LabelWelcomeTitleName.Font.Style  := [fsBold];
  LabelWelcomeTitleName.Font.Color  :=  $008CFF;
  
  //Welcome Title Season
  LabelWelcomeTitleSeason            := TLabel.Create(WizardForm);
  LabelWelcomeTitleSeason.Parent     := WizardForm.WelcomePage;  
  LabelWelcomeTitleSeason.Left       := 200;
  LabelWelcomeTitleSeason.Top        := 50;
  LabelWelcomeTitleSeason.Caption    := 'Season {#Season}';
  LabelWelcomeTitleSeason.Autosize   := True;
  LabelWelcomeTitleSeason.Font.Name  := 'Segoe UI';
  LabelWelcomeTitleSeason.Font.Size  := 16;
  LabelWelcomeTitleSeason.Font.Style := [fsBold];
  LabelWelcomeTitleSeason.Font.Color := $C0C0C0;
  
  //Finished Title
  LabelFinishedTitle            := TLabel.Create(WizardForm);
  LabelFinishedTitle.Parent     := WizardForm.FinishedPage;  
  LabelFinishedTitle.Left       := LabelWelcomeTitleName.Left;
  LabelFinishedTitle.Top        := LabelWelcomeTitleName.Top;  
  LabelFinishedTitle.Caption    := 'COMPLETED';
  LabelFinishedTitle.AutoSize   := True;
  LabelFinishedTitle.Font.Name  := 'Segoe UI';
  LabelFinishedTitle.Font.Size  := 24;
  LabelFinishedTitle.Font.Style := [fsBold]
  LabelFinishedTitle.Font.Color := $008CFF;
  
  //Finished Sub Title
  LabelFinishedSubTitle             := TLabel.Create(WizardForm);
  LabelFinishedSubTitle.Parent      := WizardForm.FinishedPage;
  LabelFinishedSubTitle.Left        := LabelWelcomeTitleSeason.Left;
  LabelFinishedSubTitle.Top         := LabelWelcomeTitleSeason.Top;
  LabelFinishedSubTitle.Caption     := ExpandConstant('{cm:PatchName} {cm:PatchYear}');
  LabelFinishedSubTitle.AutoSize    := True;
  LabelFinishedSubTitle.Font.Name   := 'Segoe UI';
  LabelFinishedSubTitle.Font.Size   := 16;
  LabelFinishedSubTitle.Font.Style  := [fsBold];
  LabelFinishedSubTitle.Font.Color  := $C0C0C0;
  
  //Finished Text
  LabelFinishedText             := TLabel.Create(WizardForm);
  LabelFinishedText.Parent      := WizardForm.FinishedPage;
  LabelFinishedText.Top         := 120;
  LabelFinishedText.Left        := 200;  
  LabelFinishedText.Caption     := ExpandConstant('{cm:FinishedText}');
  LabelFinishedText.Autosize    := True;
  LabelFinishedText.Font.Name   := 'Segoe UI';
  LabelFinishedText.Font.Size   := 10;
  //LabelFinishedText.Font.Style  := [fsBold];
  //LabelFinishedText.Font.Color  := $000000;

  //Finished Sub Text
  LabelFinishedSubText      := TLabel.Create(WizardForm);
  LabelFinishedSubText.Parent     := WizardForm.FinishedPage;
  LabelFinishedSubText.Top        := 240;
  LabelFinishedSubText.Left       := 200;
  LabelFinishedSubText.Caption    := ExpandConstant('{cm:FinishedSubText}');
  LabelFinishedSubText.Autosize   := True;
  LabelFinishedSubText.Font.Name  := 'Segoe UI';
  LabelFinishedSubText.Font.Size  := 10;
  //LabelFinishedSubText.Font.Style := [fsBold];
  //LabelFinishedSubText.Font.Color := $000000;

  //Bitmap Image EvoWeb
  BitmapImageAdvertisement           := TBitmapImage.Create(WizardForm);
  BitmapImageAdvertisement.Parent    := WizardForm.InstallingPage;
  BitmapImageAdvertisement.Top       := WizardForm.ProgressGauge.Top + 80;
  BitmapImageAdvertisement.Left      := WizardForm.ProgressGauge.Left;
  BitmapImageAdvertisement.Cursor    := crHand;
  BitmapImageAdvertisement.OnClick   := @Advertisement
  BitmapImageAdvertisement.Autosize  := True;
  BitmapImageAdvertisement.Bitmap.LoadFromFile(ExpandConstant('{tmp}\logo.bmp'));

end;

procedure CurPageChanged(CurPageID: Integer);
begin
  if (CurPageID = wpFinished) and ISDoneError then begin
    LabelFinishedTitle.Caption  := 'NOT COMPLETED';
    LabelFinishedText.Caption   := ExpandConstant('{cm:FinishedErrorText}');
  end;
end;

function CheckError:boolean;
begin
  result:= not ISDoneError;
end;

procedure CurStepChanged(CurStep: TSetupStep);
begin
  if CurStep = ssInstall then begin 
    //Settings Archive Percent
    intSoundPack    := 15;
    intTextPack     := 5;
    intSwitcherPack := 10;
    intBallsPack    := 10;
    intBootsPack    := 10;
    intFacesPack    := 10;
    intHairPack     := 10;
    //intStadiumsPack := 20;
    intUniPack      := 30;
         
    ISDoneCancel  := 0;
    ISDoneError   := True;
    
    WizardForm.CancelButton.Hide;
    MyCancelButton.Show;

    WizardForm.StatusLabel.Caption:=ExpandConstant('{cm:Extracted}');    
    WizardForm.StatusLabel.Height := ScaleY(18);
  
    ExtractTemporaryFile('unarc.dll');
    //ExtractTemporaryFile('ISDone.dll');
    ExtractTemporaryFile('zlib1.dll');
    ExtractTemporaryFile('CLS-precomp.dll');
    ExtractTemporaryFile('CLS-srep.dll');
    ExtractTemporaryFile('precomp.exe');
    ExtractTemporaryFile('srep.exe');
    ExtractTemporaryFile('english.ini');
    ExtractTemporaryFile('arc.ini');
    
    if ISDoneInit(ExpandConstant('{tmp}\records.inf'), $F777, 0,0,0, MainForm.Handle, 512, @ProgressCallback) then begin
      repeat
        ChangeLanguage('english');
        if not SrepInit('',512,0) then break;
        if not PrecompInit('',128,0) then break;
        if not FileSearchInit(true) then break;

        if RegValueExists(HKEY_LOCAL_MACHINE,'Software\Microsoft\Windows\CurrentVersion\Uninstall\{3CC58197-47F6-44A5-BDF1-11AF6A00F411}}_is1', 'UninstallString') then begin
          intSoundPack    := 0;
          intTextPack     := 0;
          intBallsPack    := 10;
          intBootsPack    := 15;
          intFacesPack    := 15;
          intHairPack     := 15;
          intUniPack      := 45;
          //balls.pack
          if not WizardForm.ComponentsList.Checked[0] then begin
            intSoundPack := intSoundPack + intBallsPack;
            end
          else begin
            intTextPack := intTextPack + 1;
          end;
          //boots.pack
          if not WizardForm.ComponentsList.Checked[1] then begin
            intSoundPack := intSoundPack + intBootsPack;
            end
          else begin
            intTextPack := intTextPack + 1;
          end;
          //faces.pack
          if not WizardForm.ComponentsList.Checked[2] then begin
            intSoundPack := intSoundPack + intFacesPack;
            end
          else begin
            intTextPack := intTextPack + 1;
          end;
          //hair.pack
          if not WizardForm.ComponentsList.Checked[3] then begin
            intSoundPack := intSoundPack + intHairPack;
            end
          else begin
            intTextPack := intTextPack + 1;
          end;
          //uni.pack
          if not WizardForm.ComponentsList.Checked[4] then begin
            intSoundPack := intSoundPack + intUniPack;
            end
          else begin
            intTextPack := intTextPack + 1;
          end;

          intSoundPack := intSoundPack / intTextPack;
          //;balls.pack
          if WizardForm.ComponentsList.Checked[0] then begin
            if not ShowChangeDiskWindow ('Please Insert Disk To Continue...', ExpandConstant('{src}'),'balls.pack') then break;
            if not ISArcExtract( 0, intSoundPack+intBallsPack, ExpandConstant('{src}\balls.pack'), ExpandConstant('{app}\kitserver\GDB\balls'), '', false, '144320472947294', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}'), False) then break;        
          end;
          //boots.pack
          if WizardForm.ComponentsList.Checked[1] then begin
            if not ShowChangeDiskWindow ('Please Insert Disk To Continue...', ExpandConstant('{src}'),'boots.pack') then break;
            if not ISArcExtract( 0, intSoundPack+intBootsPack, ExpandConstant('{src}\boots.pack'), ExpandConstant('{app}\kitserver\GDB\boots'), '', false, '144320472947294', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}'), False) then break;        
          end;
          //; faces.pack
          if WizardForm.ComponentsList.Checked[2] then begin
            if not ShowChangeDiskWindow ('Please Insert Disk To Continue...', ExpandConstant('{src}'),'faces.pack') then break;
            if not ISArcExtract( 0, intSoundPack+intFacesPack, ExpandConstant('{src}\faces.pack'), ExpandConstant('{app}\kitserver\GDB\faces'), '', false, '144320472947294', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}'), False) then break;        
          end;
          //hair.pack
          if WizardForm.ComponentsList.Checked[3] then begin
            if not ShowChangeDiskWindow ('Please Insert Disk To Continue...', ExpandConstant('{src}'),'hair.pack') then break;
            if not ISArcExtract( 0, intSoundPack+intHairPack, ExpandConstant('{src}\hair.pack'), ExpandConstant('{app}\kitserver\GDB\hair'), '', false, '144320472947294', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}'), False) then break;        
          end;
          //uni.pack
          if WizardForm.ComponentsList.Checked[4] then begin
            if not ShowChangeDiskWindow ('Please Insert Disk To Continue...', ExpandConstant('{src}'),'uni_classic.pack') then break;
            if not ISArcExtract( 0, (intSoundPack+intUniPack)/3, ExpandConstant('{src}\uni_classic.pack'), ExpandConstant('{app}\kitserver\GDB\uni'), '', false, '144320472947294', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}'), False) then break;
            
            if not ShowChangeDiskWindow ('Please Insert Disk To Continue...', ExpandConstant('{src}'),'uni_club.pack') then break;
            if not ISArcExtract( 0, (intSoundPack+intUniPack)/3, ExpandConstant('{src}\uni_club.pack'), ExpandConstant('{app}\kitserver\GDB\uni'), '', false, '144320472947294', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}'), False) then break;
            
            if not ShowChangeDiskWindow ('Please Insert Disk To Continue...', ExpandConstant('{src}'),'uni_nt.pack') then break;
            if not ISArcExtract( 0, (intSoundPack+intUniPack)/3, ExpandConstant('{src}\uni_nt.pack'), ExpandConstant('{app}\kitserver\GDB\uni'), '', false, '144320472947294', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}'), False) then break;
          end;
          end
        else begin
          //balls.pack
          if not WizardForm.ComponentsList.Checked[0] then begin
            intSoundPack := intSoundPack + intBallsPack;
          end;
          //boots.pack
          if not WizardForm.ComponentsList.Checked[1] then begin
            intSoundPack := intSoundPack + intBootsPack
          end;
          //faces.pack
          if not WizardForm.ComponentsList.Checked[2] then begin
            intSoundPack := intSoundPack + intFacesPack
          end;
          //hair.pack
          if not WizardForm.ComponentsList.Checked[3] then begin
            intSoundPack := intSoundPack + intHairPack
          end;
          //stadiums.pack
          //if not WizardForm.ComponentsList.Checked[4] then begin
          //  intSoundPack := intSoundPack + intStadiumsPack
          //end;
          //uni.pack
          if not WizardForm.ComponentsList.Checked[4] then begin
            intSoundPack := intSoundPack + intUniPack
          end;

           //sound.pack
          if not ShowChangeDiskWindow ('Please Insert Disk To Continue...', ExpandConstant('{src}'),'sound.pack') then break;
          if not ISArcExtract( 0, intSoundPack, ExpandConstant('{src}\sound.pack'), ExpandConstant('{app}\dat'), '', false, '144320472947294', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}'), False) then break;
          //text.pack
          if not ShowChangeDiskWindow ('Please Insert Disk To Continue...', ExpandConstant('{src}'),'text.pack') then break;
          if not ISArcExtract( 0, intTextPack, ExpandConstant('{src}\text.pack'), ExpandConstant('{app}\dat'), '', false, '144320472947294', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}'), False) then break;
          //switcher.pack
          if not ShowChangeDiskWindow ('Please Insert Disk To Continue...', ExpandConstant('{src}'),'switcher.pack') then break;
          if not ISArcExtract( 0, intSwitcherPack, ExpandConstant('{src}\switcher.pack'), ExpandConstant('{app}'), '', false, '144320472947294', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}'), False) then break;

          //;balls.pack
          if WizardForm.ComponentsList.Checked[0] then begin
            if not ShowChangeDiskWindow ('Please Insert Disk To Continue...', ExpandConstant('{src}'),'balls.pack') then break;
            if not ISArcExtract( 0, intBallsPack, ExpandConstant('{src}\balls.pack'), ExpandConstant('{app}\kitserver\GDB\balls'), '', false, '144320472947294', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}'), False) then break;        
          end;
          //boots.pack
          if WizardForm.ComponentsList.Checked[1] then begin
            if not ShowChangeDiskWindow ('Please Insert Disk To Continue...', ExpandConstant('{src}'),'boots.pack') then break;
            if not ISArcExtract( 0, intBootsPack, ExpandConstant('{src}\boots.pack'), ExpandConstant('{app}\kitserver\GDB\boots'), '', false, '144320472947294', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}'), False) then break;        
          end;
          //; faces.pack
          if WizardForm.ComponentsList.Checked[2] then begin
            if not ShowChangeDiskWindow ('Please Insert Disk To Continue...', ExpandConstant('{src}'),'faces.pack') then break;
            if not ISArcExtract( 0, intFacesPack, ExpandConstant('{src}\faces.pack'), ExpandConstant('{app}\kitserver\GDB\faces'), '', false, '144320472947294', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}'), False) then break;        
          end;
          //hair.pack
          if WizardForm.ComponentsList.Checked[3] then begin
            if not ShowChangeDiskWindow ('Please Insert Disk To Continue...', ExpandConstant('{src}'),'hair.pack') then break;
            if not ISArcExtract( 0, intHairPack, ExpandConstant('{src}\hair.pack'), ExpandConstant('{app}\kitserver\GDB\hair'), '', false, '144320472947294', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}'), False) then break;        
          end;
          //stadiums.pack
          //if WizardForm.ComponentsList.Checked[4] then begin
          //  if not ShowChangeDiskWindow ('Please Insert Disk To Continue...', ExpandConstant('{src}'),'stadiums.pack') then break;
          //  if not ISArcExtract( 0, intStadiumsPack, ExpandConstant('{src}\stadiums.pack'), ExpandConstant('{app}\kitserver\GDB\stadiums'), '', false, '144320472947294', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}'), False) then break;        
          //end;
          //uni.pack
          if WizardForm.ComponentsList.Checked[4] then begin
            if not ShowChangeDiskWindow ('Please Insert Disk To Continue...', ExpandConstant('{src}'),'uni_classic.pack') then break;
            if not ISArcExtract( 0, intUniPack/3, ExpandConstant('{src}\uni_classic.pack'), ExpandConstant('{app}\kitserver\GDB\uni'), '', false, '144320472947294', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}'), False) then break;
            
            if not ShowChangeDiskWindow ('Please Insert Disk To Continue...', ExpandConstant('{src}'),'uni_club.pack') then break;
            if not ISArcExtract( 0, intUniPack/3, ExpandConstant('{src}\uni_club.pack'), ExpandConstant('{app}\kitserver\GDB\uni'), '', false, '144320472947294', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}'), False) then break;
            
            if not ShowChangeDiskWindow ('Please Insert Disk To Continue...', ExpandConstant('{src}'),'uni_nt.pack') then break;
            if not ISArcExtract( 0, intUniPack/3, ExpandConstant('{src}\uni_nt.pack'), ExpandConstant('{app}\kitserver\GDB\uni'), '', false, '144320472947294', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}'), False) then break;
          end;
        end;

        

        //sound_main.pack
        //if not ShowChangeDiskWindow ('Please Insert Disk To Continue...', ExpandConstant('{src}'),'sound_main.pack') then break;
        //if not ISArcExtract( 0, intSoundPack, ExpandConstant('{src}\sound_main.pack'), ExpandConstant('{app}\dat'), '', false, '144320472947294', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}'), False) then break;
        //switcher.pack
        //if not ShowChangeDiskWindow ('Please Insert Disk To Continue...', ExpandConstant('{src}'),'switcher.pack') then break;
        //if not ISArcExtract( 0, intSwitcherPack, ExpandConstant('{src}\switcher.pack'), ExpandConstant('{app}'), '', false, '144320472947294', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}'), False) then break;

        //sound_club.pack
        //if WizardForm.ComponentsList.Checked[3] then begin
        //  if not ShowChangeDiskWindow ('Please Insert Disk To Continue...', ExpandConstant('{src}'),'sound_club.pack') then break;
        //  if not ISArcExtract( 0, intSoundPack, ExpandConstant('{src}\sound_club.pack'), ExpandConstant('{app}\dat'), '', false, '144320472947294', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}'), False) then break;
        //end;
        //sound_nt-cl.pack
        //if WizardForm.ComponentsList.Checked[2] or WizardForm.ComponentsList.Checked[4] then begin
        //  if not ShowChangeDiskWindow ('Please Insert Disk To Continue...', ExpandConstant('{src}'),'sound_nt-cl.pack') then break;
        //  if not ISArcExtract( 0, intSoundPack, ExpandConstant('{src}\sound_nt-cl.pack'), ExpandConstant('{app}\dat'), '', false, '144320472947294', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}'), False) then break;
        //end;

        //text_hd.pack
        //if WizardForm.ComponentsList.Checked[6] then begin
        //  if not ShowChangeDiskWindow ('Please Insert Disk To Continue...', ExpandConstant('{src}'),'text_hd.pack') then break;
        //  if not ISArcExtract( 0, intTextPack, ExpandConstant('{src}\text_hd.pack'), ExpandConstant('{app}\dat'), '', false, '144320472947294', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}'), False) then break;
        //end;
        //text_sd.pack
        //if WizardForm.ComponentsList.Checked[7] then begin
        //  if not ShowChangeDiskWindow ('Please Insert Disk To Continue...', ExpandConstant('{src}'),'text_sd.pack') then break;
        //  if not ISArcExtract( 0, intTextPack, ExpandConstant('{src}\text_sd.pack'), ExpandConstant('{app}\dat'), '', false, '144320472947294', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}'), False) then break;
        //end;
       
        //balls.pack
        //if WizardForm.ComponentsList.Checked[9] then begin
        //  if not ShowChangeDiskWindow ('Please Insert Disk To Continue...', ExpandConstant('{src}'),'balls.pack') then break;
        //  if not ISArcExtract( 0, intBallsPack, ExpandConstant('{src}\balls.pack'), ExpandConstant('{app}\kitserver\GDB\balls'), '', false, '144320472947294', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}'), False) then break;        
        //end;
        //boots.pack
        //if WizardForm.ComponentsList.Checked[10] then begin
        //  if not ShowChangeDiskWindow ('Please Insert Disk To Continue...', ExpandConstant('{src}'),'boots.pack') then break;
        //  if not ISArcExtract( 0, intBootsPack, ExpandConstant('{src}\boots.pack'), ExpandConstant('{app}\kitserver\GDB\boots'), '', false, '144320472947294', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}'), False) then break;        
        //end;
        //faces.pack
        //if WizardForm.ComponentsList.Checked[11] then begin
        //  if not ShowChangeDiskWindow ('Please Insert Disk To Continue...', ExpandConstant('{src}'),'faces.pack') then break;
        //  if not ISArcExtract( 0, intFacesPack, ExpandConstant('{src}\faces.pack'), ExpandConstant('{app}\kitserver\GDB\faces'), '', false, '144320472947294', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}'), False) then break;        
        //end;
        //hair.pack
        //if WizardForm.ComponentsList.Checked[12] then begin
        //  if not ShowChangeDiskWindow ('Please Insert Disk To Continue...', ExpandConstant('{src}'),'hair.pack') then break;
        //  if not ISArcExtract( 0, intHairPack, ExpandConstant('{src}\hair.pack'), ExpandConstant('{app}\kitserver\GDB\hair'), '', false, '144320472947294', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}'), False) then break;        
        //end;
        //stadiums.pack
        //if WizardForm.ComponentsList.Checked[13] then begin
        //  if not ShowChangeDiskWindow ('Please Insert Disk To Continue...', ExpandConstant('{src}'),'stadiums.pack') then break;
        //  if not ISArcExtract( 0, intStadiumsPack, ExpandConstant('{src}\stadiums.pack'), ExpandConstant('{app}\kitserver\GDB\stadiums'), '', false, '144320472947294', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}'), False) then break;        
        //end;
        //uni.pack
        //if WizardForm.ComponentsList.Checked[13] then begin
        //  if not ShowChangeDiskWindow ('Please Insert Disk To Continue...', ExpandConstant('{src}'),'uni_classic.pack') then break;
        //  if not ISArcExtract( 0, intUniPack/3, ExpandConstant('{src}\uni_classic.pack'), ExpandConstant('{app}\kitserver\GDB\uni'), '', false, '144320472947294', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}'), False) then break;
        //  
        //  if not ShowChangeDiskWindow ('Please Insert Disk To Continue...', ExpandConstant('{src}'),'uni_club.pack') then break;
        //  if not ISArcExtract( 0, intUniPack/3, ExpandConstant('{src}\uni_club.pack'), ExpandConstant('{app}\kitserver\GDB\uni'), '', false, '144320472947294', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}'), False) then break;
        //  
        //  if not ShowChangeDiskWindow ('Please Insert Disk To Continue...', ExpandConstant('{src}'),'uni_nt.pack') then break;
        //  if not ISArcExtract( 0, intUniPack/3, ExpandConstant('{src}\uni_nt.pack'), ExpandConstant('{app}\kitserver\GDB\uni'), '', false, '144320472947294', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}'), False) then break;
        //end;
        
        ISDoneError := False;
      until true;
      EnableWindow(WizardForm.Handle, True);
      ISDoneStop;
    end;    
    HideControls;
    WizardForm.CancelButton.Visible := True;
    WizardForm.CancelButton.Enabled := False;

    if not ISDoneError then begin
      ExtractTemporaryFile('dxwebsetup.exe');
      ExtractTemporaryFile('vcredist_2005_x86.exe');
      ExtractTemporaryFile('dotNetFx40_Full_setup.exe');
    end;
  end;

  if (CurStep=ssPostInstall) and ISDoneError then begin
    Exec2(ExpandConstant('{uninstallexe}'), '/VERYSILENT', False);
  end;
end;


procedure InitializeWizard();
begin
  LabelInfoName             := TLabel.Create(WizardForm);
  LabelInfoName.Parent      := WizardForm.WelcomePage;
  LabelInfoName.Caption     := 'Name:'
  LabelInfoName.Top         := 120;
  LabelInfoName.Left        := 200;
  LabelInfoName.Autosize    := True;
  LabelInfoName.Font.Name   := 'Segoe UI';
  LabelInfoName.Font.Size   := 10;
  LabelInfoName.Font.Style  := [fsBold];
  LabelInfoName.Font.Color  := $000000;

  LabelInfoType             := TLabel.Create(WizardForm);
  LabelInfoType.Parent      := WizardForm.WelcomePage;
  LabelInfoType.Caption     := 'Type:'
  LabelInfoType.Top         := 140;
  LabelInfoType.Left        := 200;
  LabelInfoType.Autosize    := True;
  LabelInfoType.Font.Name   := 'Segoe UI';
  LabelInfoType.Font.Size   := 10;
  LabelInfoType.Font.Style  := [fsBold];
  LabelInfoType.Font.Color  := $000000;

  LabelInfoSeason             := TLabel.Create(WizardForm);
  LabelInfoSeason.Parent      := WizardForm.WelcomePage;
  LabelInfoSeason.Caption     := 'Season:'
  LabelInfoSeason.Top         := 160;
  LabelInfoSeason.Left        := 200;
  LabelInfoSeason.Autosize    := True;
  LabelInfoSeason.Font.Name   := 'Segoe UI';
  LabelInfoSeason.Font.Size   := 10;
  LabelInfoSeason.Font.Style  := [fsBold];
  LabelInfoSeason.Font.Color  := $000000;

  LabelInfoLanguage             := TLabel.Create(WizardForm);
  LabelInfoLanguage.Parent      := WizardForm.WelcomePage;
  LabelInfoLanguage.Caption     := 'Language:'
  LabelInfoLanguage.Top         := 180;
  LabelInfoLanguage.Left        := 200;
  LabelInfoLanguage.Autosize    := True;
  LabelInfoLanguage.Font.Name   := 'Segoe UI';
  LabelInfoLanguage.Font.Size   := 10;
  LabelInfoLanguage.Font.Style  := [fsBold];
  LabelInfoLanguage.Font.Color  := $000000;

  LabelInfoDeveloper             := TLabel.Create(WizardForm);
  LabelInfoDeveloper.Parent      := WizardForm.WelcomePage;
  LabelInfoDeveloper.Caption     := 'Developer:'
  LabelInfoDeveloper.Top         := 200;
  LabelInfoDeveloper.Left        := 200;
  LabelInfoDeveloper.Autosize    := True;
  LabelInfoDeveloper.Font.Name   := 'Segoe UI';
  LabelInfoDeveloper.Font.Size   := 10;
  LabelInfoDeveloper.Font.Style  := [fsBold];
  LabelInfoDeveloper.Font.Color  := $000000;

  LabelInfoDescription             := TLabel.Create(WizardForm);
  LabelInfoDescription.Parent      := WizardForm.WelcomePage;
  LabelInfoDescription.Caption     := 'Description:'
  LabelInfoDescription.Top         := 220;
  LabelInfoDescription.Left        := 200;
  LabelInfoDescription.Autosize    := True;
  LabelInfoDescription.Font.Name   := 'Segoe UI';
  LabelInfoDescription.Font.Size   := 10;
  LabelInfoDescription.Font.Style  := [fsBold];
  LabelInfoDescription.Font.Color  := $000000;

  LabelInfoNameSub             := TLabel.Create(WizardForm);
  LabelInfoNameSub.Parent      := WizardForm.WelcomePage;
  LabelInfoNameSub.Caption     := ExpandConstant('{cm:PatchName}');
  LabelInfoNameSub.Top         := 120;
  LabelInfoNameSub.Left        := 300;
  LabelInfoNameSub.Autosize    := True;
  LabelInfoNameSub.Font.Name   := 'Segoe UI';
  LabelInfoNameSub.Font.Size   := 10;
  //LabelInfoNameSub.Font.Style  := [fsBold];
  //LabelInfoNameSub.Font.Color  := $C0C0C0;

  LabelInfoTypeSub             := TLabel.Create(WizardForm);
  LabelInfoTypeSub.Parent      := WizardForm.WelcomePage;
  LabelInfoTypeSub.Caption     := ExpandConstant('{cm:PatchType}');
  LabelInfoTypeSub.Top         := 140;
  LabelInfoTypeSub.Left        := 300;
  LabelInfoTypeSub.Autosize    := True;
  LabelInfoTypeSub.Font.Name   := 'Segoe UI';
  LabelInfoTypeSub.Font.Size   := 10;
  //LabelInfoTypeSub.Font.Style  := [fsBold];
  //LabelInfoTypeSub.Font.Color  := $C0C0C0;

  LabelInfoSeasonSub             := TLabel.Create(WizardForm);
  LabelInfoSeasonSub.Parent      := WizardForm.WelcomePage;
  LabelInfoSeasonSub.Caption     := ExpandConstant('{cm:PatchSeason}');
  LabelInfoSeasonSub.Top         := 160;
  LabelInfoSeasonSub.Left        := 300;
  LabelInfoSeasonSub.Autosize    := True;
  LabelInfoSeasonSub.Font.Name   := 'Segoe UI';
  LabelInfoSeasonSub.Font.Size   := 10;
  //LabelInfoSeasonSub.Font.Style  := [fsBold];
  //LabelInfoSeasonSub.Font.Color  := $C0C0C0;

  LabelInfoLanguageSub             := TLabel.Create(WizardForm);
  LabelInfoLanguageSub.Parent      := WizardForm.WelcomePage;
  LabelInfoLanguageSub.Caption     := ExpandConstant('{cm:PatchLanguage}');
  LabelInfoLanguageSub.Top         := 180;
  LabelInfoLanguageSub.Left        := 300;
  LabelInfoLanguageSub.Autosize    := True;
  LabelInfoLanguageSub.Font.Name   := 'Segoe UI';
  LabelInfoLanguageSub.Font.Size   := 10;
  //LabelInfoLanguageSub.Font.Style  := [fsBold];
  //LabelInfoLanguageSub.Font.Color  := $C0C0C0;

  LabelInfoDeveloperSub             := TLabel.Create(WizardForm);
  LabelInfoDeveloperSub.Parent      := WizardForm.WelcomePage;
  LabelInfoDeveloperSub.Caption     := ExpandConstant('{cm:PatchDeveloper}');
  LabelInfoDeveloperSub.Top         := 200;
  LabelInfoDeveloperSub.Left        := 300;
  LabelInfoDeveloperSub.Autosize    := True;
  LabelInfoDeveloperSub.Font.Name   := 'Segoe UI';
  LabelInfoDeveloperSub.Font.Size   := 10;
  //LabelInfoDeveloperSub.Font.Style  := [fsBold];
  //LabelInfoDeveloperSub.Font.Color  := $C0C0C0;

  LabelInfoDescriptionSub             := TLabel.Create(WizardForm);
  LabelInfoDescriptionSub.Parent      := WizardForm.WelcomePage;
  LabelInfoDescriptionSub.Caption     := ExpandConstant('{cm:PatchDescription}');
  LabelInfoDescriptionSub.Top         := 220;
  LabelInfoDescriptionSub.Left        := 300;
  LabelInfoDescriptionSub.Autosize    := True;
  LabelInfoDescriptionSub.Font.Name   := 'Segoe UI';
  LabelInfoDescriptionSub.Font.Size   := 10;
  //LabelInfoDescriptionSub.Font.Style  := [fsBold];
  //LabelInfoDescriptionSub.Font.Color  := $C0C0C0;

  
  WizardForm.WizardBitmapImage.Width:=180;
  WizardForm.WizardBitmapImage2.Width := 180;

  WizardForm.WizardSmallBitmapImage.Left:=300;
  WizardForm.WizardSmallBitmapImage.Top:=0;
  WizardForm.WizardSmallBitmapImage.Width:=200;
  WizardForm.WizardSmallBitmapImage.Height:=58;

  WizardForm.WelcomeLabel1.Hide;
  WizardForm.WelcomeLabel2.Hide;
  
  WizardForm.FinishedLabel.Hide;
  WizardForm.FinishedHeadingLabel.Hide;

  WizardForm.PageNameLabel.Width:=180;
  WizardForm.PageDescriptionLabel.Width:=200;

  WizardForm.ProgressGauge.Hide;
  CreateControls;
  MyCancelButton.Hide;
end;


function InitializeSetup(): Boolean; 
var
  V: Integer;
  iResultCode: Integer;
  sUnInstallString: string;

begin
  Result := True;
  ExtractTemporaryFile('logo.bmp');
  ExtractTemporaryFile('isskin.dll');
	ExtractTemporaryFile('skin.cjstyles');
  LoadSkin(ExpandConstant('{tmp}\skin.cjstyles'), '');
  
  //sound.pack
  if not FileExists('sound.pack') then 
  begin
    MsgBox('Setup is not complete, missing "sound.pack" arhive!' #13#10 'The installation can not be resumed.', mbError, MB_OK);
    Result := False;
    exit;
  end;
  //text.pack
  if not FileExists('text.pack') then
  begin
    MsgBox('Setup is not complete, missing "text.pack" archive!' #13#10 'The installation can not be resumed.', mbError, MB_OK);
    Result := False;
    Exit;
  end;
  //switcher.pack
  if not FileExists('switcher.pack') then
  begin
    MsgBox('Setup is not complete, missing "switcher.pack" archive!' #13#10 'The installation can not be resumed.', mbError, MB_OK);
    Result := False;
    Exit;
  end;
  
  if RegValueExists(HKEY_LOCAL_MACHINE,'Software\Microsoft\Windows\CurrentVersion\Uninstall\{3CC58197-47F6-44A5-BDF1-11AF6A00F411}}_is1', 'UninstallString') then begin
    MsgBox(ExpandConstant('Shollym Multi-Patch 2016 is already installed on your computer' #13#10 'Do you want to delete it before the new installation?'), mbInformation, MB_YESNO)
  end;  
end;

procedure DeinitializeSetup(); 
begin
  UnloadSkin();
end;
