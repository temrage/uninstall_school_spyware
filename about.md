## Introduction

Many schools require students to go through an "initial device registration" process to connect to their network. During this process, they may install software on your personal device, including mobile device management (MDM) profiles and other surveillance tools such as Securly. These tools are not required for network access. They can invade your privacy by monitoring your activities, collecting data, and restricting your device’s capabilities. This guide aims to help you identify and remove these unnecessary surveillance tools from your personal device while maintaining your ability to connect to the school network. If you’re a new student or have a new device that you want to connect to the school network, you can follow the steps on the SSL inspection page to bypass the “initial device registration” process entirely.

## Spyware that we’re going to be uninstalling:

Securly Proxy

- What is this?
    
    Securly Proxy is a tool used by some schools to monitor and manage internet activity on student’s devices. Here’s a breakdown of how it works and its implications:
    
    1. **Traffic Redirection and Logging**: Securly Proxy redirects all your internet traffic through a server located in the US. This means that your browsing activity is logged and analyzed by the system. Because your traffic is routed through an external server, your internet connection may be significantly slower compared to direct access. This is due to the additional distance data must travel and the processing time required by the proxy server.
    2. **Parental Access**: Parents can also view their your internet traffic through the Securly Proxy system. This means they have visibility into the sites visited and can monitor online activities.
    3. **Content Filtering and Blocking**: If the proxy detects that you are trying to access a site or content deemed inappropriate or blocked by the school, it will hijack the page and block access. This helps in enforcing school policies regarding acceptable internet use. Parents also have the ability to choose and block specific websites.
    4. **Monitoring Beyond School**: The proxy can monitor and control internet use even when you are outside of school. This means that activities conducted on your personal device at home can also be monitored. (massive GDPR violation btw)
    5. **Wellbeing Tracking**: Securly Proxy can flag certain keywords or phrases, such as those related to self-harm or dangerous activities, and send alerts to the school. This is intended to support student wellbeing, but it also raises privacy concerns.
    6. **Consent and Privacy Concerns**: According to the Personal Data Protection Act (PDPA), collecting personal data must be done with explicit consent. The automatic installation of Securly Proxy on personal devices starting from the 2024-2025 school year, which involves tracking online activities, could be seen as an infringement on privacy. This is because the data collection might exceed what was originally consented to by students or their guardians.

MDM (**Mobile Device Management)**

- What is this?
    
    **Mobile Device Management (MDM)** is a software solution used by organizations, including schools, to manage and secure devices they own. It typically allows administrators to:
    
    - **Install and update apps**.
    - **Enforce security policies** (like passwords and encryption).
    - **Monitor device usage**.
    - **Remote wipe or lock** devices if they are lost or stolen.
    
    ### MDM on School-Owned vs. Personal Devices
    
    **On School-Owned Devices**: MDM is used for “device tracking and management”
    
    **On Personal Devices**: Installing MDM on personal devices is more controversial. It grants the school significant access to the device’s features and data, including:
    
    - **Access to apps and data**.
    - **Monitoring of usage**.
    - **Potential for privacy invasions**.
    
    **Current Situation**:
    
    - **Permissions**: While the school claims that MDM on personal devices does not activate all permissions, you shouldn’t just take their word for it. Privacy risks persist because you can’t solely rely on assurances.
    - **Logging and Data**: Independent investigations have found that the MDM software still logs login times and history, which is sent to the school, raising privacy concerns.
    - **Software Repository**: The school's justification for MDM on personal devices is that it serves as a software repository. However, the applications available (like Adobe Creative Cloud and Microsoft 365 Office) can be directly downloaded from official websites, making this justification questionable.
    
    ### Policy Changes
    
    - **Old Policy**: The previous acceptable use policy mandated MDM installation on personal devices.
    - **New IT Policy**: This requirement seems to have been removed, however it’s still not clear whether the school continues to install MDM on personal devices.

## This guide only for students in🔴🟢 school.

# Privacy

<aside>
❗ Privacy is a fundamental human right, and it extends to every aspect of our lives, including the use of personal devices. Your personal device is an extension of your private life, containing sensitive information, personal communications, and data that should be under your control. The choices you make regarding your device—what you install, how you use it, and who has access to it—should be yours alone. It is neither appropriate nor justifiable for a school or organization to dictate or manage these aspects, especially when it comes to your private life.

The principles of privacy are enshrined in various data protection laws, such as the Personal Data Protection Act (PDPA) and the General Data Protection Regulation (GDPR). Both of these legal frameworks emphasize the importance of consent, transparency, and individual rights when it comes to the collection and processing of personal data.

Under the PDPA, organizations must obtain explicit consent before collecting, using, or disclosing personal data. The GDPR, which governs data protection in the European Union, goes further by guaranteeing individuals the right to control their own data, requiring organizations to implement stringent measures to protect privacy, and providing robust rights to individuals, including the right to access, rectify, or erase their personal data.

In the context of a school or organization managing your personal device, these principles become critically important. The installation of management software or the monitoring of your device without clear, informed consent violates your right to privacy. Such actions not only contravene the spirit of laws like the PDPA and GDPR but also undermine the trust and autonomy that should exist between individuals and institutions.

Ultimately, your personal device is yours to control. It is your right to decide how it is used and to protect your privacy against unwarranted intrusion. Schools and organizations should respect these rights, ensuring that any actions they take are fully compliant with data protection laws and the ethical standards that underpin our fundamental right to privacy.

</aside>
