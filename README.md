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

This script is for Windows 10/11 users. It will remove all traces of school-installed spyware like Securly and MDM. It also lets you download and install the school's SSL certificate so you can connect to the network without needing to visit the IT department or reinstall the spyware. Just keep in mind that this script won’t connect you to the network automatically—you’ll still need to log in yourself with your username and password later. It simply prepares your device so you won’t see SSL warnings, as the school does SSL inspection. If you don’t plan to use the school network, you may skip this step.

> ⚠️ **Important Notes**
> - This script is entirely open-source.
> - **Always review the source code before running any script.**

[Learn more about this project](https://github.com/temrage/uninstall_school_spyware/blob/main/about.md)

## Download / How to use it?

### Method 1 - PowerShell (Windows 8 and later) 🏆

1.   Open PowerShell (Not CMD). To do that, right-click on the Windows start menu and select PowerShell or Terminal.
2.   Copy and paste the code below and press enter  
```
iwr https://raw.githubusercontent.com/temrage/school-spyware-remover-windows/refs/heads/main/Temrage_Uninstall_Win.bat -OutFile "$env:TEMP\Temrage_Uninstall_Win.bat"; & "$env:TEMP\Temrage_Uninstall_Win.bat"
```

- The Powershell method does not work on Windows 7. Use the Method 2 - Manual instead.  

### Method 2 - Manual (Windows 7 and later)

1.   Download this (bat script) [https://github.com/temrage/school-spyware-remover-windows/releases/download/release/Temrage_Uninstall_Win.bat]
2.   Run the file named `Temrage_Uninstall_Win.bat`


### 🚨 Stop using school profile!
1. **Google Chrome users:** Sign out of your school chrome profile! Syncing the browser profile will force-install the Securly extension and make Chrome "managed by your organization," allowing schools to monitor your browsing history. 
   - For better privacy, consider switching to open-source browsers like **Brave**, **Firefox**, or **LibreWolf** or use chrome without syncing.


## ⚠️ Disclaimers
While this script helps you regain control over your personal device, **proceed at your own risk**. Ensure you understand your school’s policies before making any changes. I take no responsibility for any issues that may arise, including potential conflicts with your school’s regulations. 

Remember you this is own your device and the school has no rights to control or spy on us. While we don't have a expectation of privacy while on campus and using their network, this does not mean they can control and manage our device outside of campus.

---

### 📧 DMCA Requests
This repository is **not** affiliated with any school. For DMCA requests, please contact GitHub directly.

