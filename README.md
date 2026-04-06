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

Compare public/private IP via `https://whatismyipaddress.com/`.

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

# Lab 1b-1 – Linux Services, SSH, Firewalls & Compression

## Part 1: Apache Web Server Installation
Updated package lists using `sudo apt update` and installed Apache using `sudo apt install apache2`.  
Verified the web server by accessing `http://127.0.0.1` in a browser, confirming the default Apache page was displayed.

![img](screenshots/Screenshot%202026-04-05%20203825.png)
![img](screenshots/Screenshot%202026-04-05%20203856.png)

## Part 2: Web Page Modification
Edited the default web page using `nano /var/www/html/index.html` (or `gedit`).  
Saved changes and verified them by refreshing the browser.

Explanation:
- Administrative permissions are required to modify files in `/var/www/html`

![img](screenshots/Screenshot%202026-04-05%20205221.png)


## Part 3: IP Address Identification
Used `ip a` to identify the system’s IP address and network interfaces.  
Also observed the loopback address `127.0.0.1`, which refers to the local machine.

![img](screenshots/Screenshot%202026-04-05%20205420.png)


## Part 4: Nmap Port Scanning
Installed Nmap using `sudo apt install nmap` and scanned a machine using `nmap [IP]`.  
Observed open ports and running services.

Removed Apache using `sudo apt remove apache2` and repeated the scan to observe changes in open ports.

Explanation:
- Nmap identifies open ports and active services on a system  

![img](screenshots/Screenshot%202026-04-05%20205831.png)
![img](screenshots/Screenshot%202026-04-05%20205944.png)


## Part 5: Firewall Configuration (UFW)
Checked firewall status using `sudo ufw status verbose`.  
Enabled firewall using `sudo ufw enable` and allowed HTTP traffic using `sudo ufw allow 80/tcp`.

Rechecked firewall status to confirm rules were applied.

Explanation:
- UFW controls network access by allowing or blocking specific ports  

![img](screenshots/Screenshot%202026-04-05%20210312.png)


## Part 6: SSH Access
Installed SSH server using `sudo apt install openssh-server`.  
Connected to another machine using `ssh username@ip`.

Explanation:
- SSH provides secure remote access to another system  

![img](screenshots/Screenshot%202026-04-05%20210717.png)
![img](screenshots/Screenshot%202026-04-05%20210809.png)

## Part 7: User Creation
Viewed existing users using `less /etc/passwd`.  
Created a new user using `sudo adduser username` and verified changes in the system file.

![img](screenshots/Screenshot%202026-04-05%20211111.png)
![img](screenshots/Screenshot%202026-04-05%20211332.png)
![img](screenshots/Screenshot%202026-04-05%20211306.png)

## Part 8: Compression and Decompression
Downloaded files and organised them into a directory using `mkdir` and `mv`.  
Created an archive using `tar cf books.tar books` and compressed it using `bzip2 books.tar`.

Decompressed using:
bunzip2 books.tar.bz2  
tar -xvf books.tar  

Explanation:
- Compression reduces file size and makes transfer easier  

![img](screenshots/Screenshot%202026-04-05%20212315.png)
![img](screenshots/Screenshot%202026-04-05%20212412.png)
![img](screenshots/Screenshot%202026-04-05%20212512.png)

## Part 9: SCP File Transfer
Transferred files between systems using:
scp file.txt user@ip:/destination  

Explanation:
- SCP securely copies files over a network using SSH  

![img](screenshots/Screenshot%202026-04-05%20212922.png)

# Lab 1b-2 – Linux File Permissions and Group Access Control

## Part 1: User Creation
Created three users using:
sudo adduser alice  
sudo adduser bob  
sudo adduser mallory  

Verified users using:
less /etc/passwd  

![img](screenshots/Screenshot%202026-04-05%20223738.png)

## Part 2: Group Configuration
Created a group using `sudo groupadd sharedgroup`.  
Added users to the group using:
sudo usermod -aG sharedgroup alice  
sudo usermod -aG sharedgroup bob  

Verified using:
less /etc/group  

![img](screenshots/Screenshot%202026-04-05%20224428.png)

## Part 3: Directory and File Setup
Created a shared directory using:
sudo mkdir /home/shared  

Set group ownership:
sudo chgrp -R sharedgroup /home/shared  

Created files using:
sudo touch /home/shared/file{1..10}  

![img](screenshots/Screenshot%202026-04-05%20224840.png)


