@echo off
echo Windows輕量化工具
echo Hung-i, Hsu 版權所有
echo 請確認C:\中install.wim及Lite資料夾是否存在，如不存在請建立
echo ------------------------------------------------------------
Dism /Get-ImageInfo /ImageFile:C:\install.wim
set /p var=請輸入您欲掛載的索引編號:
Dism /Mount-Image /ImageFile:C:\install.wim /index:%var% /MountDir:C:\Lite
Dism /Get-MountedImageInfo
echo 請確認掛載映像是否正確
Pause

Dism /Image:C:\Lite /Get-Features
echo ------------------------------------------------------------
echo 解除安裝Features
Dism /Image:C:\Lite /Disable-Feature /FeatureName:Printing-PrintToPDFServices-Features /Remove
Dism /Image:C:\Lite /Disable-Feature /FeatureName:Printing-XPSServices-Features /Remove
Dism /Image:C:\Lite /Disable-Feature /FeatureName:WCF-Services45 /Remove
Dism /Image:C:\Lite /Disable-Feature /FeatureName:WCF-TCP-PortSharing45 /Remove
Dism /Image:C:\Lite /Disable-Feature /FeatureName:WindowsMediaPlayer /Remove
Dism /Image:C:\Lite /Disable-Feature /FeatureName:SmbDirect /Remove
Dism /Image:C:\Lite /Disable-Feature /FeatureName:Windows-Defender-Default-Definitions /Remove
Dism /Image:C:\Lite /Disable-Feature /FeatureName:SearchEngine-Client-Package /Remove
Dism /Image:C:\Lite /Disable-Feature /FeatureName:MediaPlayback /Remove
Dism /Image:C:\Lite /Disable-Feature /FeatureName:MSRDC-Infrastructure /Remove
Dism /Image:C:\Lite /Disable-Feature /FeatureName:Printing-Foundation-Features /Remove
Dism /Image:C:\Lite /Disable-Feature /FeatureName:Printing-Foundation-InternetPrinting-Client /Remove
Dism /Image:C:\Lite /Disable-Feature /FeatureName:MicrosoftWindowsPowerShellV2Root /Remove
Dism /Image:C:\Lite /Disable-Feature /FeatureName:MicrosoftWindowsPowerShellV2 /Remove
Dism /Image:C:\Lite /Disable-Feature /FeatureName:NetFx4-AdvSrvs /Remove
Dism /Image:C:\Lite /Disable-Feature /FeatureName:SMB1Protocol /Remove
Dism /Image:C:\Lite /Disable-Feature /FeatureName:SMB1Protocol-Client /Remove
Dism /Image:C:\Lite /Disable-Feature /FeatureName:SMB1Protocol-Deprecation /Remove

