# BRG-27 Lab Activities

# Lab 1a-1 – Virtualisation and Linux Setup

## 1. VirtualBox Installed
Installed Oracle VirtualBox on my system to create and run a virtual machine.

![img](screenshots/Screenshot%202026-04-05%20140810.png)

## 2. Ubuntu ISO Downloaded
Downloaded the Ubuntu ISO file from the official Ubuntu website to use for installation.

![img](screenshots/Screenshot%202026-04-05%20141156.png)

# Lab 1a-2 – Ubuntu Desktop and Command Line Familiarisation

## Part 1: Ubuntu Desktop GUI Familiarisation
- Opened Firefox and confirmed internet access  
- Opened LibreOffice and typed a document  
- Navigated directories using File Manager  
- Installed a program via Ubuntu Software Centre  

![img](screenshots/Screenshot%202026-04-05%20144736.png)

## Part 2: CLI Basics and File Operations

### Process Monitoring
ps -e  
top  

Pressed `1` in top to display CPU usage per core.

![img](screenshots/Screenshot%202026-04-05%20145000.png)
![img](screenshots/Screenshot%202026-04-05%20145146.png)

### File Listing
ls  
ls -la  
ls -alt  
ls -lah  

Difference:
- ls shows basic files  
- ls -la shows hidden files and detailed info  
- ls -alt sorts by time  
- ls -lah shows file sizes in human-readable format  

![img](screenshots/Screenshot%202026-04-05%20154737.png)
![img](screenshots/Screenshot%202026-04-05%20154810.png)
![img](screenshots/Screenshot%202026-04-05%20154819.png)

### File Creation and Editing
touch testfile  
gedit testfile  
nano testfile  

Difference:
- gedit is GUI-based  
- nano works in terminal (used in servers)

![img](screenshots/Screenshot%202026-04-05%20150519.png)

### File Viewing
cat testfile  
less testfile  

Difference:
- cat prints full content  
- less allows scrolling  

![img](screenshots/Screenshot%202026-04-05%20150803.png)

### File Operations
cp testfile testfile2  
mv testfile2 testfile3  
rm testfile3  

Difference:
- cp copies files  
- mv moves or renames files  
- rm deletes files  

Used:
ls -lah (shows file sizes clearly)

![img](screenshots/Screenshot%202026-04-05%20152147.png)

### System Information
uname -a  
lsb_release -a  
hostnamectl  

Difference:
- uname → kernel/system info  
- lsb_release → OS version  
- hostnamectl → system identity  

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