## Part 4: Permission Assignment
Set directory permissions using:
sudo chmod -R 770 /home/shared  

Modified file permissions using:
sudo chmod 750 /home/shared/*  

Verified permissions using:
ls -l /home/shared  

Explanation:
- 770 → full access for owner and group  
- 750 → restricted access for others  

![img](screenshots/Screenshot%202026-04-05%20230758.png)

## Part 5: Access Verification
Switched users and tested access:

su - alice  
whoami  
ls /home/shared  

su - bob  
whoami  
ls /home/shared  

su - mallory  
whoami  
ls /home/shared  

Explanation:
- Alice has full access  
- Bob has limited access  
- Mallory has no access (permission denied)  

![img](screenshots/Screenshot%202026-04-05%20231323.png)


## Part 6: Recursive Commands
Applied recursive permission changes using:
chmod -R  
chown -R  
chgrp -R  

Explanation:
- `-R` applies changes to all files and subdirectories  

![img](screenshots/Screenshot%202026-04-06%20000617.png)


## Part 7: Sudo Access for Mallory
Added Mallory to sudo group using:
sudo usermod -aG sudo mallory  

Verified using:
groups mallory  

Tested using:
sudo ls /root  

Explanation:
- Sudo allows elevated privileges beyond normal user permissions  

![img](screenshots/Screenshot%202026-04-06%20000949.png)

## Part 8: Cleanup
Removed directory and contents using:
sudo rm -r /home/shared  

![img](screenshots/Screenshot%202026-04-06%20001116.png)

# Lab 1b-3 – File Search, Analysis & Archiving

## Part 1: Archive Extraction
Extracted archive using:
bunzip2 Gutenberg.tar.bz2  
tar -xvf Gutenberg.tar  

![img](screenshots/Screenshot%202026-04-06%20002809.png)


## Part 2: File Exploration
Listed files using:
ls -l  

Explored directory structure and contents.

![img](screenshots/Screenshot%202026-04-06%20003210.png)


## Part 3: File Name Search
Searched for files using:
find . -name "*.txt"  

![img](screenshots/Screenshot%202026-04-06%20003322.png)


## Part 4: Text Search
Searched for keywords using:
grep -r "verdigris" .  

![img](screenshots/Screenshot%202026-04-06%20003735.png)


## Part 5: Contextual Search
Used:
grep -r -C 3 "day" *.txt  

Explanation:
- `-C 3` shows surrounding lines for context  

![img](screenshots/Screenshot%202026-04-06%20005322.png)


## Part 6: Date-Based Search
Used:
find . -type f -printf '%T+ %p\n' | sort  

Explanation:
- Helps identify oldest or newest files  

![img](screenshots/Screenshot%202026-04-06%20005633.png)




## Part 7: Size-Based Search
Used:
find . -type f -size 255258c  

![img](screenshots/Screenshot%202026-04-06%20005850.png)


## Part 8: Largest Files
Used:
du -a . | sort -nr | head  

Explanation:
- Identifies largest files in directory  

![img](screenshots/Screenshot%202026-04-06%20005956.png)


## Part 9: Frequency Analysis
Used:
sed -e 's/\s/\n/g' < file.txt | sort | uniq -c | sort -nr  

Explanation:
- Breaks text into words and counts frequency  

![img](screenshots/Screenshot%202026-04-06%20010105.png)


## Part 10: Answers
- verdigris: 1
- Largest file: moby.txt
- Smallest file: alice.txt
- Oldest file: twocities.txt
- Most frequent word: the
![img](screenshots/Screenshot%202026-04-06%20013551.png)

# Lab 2a – Total Cost of Ownership (TCO)

## Part 1: TCO Analysis

Performed a Total Cost of Ownership (TCO) analysis by comparing two printers over a 5-year period.

Used a spreadsheet to calculate costs including:
- Fixed costs (printer)
- Variable costs (ink/toner, paper, electricity, servicing)

Applied assumptions such as:
- 5 years usage
- 750 pages per week

Calculated total cost and compared both printers to determine the more cost-effective option.

![img](screenshots/Screenshot%202026-04-06%20160105.png)

## Part 2: Reflection

- The inkjet printer is more cost-effective due to lower running costs.
- For a home user printing fewer pages, the cost difference would be smaller.
- Other factors include print speed, reliability, and maintenance.
- For large organisations, cost per page and durability are important.
