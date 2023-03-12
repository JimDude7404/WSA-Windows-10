# Windows Subsystem for Android on Windows 10
This is a backport of Windows Subsystem for Android to Windows 10. 

# What does this do?
This will install a fully working copy of the Windows Subsystem for Windows 11 onto Windows 10. Yes, this fully works
![image](https://user-images.githubusercontent.com/67085206/224578016-82faeb33-d042-4cd7-8033-ef8e6c87f70c.png)


# How to install?
1. Open the Control Panel, and goto the Programs area.

2. Click "Turn Windows Features on or off" 

![image](https://user-images.githubusercontent.com/67085206/224494897-5e343c93-357f-48d0-b166-02cd80db7e9b.png)

3. Click the checkboxes next to, "Windows Hypervisor Platform", "Virtual machine platform", and "Windows Subsystem for Linux"

4. Reboot your machine

5. Make sure Virtualization is on inside of your BIOS.

If it is it will say so inside of task manager.

![image](https://user-images.githubusercontent.com/67085206/224495031-0de71260-8ba5-4e9f-a22f-98e470a8d90f.png)

6. Install "https://www.microsoft.com/store/productId/9P9TQF7MRM4R" from the Microsoft Store. 

7. Now run setup.bat that is inside of the .zip you downloaded from releases. MAKE SURE TO EXTRACT IT!!!

8. Now run WSA as normal :)

# Troubleshooting 
If you are having issues. Namely apps running. Disable everything inside of Startup inside of Task Manager.
![image](https://user-images.githubusercontent.com/67085206/224495175-ab19de78-a424-4fbb-885c-37105ac4d9de.png)
Just make sure all of it is disabled then reboot! :)
