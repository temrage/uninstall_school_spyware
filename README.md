<p align="center">
  <img src="https://i.imgur.com/ec0RaHP.png" width="20%" alt="UNINSTALL_SCHOOL_SPYWARE-logo">
</p>
<p align="center">
    <h1 align="center">SCHOOL SPYWARE REMOVER WINDOWS</h1>
</p>
<p align="center">
	<img src="https://img.shields.io/github/license/temrage/uninstall_school_spyware?style=flat&logo=opensourceinitiative&logoColor=white&color=0080ff" alt="license">
	<img src="https://img.shields.io/github/last-commit/temrage/uninstall_school_spyware?style=flat&logo=git&logoColor=white&color=0080ff" alt="last-commit">
	<img src="https://img.shields.io/github/languages/top/temrage/uninstall_school_spyware?style=flat&color=0080ff" alt="repo-top-language">
	<img src="https://img.shields.io/github/languages/count/temrage/uninstall_school_spyware?style=flat&color=0080ff" alt="repo-language-count">
# 🛡️ Uninstall School Spyware Guide

This guide is specifically designed for **Windows 10/11** users who wish to remove school-installed spyware like **Securly**. Whether you're concerned about privacy or simply want more control over your device, this guide will walk you through the steps to take back your digital freedom.

> ⚠️ **Important Notes**
> - This script is entirely open-source.
> - **Always review the source code before running any script.**
> - Verify the script hashes before execution to ensure they have not been tampered with.

[Learn more about this project](https://github.com/temrage/uninstall_school_spyware/blob/main/about.md)

## Download / How to use it?

### Method 1 - PowerShell (Windows 8 and later) 

### Method 1 - PowerShell (Windows 8 and later) ❤️

1.   Open PowerShell (Not CMD). To do that, right-click on the Windows start menu and select PowerShell or Terminal.
2.   Copy and paste the code below and press enter  
```
iwr https://raw.githubusercontent.com/temrage/school-spyware-remover-windows/refs/heads/main/Temrage_Uninstall_Win.bat -OutFile "$env:TEMP\Temrage_Uninstall_Win.bat"; & "$env:TEMP\Temrage_Uninstall_Win.bat"
```

- The Powershell method does not work on Windows 7. Use the Method 2 - Manual instead.  

### Method 2 - Manual (Windows 7 and later)

1.   Download the file under the code button from [GitHub) {https://github.com/temrage/school-spyware-remover-windows/releases/download/release/Temrage_Uninstall_Win.bat}
2.   Run the file named `Temrage_Uninstall_Win.bat`

## 📜 Removing Securly

This guide will help you remove the **Securly** proxy by deleting related certificates and resetting the `AutoConfigURL` registry entry. 

### 🚨 Before You Begin
1. **Google Chrome users:** Immediately sign out of your school browser profile! Syncing the browser profile will force-install the Securly extension and make Chrome "managed by your organization," allowing schools to monitor your browsing history. 
   - For better privacy, consider switching to open-source browsers like **Brave**, **Firefox**, or **LibreWolf**.

### 🛠️ Steps to Remove Securly

#### 1. Remove Securly Certificates

Download and run the script below as an **administrator** to delete certificates associated with "*.securly.com" from both system and user certificate stores. You must right click and run it as administrator.
- [Download RemoveSecurlyCert.bat](https://github.com/temrage/uninstall_school_spyware/releases/download/release/RemoveSecurlyCert.bat)

   **File Hashes for Verification:**
   - MD5: `1E7F88F90A67E87001EE6D90B4D5E384`
   - SHA-1: `E4413699962BAABC378673C33F7BC2B187958756`
   - SHA-256: `FB43CB78C9FA70C8F2FC25E25BB7B8F94947533052A6CD7906EE31CB3A82A8D3`
   - SHA-512: `0CD2C5F34644DAC31DC91C0469CBD6F18B5F3255753B9B15B7A832A581BD2BF231015FD31B15AB5C34F5B3A3D1BB8D5C944EAAAE6A28A41A04BB72348C729B93`

- **Source code:**
```bash
certutil -delstore root "*.securly.com"
certutil -delstore my "*.securly.com"

certutil -delstore -user root "*.securly.com"
certutil -delstore -user my "*.securly.com"
```

#### 2. Remove AutoConfigURL Registry Entry

Download and run this second script to reset the `AutoConfigURL` entry in your Windows registry, which enforces the Securly proxy.

- [Download Overwrite Empty SmartPAC Value.reg](https://github.com/temrage/uninstall_school_spyware/releases/download/release/Overwrite.Empty.SmartPAC.Value.reg)

   **File Hashes for Verification:**
   - MD5: `29FEC29E74731A09B14AE4A0E9491D2E`
   - SHA-1: `98770D3CB05FD2F4E29EAD9A5C2F038A8489F496`
   - SHA-256: `CA4F6781465E6EE776854800783EC5AD8962B59B5646FFB0C0972DAD085CD88D`
   - SHA-512: `DA4D161D5D95B09DAE1D55367A2E1078EA5CCEC0FC93857B4B4E65F6EFAE9BA91C2E3055862FAC309448653ADE73DD89A59F49F4E3D242E25F50F1293D7A6F4B`

- **Source code:**
```bash
Windows Registry Editor Version 5.00

[HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Internet Settings]
"AutoConfigURL"=""

[HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\CurrentVersion\Internet Settings]
"ProxySettingsPerUser"=dword:00000000

[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings\Connections]
"DefaultConnectionSettings"=hex:...
```

---

## 🔧 MDM (Mobile Device Management)
*Under Development*

> ⚠️ **If your internet stops working**, forget the Wi-Fi network and reconnect.  
> ⚠️ **Getting a "your connection is not private" error?** Check out the [SSL Inspection page](https://github.com/temrage/school_ssl_inspection).

---

## ⚠️ Disclaimers
While this guide helps you regain control over your personal device, **proceed at your own risk**. Ensure you understand your school’s policies before making any changes. I take no responsibility for any issues that may arise, including potential conflicts with your school’s regulations. 

Always act cautiously, think critically, and make informed decisions!

---

### 📧 DMCA Requests
This repository is **not** affiliated with any school. For DMCA requests, please contact GitHub directly.

