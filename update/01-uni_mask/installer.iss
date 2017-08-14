;//--- Patch information ---\\
#define Name        "Shollym™ Patch Update"
#define Type        "PES6 Standalone Patch"
#define Year        "2016"
#define Link        "https://www.facebook.com/ShollymPatch"
#define Update      "up01-14.08.2017."
#define Season      "2015/2016"
#define SizeByte    "0"
#define Version     "1.0.0.0"
#define Developer   "Shollym™"
#define Language    "English"
#define Description "Update kitserver uni mask files"



[Setup]
AppId={{6B8E5D9E-2BC7-42BE-8E13-43F1B0EF0698}}
AppName={#Name} {#Update}
AppVerName={#Name} {#Season} {#Update}
AppPublisher={#Developer}
DefaultDirName={code:GetInstallDir}
OutputDir=output
OutputBaseFilename=update01
SolidCompression=yes
Compression=lzma2/ultra64
InternalCompressLevel=ultra64 
ExtraDiskSpaceRequired={#SizeByte}
AllowNoIcons=yes
SetupIconFile=..\..\icons\install.ico
WizardImageFile=..\..\images\WizardImage.bmp
WizardSmallImageFile=..\..\images\WizardSmallImage.bmp
VersionInfoCopyright={#Developer}
VersionInfoDescription={#Name} {#Year} Update {#Update}
VersionInfoVersion={#Version}
InfoBeforeFile=help\readme.txt
Uninstallable=no
DirExistsWarning=no
DisableProgramGroupPage=yes
DisableDirPage=yes



[Files]
Source: "..\..\include\ISSkin.dll"; DestDir: {tmp}; Flags: dontcopy
Source: "..\..\include\logo.bmp"; DestDir: {tmp}; Flags: dontcopy
Source: "..\..\include\skin.cjstyles"; DestDir: {tmp}; Flags: dontcopy
Source: "files\*"; DestDir: "{app}\kitserver\GDB\uni"; Flags: ignoreversion createallsubdirs recursesubdirs


[CustomMessages]
PatchName={#Name}
PatchType=Pro Evolution Soccer 6 Patch
PatchYear={#Year}
PatchSeason={#Season}
PatchUpdate={#Update}
PatchLanguage={#Language}
PatchDeveloper={#Developer}
PatchDescription={#Description}

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

[Languages]
Name: eng; MessagesFile: compiler:Default.isl

[Messages]
eng.SetupWindowTitle={#Name} {#Season} Update {#Update} 
eng.BeveledLabel= - © 2007/{#Year} Shollym™
;InfoBefore Page
eng.InfoBeforeLabel=Please read the following important information.
;Select Dir Page
eng.SelectDirDesc=Where will it be installed?
eng.SelectDirLabel3=Setup will install the listed directories.
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

[UninstallDelete]
Type: filesandordirs; Name: {app}

[Code]
//Types
type
  TCallback = function (OveralPct,CurrentPct: integer;CurrentFile,TimeStr1,TimeStr2,TimeStr3:PAnsiChar): longword;

//Variables
var 
    LabelWelcomeTitleName:    TLabel;
    LabelWelcomeTitleSeason:  TLabel;
    
    LabelFinishedTitle:     TLabel;
    LabelFinishedSubTitle:  TLabel;
    LabelFinishedText:      TLabel;
    LabelFinishedSubText:   TLabel;

    BitmapImageLogo:    TBitmapImage;
    
    
var   LabelInfoName:        TLabel;
      LabelInfoType:        TLabel;
      LabelInfoSeason:      TLabel;
      LabelInfoUpdate:      TLabel;
      LabelInfoLanguage:    TLabel;
      LabelInfoDeveloper:   TLabel;
      LabelInfoDescription: TLabel;

var   LabelInfoNameSub:         TLabel;
      LabelInfoTypeSub:         TLabel;
      LabelInfoSeasonSub:       TLabel;
      LabelInfoUpdateSub:       TLabel;
      LabelInfoLanguageSub:     TLabel;
      LabelInfoDeveloperSub:    TLabel;
      LabelInfoDescriptionSub:  TLabel;


function FindWindow(lpClassName, lpWindowName: PAnsiChar): HWND; external 'FindWindowA@user32.dll stdcall';
function EnableWindow(hWnd: HWND; bEnable: BOOL): BOOL; external 'EnableWindow@user32.dll stdcall';

procedure LoadSkin(lpszPath: PAnsiChar; lpszIniFileName: PAnsiChar); external 'LoadSkin@{tmp}\isskin.dll stdcall delayload';
procedure UnloadSkin; external 'UnloadSkin@{tmp}\isskin.dll stdcall delayload';


procedure Advertisement(Sender: TObject);
  var
    ErrCode: integer;
begin
    ShellExec('open', '{#Link}', '', '', SW_SHOW, ewNoWait, ErrCode);
end;


function GetInstallDir(def: string): string;
var
InstallDir : string;
begin
  Result :='C:\Games\Shollym Multi-Patch 2016';
  if IsWin64 then
    if RegQueryStringValue(HKEY_LOCAL_MACHINE, 'Software\Wow6432Node\KONAMIPES6\SMPR','installdir', InstallDir) then begin
      Result := InstallDir; // Successfully read the value.
      end
    Else
      if RegQueryStringValue(HKEY_LOCAL_MACHINE, 'Software\KONAMIPES6\SMPR','installdir', InstallDir) then begin
        Result := InstallDir;// Successfully read the value.
      end
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

procedure CreateControls;
begin  
  //Welcome Title Name
  LabelWelcomeTitleName             := TLabel.Create(WizardForm);
  LabelWelcomeTitleName.Parent      := WizardForm.WelcomePage;  
  LabelWelcomeTitleName.Left        := 200;
  LabelWelcomeTitleName.Top         := 10;
  LabelWelcomeTitleName.Caption     := '{#Name}';
  LabelWelcomeTitleName.Autosize    := True;
  LabelWelcomeTitleName.Font.Name   := 'Segoe UI';
  LabelWelcomeTitleName.Font.Size   := 16;
  LabelWelcomeTitleName.Font.Style  := [fsBold];
  LabelWelcomeTitleName.Font.Color  :=  clBlue;
  
  //Welcome Title Season
  LabelWelcomeTitleSeason            := TLabel.Create(WizardForm);
  LabelWelcomeTitleSeason.Parent     := WizardForm.WelcomePage;  
  LabelWelcomeTitleSeason.Left       := 200;
  LabelWelcomeTitleSeason.Top        := 50;
  LabelWelcomeTitleSeason.Caption    := 'Season {#Season}';
  LabelWelcomeTitleSeason.Autosize   := True;
  LabelWelcomeTitleSeason.Font.Name  := 'Segoe UI';
  LabelWelcomeTitleSeason.Font.Size  := 14;
  LabelWelcomeTitleSeason.Font.Style := [fsBold];
  LabelWelcomeTitleSeason.Font.Color := clGray;
  
  //Finished Title
  LabelFinishedTitle            := TLabel.Create(WizardForm);
  LabelFinishedTitle.Parent     := WizardForm.FinishedPage;  
  LabelFinishedTitle.Left       := LabelWelcomeTitleName.Left;
  LabelFinishedTitle.Top        := LabelWelcomeTitleName.Top;  
  LabelFinishedTitle.Caption    := 'COMPLETED';
  LabelFinishedTitle.AutoSize   := True;
  LabelFinishedTitle.Font.Name  := 'Segoe UI';
  LabelFinishedTitle.Font.Size  := 18;
  LabelFinishedTitle.Font.Style := [fsBold]
  LabelFinishedTitle.Font.Color := clBlue;
  
  //Finished Sub Title
  LabelFinishedSubTitle             := TLabel.Create(WizardForm);
  LabelFinishedSubTitle.Parent      := WizardForm.FinishedPage;
  LabelFinishedSubTitle.Left        := LabelWelcomeTitleSeason.Left;
  LabelFinishedSubTitle.Top         := LabelWelcomeTitleSeason.Top;
  LabelFinishedSubTitle.Caption     := ExpandConstant('{cm:PatchName} {cm:PatchYear}');
  LabelFinishedSubTitle.AutoSize    := True;
  LabelFinishedSubTitle.Font.Name   := 'Segoe UI';
  LabelFinishedSubTitle.Font.Size   := 14;
  LabelFinishedSubTitle.Font.Style  := [fsBold];
  LabelFinishedSubTitle.Font.Color  := clGray;
  
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
  BitmapImageLogo           := TBitmapImage.Create(WizardForm);
  BitmapImageLogo.Parent    := WizardForm.InstallingPage;
  BitmapImageLogo.Top       := WizardForm.ProgressGauge.Top + 80;
  BitmapImageLogo.Left      := WizardForm.ProgressGauge.Left;
  BitmapImageLogo.Cursor    := crHand;
  BitmapImageLogo.OnClick   := @Advertisement
  BitmapImageLogo.Autosize  := True;
  BitmapImageLogo.Bitmap.LoadFromFile(ExpandConstant('{tmp}\logo.bmp'));

end;

procedure CurPageChanged(CurPageID: Integer);
begin
  if (CurPageID = wpFinished) then begin
    //LabelFinishedTitle.Caption  := 'NOT COMPLETED';
    //LabelFinishedTitle.Font.Color := clRed;
    //LabelFinishedText.Caption   := ExpandConstant('{cm:FinishedErrorText}');
  end;
end;


procedure CurStepChanged(CurStep: TSetupStep);
begin
  if CurStep = ssInstall then begin 

  end;
  
  //Post Install
  if (CurStep=ssPostInstall)then begin
    //Exec2(ExpandConstant('{uninstallexe}'), '/VERYSILENT', False);
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

  LabelInfoUpdate             := TLabel.Create(WizardForm);
  LabelInfoUpdate.Parent      := WizardForm.WelcomePage;
  LabelInfoUpdate.Caption     := 'Update:'
  LabelInfoUpdate.Top         := 180;
  LabelInfoUpdate.Left        := 200;
  LabelInfoUpdate.Autosize    := True;
  LabelInfoUpdate.Font.Name   := 'Segoe UI';
  LabelInfoUpdate.Font.Size   := 10;
  LabelInfoUpdate.Font.Style  := [fsBold];
  LabelInfoUpdate.Font.Color  := $000000;

  LabelInfoLanguage             := TLabel.Create(WizardForm);
  LabelInfoLanguage.Parent      := WizardForm.WelcomePage;
  LabelInfoLanguage.Caption     := 'Language:'
  LabelInfoLanguage.Top         := 200;
  LabelInfoLanguage.Left        := 200;
  LabelInfoLanguage.Autosize    := True;
  LabelInfoLanguage.Font.Name   := 'Segoe UI';
  LabelInfoLanguage.Font.Size   := 10;
  LabelInfoLanguage.Font.Style  := [fsBold];
  LabelInfoLanguage.Font.Color  := $000000;

  LabelInfoDeveloper             := TLabel.Create(WizardForm);
  LabelInfoDeveloper.Parent      := WizardForm.WelcomePage;
  LabelInfoDeveloper.Caption     := 'Developer:'
  LabelInfoDeveloper.Top         := 220;
  LabelInfoDeveloper.Left        := 200;
  LabelInfoDeveloper.Autosize    := True;
  LabelInfoDeveloper.Font.Name   := 'Segoe UI';
  LabelInfoDeveloper.Font.Size   := 10;
  LabelInfoDeveloper.Font.Style  := [fsBold];
  LabelInfoDeveloper.Font.Color  := $000000;

  LabelInfoDescription             := TLabel.Create(WizardForm);
  LabelInfoDescription.Parent      := WizardForm.WelcomePage;
  LabelInfoDescription.Caption     := 'Description:'
  LabelInfoDescription.Top         := 240;
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

  LabelInfoUpdateSub             := TLabel.Create(WizardForm);
  LabelInfoUpdateSub.Parent      := WizardForm.WelcomePage;
  LabelInfoUpdateSub.Caption     := ExpandConstant('{cm:PatchUpdate}');
  LabelInfoUpdateSub.Top         := 180;
  LabelInfoUpdateSub.Left        := 300;
  LabelInfoUpdateSub.Autosize    := True;
  LabelInfoUpdateSub.Font.Name   := 'Segoe UI';
  LabelInfoUpdateSub.Font.Size   := 10;
  //LabelInfoUpdateSub.Font.Style  := [fsBold];
  //LabelInfoUpdateSub.Font.Color  := $C0C0C0;

  LabelInfoLanguageSub             := TLabel.Create(WizardForm);
  LabelInfoLanguageSub.Parent      := WizardForm.WelcomePage;
  LabelInfoLanguageSub.Caption     := ExpandConstant('{cm:PatchLanguage}');
  LabelInfoLanguageSub.Top         := 200;
  LabelInfoLanguageSub.Left        := 300;
  LabelInfoLanguageSub.Autosize    := True;
  LabelInfoLanguageSub.Font.Name   := 'Segoe UI';
  LabelInfoLanguageSub.Font.Size   := 10;
  //LabelInfoLanguageSub.Font.Style  := [fsBold];
  //LabelInfoLanguageSub.Font.Color  := $C0C0C0;

  LabelInfoDeveloperSub             := TLabel.Create(WizardForm);
  LabelInfoDeveloperSub.Parent      := WizardForm.WelcomePage;
  LabelInfoDeveloperSub.Caption     := ExpandConstant('{cm:PatchDeveloper}');
  LabelInfoDeveloperSub.Top         := 220;
  LabelInfoDeveloperSub.Left        := 300;
  LabelInfoDeveloperSub.Autosize    := True;
  LabelInfoDeveloperSub.Font.Name   := 'Segoe UI';
  LabelInfoDeveloperSub.Font.Size   := 10;
  //LabelInfoDeveloperSub.Font.Style  := [fsBold];
  //LabelInfoDeveloperSub.Font.Color  := $C0C0C0;

  LabelInfoDescriptionSub             := TLabel.Create(WizardForm);
  LabelInfoDescriptionSub.Parent      := WizardForm.WelcomePage;
  LabelInfoDescriptionSub.Caption     := ExpandConstant('{cm:PatchDescription}');
  LabelInfoDescriptionSub.Top         := 240;
  LabelInfoDescriptionSub.Left        := 300;
  LabelInfoDescriptionSub.Autosize    := True;
  LabelInfoDescriptionSub.Font.Name   := 'Segoe UI';
  LabelInfoDescriptionSub.Font.Size   := 10;
  //LabelInfoDescriptionSub.Font.Style  := [fsBold];
  //LabelInfoDescriptionSub.Font.Color  := $C0C0C0;

  
  WizardForm.WizardBitmapImage.Width:=180;
  WizardForm.WizardBitmapImage2.Width := 180;

  WizardForm.WizardSmallBitmapImage.Left:=290;
  WizardForm.WizardSmallBitmapImage.Top:=0;
  WizardForm.WizardSmallBitmapImage.Width:=200;
  WizardForm.WizardSmallBitmapImage.Height:=58;

  WizardForm.WelcomeLabel1.Hide;
  WizardForm.WelcomeLabel2.Hide;
  
  WizardForm.FinishedLabel.Hide;
  WizardForm.FinishedHeadingLabel.Hide;

  WizardForm.PageNameLabel.Width:=180;
  WizardForm.PageDescriptionLabel.Width:=200;

  CreateControls;
end;


function InitializeSetup(): Boolean; 
var
  ErrCode: integer;

begin
  Result := True;
  ExtractTemporaryFile('logo.bmp');
  ExtractTemporaryFile('isskin.dll');
	ExtractTemporaryFile('skin.cjstyles');
  LoadSkin(ExpandConstant('{tmp}\skin.cjstyles'), '');

  if IsWin64 then
    if not RegValueExists(HKEY_LOCAL_MACHINE,'Software\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\{3CC58197-47F6-44A5-BDF1-11AF6A00F411}}_is1', 'UninstallString') or not RegValueExists(HKEY_LOCAL_MACHINE,'Software\Wow6432Node\KONAMIPES6\SMPR', 'installdir') then begin
      MsgBox(ExpandConstant('You do not have currently installed Shollym Multi-Patch 2016!'  #13#10  'Please install Shollym Multi-Patch 2016 first and then try again.'), mbInformation, MB_OK)
      ShellExec('open', 'https://www.mediafire.com/folder/8f3w4kabk1w3f', '', '', SW_SHOW, ewNoWait, ErrCode);
      Result := False
      end
  else
    if not RegValueExists(HKEY_LOCAL_MACHINE,'Software\Microsoft\Windows\CurrentVersion\Uninstall\{3CC58197-47F6-44A5-BDF1-11AF6A00F411}}_is1', 'UninstallString') or not RegValueExists(HKEY_LOCAL_MACHINE,'Software\KONAMIPES6\SMPR', 'installdir') then begin
      MsgBox(ExpandConstant('You do not have currently installed Shollym Multi-Patch 2016!'  #13#10  'Please install Shollym Multi-Patch 2016 first and then try again.'), mbInformation, MB_OK)
      ShellExec('open', 'https://www.mediafire.com/folder/8f3w4kabk1w3f', '', '', SW_SHOW, ewNoWait, ErrCode);
      Result := False
      end;  
end;


procedure DeinitializeSetup(); 
begin
  UnloadSkin();
end;
