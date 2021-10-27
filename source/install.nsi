!include "MUI2.nsh"

;--------------------------------

; The name of the installer
Name "Salesforce Sniper"

; The file to write
OutFile "install.exe"

; The default installation directory
InstallDir $PROGRAMFILES\SalesforceSniper

; Registry key to check for directory (so if you install again, it will 
; overwrite the old one automatically)
InstallDirRegKey HKLM "Software\SalesforceSniper" "Install_Dir"

; Request application privileges for Windows Vista
RequestExecutionLevel admin

;--------------------------------

!define MUI_HEADERIMAGE
;!define MUI_HEADERIMAGE_BITMAP "${NSISDIR}\Contrib\Graphics\Header\orange.bmp"
!define MUI_HEADERIMAGE_BITMAP "${NSISDIR}\Contrib\Graphics\Header\nsis.bmp"
!define MUI_ABORTWARNING

; Pages

!insertmacro MUI_PAGE_COMPONENTS
!insertmacro MUI_PAGE_DIRECTORY
!insertmacro MUI_PAGE_INSTFILES
!define MUI_FINISHPAGE_RUN_TEXT "Execute Sniper"
!define MUI_FINISHPAGE_RUN "$INSTDIR\SalesforceSniper.exe"
!insertmacro MUI_PAGE_FINISH

UninstPage uninstConfirm
UninstPage instfiles

!insertmacro MUI_LANGUAGE "English"

; The stuff to install
Section "Sniper (required)"

  SectionIn RO

  ; Set output path to the installation directory.
  SetOutPath $INSTDIR
  
  ; Put file there
  File "SalesforceSniper.exe"
  File "*.txt"
  File "ExecuteAnonymous.jar"
  
  
  ; Write the uninstall keys for Windows
  WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\SalesforceSniper" "DisplayName" "Salesforce Sniper"
  WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\SalesforceSniper" "UninstallString" '"$INSTDIR\uninstall.exe"'
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\SalesforceSniper" "NoModify" 1
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\SalesforceSniper" "NoRepair" 1
  WriteUninstaller "uninstall.exe"

  DetailPrint "SalesforceSniper has been installed"
  
SectionEnd

; Skrot na pulpicie
Section "Desktop"

  CreateShortCut "$DESKTOP\SalesforceSniper.lnk" "$INSTDIR\SalesforceSniper.exe" ""

SectionEnd

; Skrot szybkiego uruchamiania
Section "Quick launch"

  CreateShortCut "$QUICKLAUNCH\SalesforceSniper.lnk" "$INSTDIR\SalesforceSniper.exe" ""

SectionEnd

;--------------------------------

; Uninstaller

Function un.onInit
  MessageBox MB_YESNO "Uninstall SalesforceSniper?" IDYES NoAbort
    Abort ; causes uninstaller to quit.
  NoAbort:
FunctionEnd

Section "Uninstall"
  
  ; Remove registry keys
  DeleteRegKey HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\SalesforceSniper"
  DeleteRegKey HKLM SOFTWARE\SalesforceSniper
  
  ;DeleteRegKey HKCU "SOFTWARE\Software Factory\SalesforceSniper"

  ; Remove files and uninstaller
  Delete $INSTDIR\*
 
  ; Remove shortcuts, if any
  Delete "$SMPROGRAMS\SalesforceSniper\*.*"
  Delete "$DESKTOP\SalesforceSniper.lnk"
  Delete "$QUICKLAUNCH\SalesforceSniper.lnk"

  ; Remove directories used
  RMDir "$SMPROGRAMS\SalesforceSniper"
  RMDir "$INSTDIR"

SectionEnd