Dism /Image:C:\Lite /Get-ProvisionedAppxPackages
echo ------------------------------------------------------------
echo 解除安裝Appx
Dism /Image:C:\Lite /Remove-ProvisionedAppxPackage /PackageName:Microsoft.549981C3F5F10_1.1911.21713.0_neutral_~_8wekyb3d8bbwe
Dism /Image:C:\Lite /Remove-ProvisionedAppxPackage /PackageName:Microsoft.BingWeather_4.25.20211.0_neutral_~_8wekyb3d8bbwe
Dism /Image:C:\Lite /Remove-ProvisionedAppxPackage /PackageName:Microsoft.DesktopAppInstaller_2019.125.2243.0_neutral_~_8wekyb3d8bbwe
Dism /Image:C:\Lite /Remove-ProvisionedAppxPackage /PackageName:Microsoft.GetHelp_10.1706.13331.0_neutral_~_8wekyb3d8bbwe
Dism /Image:C:\Lite /Remove-ProvisionedAppxPackage /PackageName:Microsoft.Getstarted_8.2.22942.0_neutral_~_8wekyb3d8bbwe
Dism /Image:C:\Lite /Remove-ProvisionedAppxPackage /PackageName:Microsoft.HEIFImageExtension_1.0.22742.0_x64__8wekyb3d8bbwe
Dism /Image:C:\Lite /Remove-ProvisionedAppxPackage /PackageName:Microsoft.Microsoft3DViewer_6.1908.2042.0_neutral_~_8wekyb3d8bbwe
Dism /Image:C:\Lite /Remove-ProvisionedAppxPackage /PackageName:Microsoft.MicrosoftOfficeHub_18.1903.1152.0_neutral_~_8wekyb3d8bbwe
Dism /Image:C:\Lite /Remove-ProvisionedAppxPackage /PackageName:Microsoft.MicrosoftSolitaireCollection_4.4.8204.0_neutral_~_8wekyb3d8bbwe
Dism /Image:C:\Lite /Remove-ProvisionedAppxPackage /PackageName:Microsoft.MicrosoftStickyNotes_3.6.73.0_neutral_~_8wekyb3d8bbwe
Dism /Image:C:\Lite /Remove-ProvisionedAppxPackage /PackageName:Microsoft.MixedReality.Portal_2000.19081.1301.0_neutral_~_8wekyb3d8bbwe
Dism /Image:C:\Lite /Remove-ProvisionedAppxPackage /PackageName:Microsoft.MSPaint_2019.729.2301.0_neutral_~_8wekyb3d8bbwe
Dism /Image:C:\Lite /Remove-ProvisionedAppxPackage /PackageName:Microsoft.Office.OneNote_16001.12026.20112.0_neutral_~_8wekyb3d8bbwe
Dism /Image:C:\Lite /Remove-ProvisionedAppxPackage /PackageName:Microsoft.People_2019.305.632.0_neutral_~_8wekyb3d8bbwe
Dism /Image:C:\Lite /Remove-ProvisionedAppxPackage /PackageName:Microsoft.ScreenSketch_2019.904.1644.0_neutral_~_8wekyb3d8bbwe
Dism /Image:C:\Lite /Remove-ProvisionedAppxPackage /PackageName:Microsoft.SkypeApp_14.53.77.0_neutral_~_kzf8qxf38zg5c
Dism /Image:C:\Lite /Remove-ProvisionedAppxPackage /PackageName:Microsoft.StorePurchaseApp_11811.1001.1813.0_neutral_~_8wekyb3d8bbwe
Dism /Image:C:\Lite /Remove-ProvisionedAppxPackage /PackageName:Microsoft.VCLibs.140.00_14.0.27323.0_x64__8wekyb3d8bbwe
Dism /Image:C:\Lite /Remove-ProvisionedAppxPackage /PackageName:Microsoft.VP9VideoExtensions_1.0.22681.0_x64__8wekyb3d8bbwe
Dism /Image:C:\Lite /Remove-ProvisionedAppxPackage /PackageName:Microsoft.Wallet_2.4.18324.0_neutral_~_8wekyb3d8bbwe
Dism /Image:C:\Lite /Remove-ProvisionedAppxPackage /PackageName:Microsoft.WebMediaExtensions_1.0.20875.0_neutral_~_8wekyb3d8bbwe
Dism /Image:C:\Lite /Remove-ProvisionedAppxPackage /PackageName:Microsoft.WebpImageExtension_1.0.22753.0_x64__8wekyb3d8bbwe
Dism /Image:C:\Lite /Remove-ProvisionedAppxPackage /PackageName:Microsoft.Windows.Photos_2019.19071.12548.0_neutral_~_8wekyb3d8bbwe
Dism /Image:C:\Lite /Remove-ProvisionedAppxPackage /PackageName:Microsoft.WindowsAlarms_2019.807.41.0_neutral_~_8wekyb3d8bbwe
Dism /Image:C:\Lite /Remove-ProvisionedAppxPackage /PackageName:Microsoft.WindowsCalculator_2020.1906.55.0_neutral_~_8wekyb3d8bbwe
Dism /Image:C:\Lite /Remove-ProvisionedAppxPackage /PackageName:Microsoft.WindowsCamera_2018.826.98.0_neutral_~_8wekyb3d8bbwe
Dism /Image:C:\Lite /Remove-ProvisionedAppxPackage /PackageName:microsoft.windowscommunicationsapps_16005.11629.20316.0_neutral_~_8wekyb3d8bbwe
Dism /Image:C:\Lite /Remove-ProvisionedAppxPackage /PackageName:Microsoft.WindowsFeedbackHub_2019.1111.2029.0_neutral_~_8wekyb3d8bbwe
Dism /Image:C:\Lite /Remove-ProvisionedAppxPackage /PackageName:Microsoft.WindowsMaps_2019.716.2316.0_neutral_~_8wekyb3d8bbwe
Dism /Image:C:\Lite /Remove-ProvisionedAppxPackage /PackageName:Microsoft.WindowsSoundRecorder_2019.716.2313.0_neutral_~_8wekyb3d8bbwe
Dism /Image:C:\Lite /Remove-ProvisionedAppxPackage /PackageName:Microsoft.WindowsStore_11910.1002.513.0_neutral_~_8wekyb3d8bbwe
Dism /Image:C:\Lite /Remove-ProvisionedAppxPackage /PackageName:Microsoft.Xbox.TCUI_1.23.28002.0_neutral_~_8wekyb3d8bbwe
Dism /Image:C:\Lite /Remove-ProvisionedAppxPackage /PackageName:Microsoft.XboxApp_48.49.31001.0_neutral_~_8wekyb3d8bbwe
Dism /Image:C:\Lite /Remove-ProvisionedAppxPackage /PackageName:Microsoft.XboxGameOverlay_1.46.11001.0_neutral_~_8wekyb3d8bbwe
Dism /Image:C:\Lite /Remove-ProvisionedAppxPackage /PackageName:Microsoft.XboxGamingOverlay_2.34.28001.0_neutral_~_8wekyb3d8bbwe
Dism /Image:C:\Lite /Remove-ProvisionedAppxPackage /PackageName:Microsoft.XboxIdentityProvider_12.50.6001.0_neutral_~_8wekyb3d8bbwe
Dism /Image:C:\Lite /Remove-ProvisionedAppxPackage /PackageName:Microsoft.XboxSpeechToTextOverlay_1.17.29001.0_neutral_~_8wekyb3d8bbwe
Dism /Image:C:\Lite /Remove-ProvisionedAppxPackage /PackageName:Microsoft.YourPhone_2019.430.2026.0_neutral_~_8wekyb3d8bbwe
Dism /Image:C:\Lite /Remove-ProvisionedAppxPackage /PackageName:Microsoft.ZuneMusic_2019.19071.19011.0_neutral_~_8wekyb3d8bbwe
Dism /Image:C:\Lite /Remove-ProvisionedAppxPackage /PackageName:Microsoft.ZuneVideo_2019.19071.19011.0_neutral_~_8wekyb3d8bbwe

