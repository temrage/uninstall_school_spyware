[About](https://github.com/temrage/uninstall_school_spyware/blob/main/about.md)

This guide is for Windows 10/11 only

<aside>
❗ Important Notes

- The scripts in this guide are open-source.
- **You should always review the source code before executing any script.**
</aside>

### Securly

This guide will help you remove the Securly proxy from your device by deleting the associated certificates and the AutoConfigURL registry entry that enforces the proxy.

1. If you're using Chrome, stop immediately and sign out of your school BROWSER PROFILE! You can still access your school Google account without syncing your browser profile. Otherwise, a Securly extension will be force-installed, and Chrome will be "managed by your organization,". This also allows the school to track your browsing history. Google Chrome has a bad privacy reputation, try and avoid it if possible. For better privacy protection, consider switching to open-source browsers like Brave, Firefox, or LibreWolf, which prioritize user privacy and offer more robust security features.
    
2. Download and run this script. You must run this script as administator or else it won’t delete all Securly certificates. This script deletes certificates related to "*.securly.com" from both the system and user certificate stores. The script is obtained from Securly, Inc and is entirely open source.
    
    [RemoveSecurlyCert.bat](https://github.com/temrage/uninstall_school_spyware/releases/download/release/RemoveSecurlyCert.bat)
    
    - Source code
        
        ```bash
        certutil -delstore root "*.securly.com"
        certutil -delstore my "*.securly.com"
        
        certutil -delstore -user root "*.securly.com"
        certutil -delstore -user my "*.securly.com"
        ```
        
    
3. Remove AutoConfigURL from the Registry. 
The second script, will reset the `AutoConfigURL` entry from your Windows registry, which is responsible for enforcing the Securly proxy. Once again this script is obtained from Securly, Inc and is entirely open source.
    
    [Overwrite Empty SmartPAC Value.reg](https://github.com/temrage/uninstall_school_spyware/releases/download/release/Overwrite.Empty.SmartPAC.Value.reg)
    
    - Source code
        
        ```bash
        Windows Registry Editor Version 5.00
        
        [HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Internet Settings]
        "AutoConfigURL"=""
        
        [HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\CurrentVersion\Internet Settings]
        "ProxySettingsPerUser"=dword:00000000
        
        [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings\Connections]
        "DefaultConnectionSettings"=hex:00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\
          00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\
          00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\
          00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\
          00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\
          00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\
          00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00
        "SavedLegacySettings"=hex:00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\
          00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\
          00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\
          00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\
          00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\
          00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\
          00,00,00,00,00,00,00,00,00,00,00,00,00,00,00
        
        ```
        


For more info visit Securly Inc’s website: [https://support.securly.com/hc/en-us/articles/360040183593-How-to-uninstall-the-Securly-SSL-Certificate-from-BYOD-devices](https://support.securly.com/hc/en-us/articles/360040183593-How-to-uninstall-the-Securly-SSL-Certificate-from-BYOD-devices)

## MDM
Under Development 
<aside>
❗ If your internet stops working, forget the wifi and reconnect
If you are getting a https error (your connection is not private) follow the steps on the SSL Inspection page
While the steps provided are designed to help you manage and remove unnecessary surveillance software from your personal device, proceeding with these actions is at your own risk. Please ensure that you review and fully understand your school's policies before making any changes to your OWN device. I am not responsible for any consequences or issues that may arise from following this guide, including any potential conflicts with your school's regulations. Always proceed with caution, think critically, and avoid making stupid choices.


</aside>

This repo is not associated with any schools. For DMCA request plese contact github directly. 
