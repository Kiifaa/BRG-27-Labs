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
whoami  

Attempted:
adduser testuser (failed)  

Used:
sudo whoami  
sudo adduser testuser  

Explanation:
- sudo provides temporary root (admin) access  

![img]


## Part 4: Network Configuration and DNS

### Network Configuration
ip a  
ping 8.8.8.8  

![img]

### Hosts File
less /etc/hosts  
sudo nano /etc/hosts  

Added entry and tested:
ping GoogleEpicDNS  

Explanation:
- Hosts file maps domain names locally  

![img]

### DNS Lookup
nslookup google.com  
sudo apt install whois  
whois google.com  

Explanation:
- DNS converts domain names to IP addresses  

![img]


## Part 5: System and Hardware Info
lsusb  
lspci  
less /proc/cpuinfo  

Compared CLI output with system GUI (“About This Computer”).

![img]


## Part 6: Software Installation Methods
Installed software using:
- Ubuntu Software Centre  
- Downloaded .deb file (e.g., Chrome/Opera)  
- Browser-based SaaS  

Updated system:
sudo apt update  
sudo apt upgrade  

Installed package:
sudo apt install vlc  

Searched packages:
sudo apt search vlc  

Viewed repositories:
less /etc/apt/sources.list  

![img]