Dism /Image:C:\Lite /Get-Packages
echo ------------------------------------------------------------
echo 解除安裝Packages
Dism /Image:C:\Lite  /Remove-Package /PackageName:Microsoft-Windows-MediaPlayer-Package~31bf3856ad364e35~amd64~~10.0.19041.1266
Dism /Image:C:\Lite  /Remove-Package /PackageName:Microsoft-Windows-LanguageFeatures-Handwriting-zh-tw-Package~31bf3856ad364e35~amd64~~10.0.19041.746
Dism /Image:C:\Lite  /Remove-Package /PackageName:Microsoft-Windows-LanguageFeatures-Speech-zh-hk-Package~31bf3856ad364e35~amd64~~10.0.19041.1
Dism /Image:C:\Lite  /Remove-Package /PackageName:Microsoft-Windows-LanguageFeatures-TextToSpeech-zh-hk-Package~31bf3856ad364e35~amd64~~10.0.19041.1
Dism /Image:C:\Lite  /Remove-Package /PackageName:Package_for_ServicingStack~31bf3856ad364e35~amd64~~19041.985.1.1

DISM /image:C:\Lite /Get-Capabilities
echo ------------------------------------------------------------
echo 解除安裝Capabilities
Dism /image:C:\Lite /Remove-Capability /CapabilityName:App.StepsRecorder~~~~0.0.1.0
Dism /image:C:\Lite /Remove-Capability /CapabilityName:App.Support.QuickAssist~~~~0.0.1.0
Dism /image:C:\Lite /Remove-Capability /CapabilityName:Browser.InternetExplorer~~~~0.0.11.0
Dism /image:C:\Lite /Remove-Capability /CapabilityName:DirectX.Configuration.Database~~~~0.0.1.0
Dism /image:C:\Lite /Remove-Capability /CapabilityName:Hello.Face.18967~~~~0.0.1.0
Dism /image:C:\Lite /Remove-Capability /CapabilityName:Hello.Face.Migration.18967~~~~0.0.1.0
Dism /image:C:\Lite /Remove-Capability /CapabilityName:Windows.Client.ShellComponents~~~~0.0.1.0
Dism /image:C:\Lite /Remove-Capability /CapabilityName:Language.Basic~~~zh-HK~0.0.1.0
Dism /image:C:\Lite /Remove-Capability /CapabilityName:Language.OCR~~~zh-TW~0.0.1.0
Dism /image:C:\Lite /Remove-Capability /CapabilityName:Language.Speech~~~zh-TW~0.0.1.0
Dism /image:C:\Lite /Remove-Capability /CapabilityName:Language.TextToSpeech~~~zh-TW~0.0.1.0
Dism /image:C:\Lite /Remove-Capability /CapabilityName:MathRecognizer~~~~0.0.1.0
Dism /image:C:\Lite /Remove-Capability /CapabilityName:Microsoft.Windows.MSPaint~~~~0.0.1.0
Dism /image:C:\Lite /Remove-Capability /CapabilityName:Microsoft.Windows.Notepad~~~~0.0.1.0
Dism /image:C:\Lite /Remove-Capability /CapabilityName:Microsoft.Windows.PowerShell.ISE~~~~0.0.1.0
Dism /image:C:\Lite /Remove-Capability /CapabilityName:Microsoft.Windows.WordPad~~~~0.0.1.0
Dism /image:C:\Lite /Remove-Capability /CapabilityName:OneCoreUAP.OneSync~~~~0.0.1.0
Dism /image:C:\Lite /Remove-Capability /CapabilityName:OpenSSH.Client~~~~0.0.1.0
Dism /image:C:\Lite /Remove-Capability /CapabilityName:Print.Fax.Scan~~~~0.0.1.0

echo ------------------------------------------------------------
echo 正在進行最後清理階段
Dism /Image:C:\Lite /Cleanup-Image /StartComponentCleanup /ResetBase
Dism /image:C:\Lite /optimize-image /Wimboot
Dism /Export-Image /SourceImageFile:C:\install.wim /SourceIndex:%var% /DestinationImageFile:C:\install_Lite.wim /Compress:max
echo ------------------------------------------------------------
echo DISM自動化精簡操作完成
Pause