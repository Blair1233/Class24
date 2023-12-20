# Module 4 Challenge

## Module 4 Challenge <assignment>

### Linux Systems Administration

In this module's class activities, you acted as a system administrator in order to troubleshoot a malfunctioning Linux server.

The senior administrator was quite pleased with your work. Now, they would like you to prepare another server to replace the malfunctioning server. To do so, complete the steps detailed in the Instructions section.

### Lab Environment

You will continue to use your web lab this week.

### Instructions

As you complete each of the following steps, fill out the [Module 4 Challenge Submission File](https://docs.google.com/document/d/1a1CrTH0SnsmMuP4TsEQV24pGHQKbVfvc-7xx9Vz3_Qg/copy) (remember to make a copy of this document before filling it out). This is the deliverable that you'll submit at the end of the assignment.

For each of the following steps, you will need to run the correct command and confirm the results.

#### Step 1: Ensure Permissions on Sensitive Files

The `/etc/` directory is where system configuration files exist. Start by navigating to this directory with `cd /etc/`.

Inspect the file permissions of each of the following files. You should have already done this during an in-class activity, but double check them now. If any file's permissions do not match the descriptions listed here, update the file's permissions.

  1. Permissions on `/etc/shadow` should allow only `root` read and write access.

  2. Permissions on `/etc/gshadow` should allow only `root` read and write access.

  3. Permissions on `/etc/group` should allow `root` read and write access, and allow everyone else read access only.

  4. Permissions on `/etc/passwd` should allow `root` read and write access, and allow everyone else read access only.

> **Hint:** Run the following command to view the file permissions: `ls -l <file>`
>
> If permissions need changing or modifying, use the `chmod` command.


#### Step 2: Create User Accounts

In this step, you'll set up various users in the system. For this exercise, use the `useradd` command. Research this command to determine how to best use this tool to create the user accounts. The necessary commands do not require that you work from a specific directory.

1. Add user accounts for `sam`, `joe`, `amy`, `sara`, and `admin1`.

    > **Hint:** In order to add users to the system, you need to run the command with `sudo`.

2. Make sure that only the `admin1` user has general `sudo` group access. This requires a command that will allow user modifications.

#### Step 3: Create User Group and Collaborative Folder

Now, you'll run the commands to fully set up a group on your system.

This requires you to create a group, add users to it, create a shared group folder, and set the group folder owners for this shared folder.

1. Add the group `engineers` to the system.

2. Add users `sam`, `joe`, `amy`, and `sara` to the managed group. The process is similar to the one you used to add `admin1` to the `sudo` group in the previous step.

3. Create a shared folder for this group: `/home/engineers`.

4. Change ownership on the new engineers' shared folder to the `engineers` group.


#### Step 4: Lynis Auditing

The final step on your administrator's list involves running an audit against the system in order to harden it. You'll use the system and security auditing tool Lynis to do so.

1. Install the Lynis package to your system if it is not already installed.

2. Check the Lynis documentation for instructions on how to run a system audit.

3. Run a Lynis system audit with `sudo`.

4. Provide a report from the Lynis output with recommendations for how to harden the system.


#### Optional Additional Challenge 

Despite claims from enthusiasts, Linux is _not_ immune to malware. In this step, you'll install and run the application chkrootkit to search for any potential rootkits installed on the system.

1. Install the chkrootkit package to your system if it is not already installed.

2. Check the chkrootkit documentation for instructions on how to run a scan to find system rootkits.

3. Run chkrootkit (with `sudo`) in expert mode to verify that the system does not have a rootkit installed.

4. Provide a report from chkrootkit output with recommendations for how to harden the system.


### Submission Guidelines 

* After you complete your Submission File, title it with the following format: < YOUR NAME >< Linux Systems Administration >
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

