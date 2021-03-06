; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "kleiner-brauhelfer"
#define MyAppVersion "1.4.3.2"
#define MyAppPublisher "Gremmelsoft"
#define MyAppURL "http://www.joerum.de/kleiner-brauhelfer"
#define MyAppExeName "brauhelfer.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{A68EC315-481F-42C8-8A61-25ACEF84C52A}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\kleiner_brauhelfer
DefaultGroupName={#MyAppName}
DisableProgramGroupPage=yes
OutputDir=C:\Users\user\Documents\kleiner-brauhelfer\setup_win32
OutputBaseFilename=kb_setup_qt_v1_4_3_2
SetupIconFile=C:\Users\user\Documents\kleiner-brauhelfer\setup_win32\win_7_qt5_3_0\logo.ico
Compression=lzma
SolidCompression=yes

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "german"; MessagesFile: "compiler:Languages\German.isl"
Name: "polish"; MessagesFile: "compiler:Languages\Polish.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked; OnlyBelowVersion: 0,6.1

[Files]
Source: "C:\Users\user\Documents\kleiner-brauhelfer\setup_win32\win_7_qt5_3_0\brauhelfer.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\user\Documents\kleiner-brauhelfer\setup_win32\win_7_qt5_3_0\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
;Name: "{commonprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}";IconFilename:"{app}\logo.ico"; WorkingDir: "{app}";
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}";IconFilename:"{app}\logo.ico";
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}";IconFilename:"{app}\logo.ico"; Tasks: desktopicon
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}";IconFilename:"{app}\logo.ico"; Tasks: quicklaunchicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

