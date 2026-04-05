# BRG-27 Lab Activities

# Lab 1a-1 – Virtualisation and Linux Setup

## 1. VirtualBox Installed
Installed Oracle VirtualBox on my system to create and run a virtual machine environment.

![img](screenshots/Screenshot%202026-04-05%20140810.png)

## 2. Ubuntu ISO Downloaded
Downloaded the Ubuntu ISO file from the official Ubuntu website to use for the virtual machine installation.

![img](screenshots/Screenshot%202026-04-05%20141156.png)


# Lab 1a-2 – Ubuntu Desktop and Command Line Familiarisation

## Part 1: Ubuntu Desktop GUI Familiarisation
Opened Firefox to verify internet connectivity.  
Launched LibreOffice and created a document to confirm application functionality.  
Used the File Manager to navigate directories and understand the file structure.  
Installed a program using the Ubuntu Software Centre to test software installation.

![img](screenshots/Screenshot%202026-04-05%20144736.png)


## Part 2: CLI Basics and File Operations

### Process Monitoring
Executed `ps -e` to display running processes and used `top` to monitor system performance in real-time.  
Pressed `1` in `top` to display CPU usage across multiple cores.

![img](screenshots/Screenshot%202026-04-05%20145000.png)
![img](screenshots/Screenshot%202026-04-05%20145146.png)


### File Listing
Used `ls`, `ls -la`, `ls -alt`, and `ls -lah` to explore directory contents.

Differences observed:
- `ls` displays basic files and directories  
- `ls -la` includes hidden files and detailed permissions  
- `ls -alt` sorts files by modification time  
- `ls -lah` displays file sizes in a human-readable format  

![img](screenshots/Screenshot%202026-04-05%20154737.png)
![img](screenshots/Screenshot%202026-04-05%20154810.png)
![img](screenshots/Screenshot%202026-04-05%20154819.png)


### File Creation and Editing
Created a file using `touch testfile`.  
Edited the file using both `gedit` and `nano`.

Differences observed:
- `gedit` is a graphical text editor  
- `nano` is a terminal-based editor suitable for remote systems  

![img](screenshots/Screenshot%202026-04-05%20150519.png)


### File Viewing
Used `cat testfile` and `less testfile` to view file contents.

Differences observed:
- `cat` displays the entire file output at once  
- `less` allows scrolling through the file content  

![img](screenshots/Screenshot%202026-04-05%20150803.png)


### File Operations
Used `cp` to duplicate files, `mv` to rename or move files, and `rm` to delete files.

Differences observed:
- `cp` creates a copy of the file  
- `mv` moves or renames the file  
- `rm` permanently deletes the file  

Used `ls -lah` to verify file changes and sizes.

![img](screenshots/Screenshot%202026-04-05%20152147.png)


### System Information
Executed `uname -a`, `lsb_release -a`, and `hostnamectl` to retrieve system information.

Differences observed:
- `uname -a` provides kernel and system details  
- `lsb_release -a` shows distribution and version information  
- `hostnamectl` displays system identity and hostname details  

![img](screenshots/Screenshot%202026-04-05%20152531.png)


## Part 3: Super User and Permissions
Used `whoami` to check the current user account.  
Attempted to create a new user using `adduser testuser`, which failed due to insufficient privileges.  

Used `sudo whoami` to verify root access and successfully created a new user with `sudo adduser testuser`.

Explanation:
- `sudo` allows temporary elevation to root (administrator) privileges to perform restricted actions  

![img](screenshots/Screenshot%202026-04-05%20170119.png)


## Part 4: Network Configuration and DNS

### Network Configuration
Used `ip a` to display the system’s IP address and network interfaces.  
Tested network connectivity using `ping 8.8.8.8`, confirming successful communication with an external server.
Private IP is used within local networks, while public IP is used to identify a device on the internet.

![img](screenshots/Screenshot%202026-04-05%20170325.png)

### Hosts File
Viewed the hosts file using `less /etc/hosts` and edited it using `sudo nano /etc/hosts`.  
Added a custom hostname mapping and verified it using `ping GoogleEpicDNS`.

Explanation:
- The hosts file is used to map domain names to IP addresses locally on the system  

![img](screenshots/Screenshot%202026-04-05%20171037.png)

### DNS Lookup
Performed a DNS lookup using `nslookup google.com` to retrieve the IP address of the domain.  
Installed the `whois` tool using `sudo apt install whois` and used `whois google.com` to retrieve domain registration details.
Compare public/private IP via https://whatismyipaddress.com/.

Explanation:
- DNS translates human-readable domain names into IP addresses required for network communication  

![img](screenshots/Screenshot%202026-04-05%20171721.png)
![img](screenshots/Screenshot%202026-04-05%20171732.png)
![img](screenshots/Screenshot%202026-04-05%20172114.png)


## Part 5: System and Hardware Info
Used `lsusb`, `lspci`, and `less /proc/cpuinfo` to inspect hardware components and system information.  
Compared the command-line outputs with the graphical system information available under “About This Computer”.
Used output redirection to save command output into a file using `lsusb > output_of_lsusb`, and viewed it using `less` and `cat`, then removed it using `rm`.

![img](screenshots/Screenshot%202026-04-05%20172616.png)


## Part 6: Software Installation Methods

Installed software using multiple methods:

- Ubuntu Software Centre (GUI-based installation)  
- Installed a `.deb` package (e.g., Chrome/Opera)  
- Used browser-based SaaS applications  

Updated system packages:
sudo apt update  
sudo apt upgrade  

Installed software:
sudo apt install vlc  

Searched for packages:
sudo apt search vlc  

Viewed repository sources:
less /etc/apt/sources.list  

Explanation:
- Software Centre provides a graphical way to install apps  
- .deb files allow manual installation of software  
- SaaS runs in a browser without installation  
- apt commands install and manage software from repositories  
- sources.list contains trusted repositories  

![img](screenshots/Screenshot%202026-04-05%20174218.png)
![img](screenshots/Screenshot%202026-04-05%20174304.png)

## Reflection Questions

### Which file editors are best for remote access and why?
Nano is more suitable for remote access because it works entirely in the terminal, which is important when accessing systems through SSH where a graphical interface is not available. In contrast, gedit requires a GUI, so it cannot be used in most remote server environments.

### Compare software installation methods: SaaS vs binaries vs repos vs source
SaaS applications are accessed through a browser and do not require installation, making them easy to use. Installing binaries such as `.deb` files is straightforward but may require manual handling of dependencies. Repository-based installation using `apt` is the most convenient and reliable, as it automatically manages dependencies and updates. Installing from source code provides the most flexibility but is more complex and requires technical knowledge.

### What are pros/cons of each method from user and developer perspectives?
From a user perspective, SaaS and repository installations are the easiest and most convenient. Binary installations are simple but less flexible, while source installation is more difficult. From a developer perspective, source code installation offers full control and customization, while repositories provide a balance between ease of use and distribution. SaaS allows developers to maintain full control over the application but requires continuous hosting.

### How did using CLI improve your understanding of Linux?
Using the command-line interface helped me better understand how Linux systems operate at a deeper level. It allowed me to see how commands directly interact with files, processes, and system settings, which is not always visible in a graphical interface. It also improved my confidence in managing systems without relying on a GUI.
