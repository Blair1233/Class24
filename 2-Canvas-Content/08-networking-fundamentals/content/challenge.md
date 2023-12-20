# Module 8 Challenge

## Module 8 Challenge <assignment>

### Rocking your Network

You are hired by RockStar Corporation as a network security analyst.

- RockStar Corp recently built a new office in Hollywood, California. You are tasked with completing a **network vulnerability assessment** of the office.

- You will complete several steps to analyze the Hollywood network and then provide RockStar Corp a summary of your findings.

- RockStar Corp is also concerned that a malicious hacker may have infiltrated its Hollywood office. You will need to determine whether there is anything suspicious in your findings.

### Files Required

RockStar Corp has provided you with:

- A list of its network assets: [RockStar Corp Server List](https://docs.google.com/spreadsheets/d/1jCCorRShhNJNAcyct8hnRNeEDvNWVTjaVxXwlIVMrBw/edit?usp=sharing)
- Instructions to scan its network provided below.

### Your Goal

You will follow instructions to work through four phases of the network assessment. As you work, fill out the [Module 8 Challenge Submission File](https://docs.google.com/document/d/1Cdh5AL5lHF5IQklVi1wecVwjjuk1u4ZnMNA5HI7iuxc/copy) (remember to make a copy of this document before filling it out). You will submit this submission file as your Challenge deliverable. For each phase, you'll include the following information in your submission file:

- The steps and commands used to complete the tasks
- A summary of your findings
- Any network vulnerabilities discovered
- Any findings associated with a hacker
- Recommended mitigation strategy
- The OSI layer(s) your findings involve


### Topics Covered in This Assignment

- Subnetting
- CIDR
- IP addresses
- `ping`
- OSI model and its layers
- Protocols
- Ports
- Wireshark
- PCAP analysis
- `DNS`
- `HTTP`
- `ARP`
- SYN scan
- `TCP`
- `nslookup`
- Network vulnerability assessments
- Network vulnerability mitigation

### Network Vulnerability Assessment Instructions

**Environment Note:** Phase 1 will be run from your local machine.  Phases 2-4 will be run from your Web lab Machine.

#### Phase 1: _"I'd like to Teach the World to ping"_

You have been provided a list of network assets belonging to RockStar Corp.  Ping the network assets for only the Hollywood office.
  - ***IMPORTANT - You will need to run phase 1 from your local machine, and NOT the web lab.*** 
  - Determine the IPs for the Hollywood office and run ping against the IP ranges in order to determine which IP(s) are accepting connections.
  - RockStar Corp doesn't want any of its servers, even if they are up, to indicate that they are accepting connections.
     - Use `ping <IP Address>` and ignore any results that say "Request timed out."
     - If any of the IP addresses send back a reply, press Ctrl+C to stop sending requests.

Enter the relevant information for Phase 1 in your submission file, including the ping command(s) used, a summary of the results (including which IPs accept connections and which do not), and which OSI layer(s) your findings involve.

#### Phase 2:  _"Some SYN for Nothin'"_

Using your findings from Phase 1, determine which ports are open.

  - Run a SYN scan against the IP(s) accepting connections. Follow the instructions in the **SYN Scan Instructions** section below.

  - Using the results of the SYN scan, determine which ports are accepting connections.

Fill out the relevant information for Phase 2 in your submission file.

**SYN Scan Instructions**

What is **Nmap**?

  - **Nmap** is a free networking scanning tool available for Linux distributions.

  - Security professionals use Nmap to determine what devices are running on a network and to find open ports to determine potential security vulnerabilities.

  - Nmap has many capabilities and commands that can be run. Refer to this [Nmap cheat sheet](https://www.stationx.net/nmap-cheat-sheet/) for reference.

For this activity, we will specifically focus on Nmap's ability to run a SYN scan.

  - You already know that a SYN scan is an automated method to check for the states of ports on a network. Nmap is simply a tool that can automate this task.

To run a SYN scan:

  - Open the terminal within your Linux machine.

  - Use the following command to run a SYN scan: 
    - `nmap -sS  <IP Address>`

    - For example, if you want to run a SYN scan against the server IP `74.207.244.221`, run `nmap -sS 74.207.244.221` and press Enter.

    - This will scan the most common 1000 ports.

  - After this runs for several minutes, it should return a result similar to the following that depicts the state of the ports on that server:

        Starting Nmap 7.70 (https://nmap.org) at 2019-08-14 11:51 EDT
        Nmap scan report for li86-221.members.linode.com (74.207.244.221)
        Host is up (1.4s latency).
        Not shown: 988 closed ports
        PORT    STATE    SERVICE
        22/tcp  open     ssh
        25/tcp  filtered smtp
        110/tcp open     pop3
        113/tcp filtered ident
        135/tcp filtered msrpc
        139/tcp filtered netbios-ssn
        143/tcp open     imap
        445/tcp filtered microsoft-ds
        465/tcp open     smtps
        587/tcp open     submission
        993/tcp open     imaps
        995/tcp open     pop3s

  - The results show the port number, TCP, or UDP, the state of the port, and the service or protocol for the ports that are either open or filtered (i.e., stopped by a firewall).

  - Closed ports are not shown, as indicated on the line `Not shown: 988 closed ports`.

For the purpose of this exercise, document in your submission file which ports are open on the RockStar Corp server and which OSI layer SYN scans run on.

#### Phase 3: _"I Feel a DNS Change Comin' On"_

Using your findings from Phase 2, determine whether you can access the server(s) that accept connections.

- RockStar Corp typically uses the same default username and password for most of its servers, so try this first:

  - Username: `jimi`

  - Password: `hendrix`

- Try to figure out which port or service is used for remote system administration. Then, using these credentials, attempt to log in to the IP(s) that responded to pings in **Phase 1**.

RockStar Corp recently reported that it is unable to access rollingstone.com in the Hollywood office. Sometimes when they try to access the website, a different, unusual website comes up.

  - While logged into the RockStar server from the previous step, determine whether something was modified on this system that affects viewing `rollingstone.com` in the browser. When you successfully find the configuration file, record the entry that is set to `rollingstone.com`.

  - Terminate your SSH session to the rollingstone.com server, and use `nslookup` to determine the real domain of the IP address that you found in the previous step.

    > **Note:** `nslookup` is a command-line utility that can work in Windows or Linux systems. It is designed to query Domain Name System records. You can use PowerShell or MacOS/Linux terminal to run `nslookup`.

    - To run `nslookup`, enter the following on the command line:

      `nslookup <IP Address>` to find the domain associated to an IP address

      OR

      `nslookup <domain name>` to find the IP address associated to a domain

    - You'll know you've found the right domain if it begins with `unknown`.

Add your findings to your submission file.

#### Phase 4:  _"ShARP Dressed Man"_

Within the RockStar server that you SSH'd into and in the same directory as the configuration file from Phase 3, the hacker left a note about where they stored some packet captures.  

- View the file to find out where to recover the packet captures.

- These packets were captured from the activity in the Hollywood office.

- Use Wireshark to analyze this PCAP file and determine whether there was any suspicious activity that could be attributed to a hacker.

- Record and identify your findings (e.g., OSI layers, protocols, IP addresses, and MAC addresses).

    > **Hint:** Focus on the ARP and HTTP protocols. Recall the different types of HTTP request methods, and be sure to thoroughly examine the contents of these packets.

Add your findings to your submission file.

### Submission Guidelines: _"It's the End of the Assessment as We Know It, and I Feel Fine"_

* After you complete your Submission File, title it with the following format: < YOUR NAME >< Rocking your Network >
* Make sure to set the file permissions so that anyone can view and comment on your document.
* Submit the URL of your Submission File Google Doc through Canvas.

### Plagiarism Disclaimer
* No matter how difficult the course becomes, you must always turn in original work. Plagiarism is not tolerated. If your instructional or support staff determine that you have plagiarized work, your Student Success Advisor will determine the appropriate course of action based on university policy. Such actions may include, but are not limited to, a documented plagiarism discussion, an incomplete or failing grade, or ineligibility to receive the Certificate of Completion.

* __It is your responsibility to include a note in the READ ME section of your repo specifying code source and its location within your repo (If Applicable).__ This applies if you have worked with a peer on an assignment, used code which you did not author or create sourced from a forum such as Stack Overflow, or you received code outside curriculum content from support staff such as an Instructor, TA, Tutor, or Learning Assistant. This will provide visibility to grading staff of your circumstances in order to avoid flagging your work as plagiarized.

* If you are struggling with a challenge assignment or any aspect of the academic curriculum, please remember that there are student support services available for you:
    1. Ask the class Slack channel/peer support.
    2. AskBCS Learning Assistants exists in your class Slack application.
    3. Office hours facilitated by your instructional staff before and after each class session.
    4. [Tutor Guidelines](https://docs.google.com/document/d/1hTldEfWhX21B_Vz9ZentkPeziu4pPfnwiZbwQB27E90/edit#heading=h.sv8pplcsduz4) - schedule a tutor session in the Tutor Sessions section of Bootcampspot - Canvas.
    5. If the above resources are not applicable and you have a need, please reach out to a member of your instructional         team, your Student Success Advisor, or submit a support ticket in the Student Support section of your BCS application. 
