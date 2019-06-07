# Windows 10 Spotlight Fix

I have found over the past few months while working on setting default setting for all users that I somehow broke Windows 10 Spotlight. I was able to get bits and pieces back working, but not fully restored until now. There are a few registry settings that got changed and or created and it required a reset of Windows spotlight as well. I have seen numerous fixes regarding spotlight not working right and there is an important piece that was missing. The registry settings. I am not saying this is all the registry settings that will break spotlight, however, it is what I found while working on my Windows 10 defaults for all users. I am providing a bat type of file for the fix of what I know which is more than I found scouring the net. I will go over them in order of what to do.

1. **Goto Settings - Personalization - Lock Screen:** Set the Background to either Picture or Slide show.
2. **Run the file called** *W10SpotlightFix.cmd* from this repository as Administrator.
3. **Goto Settings - Privacy - Background apps:** Make sure *EDGE* and *settings* are on 
4. Reboot your machine.
5. Log back into the profile in which you ran the fix.
6. **Goto Settings - Personalization - Lock Screen:** Set the Background Back to Spotlight.
7. Log off or reboot the machine. 
8. Log back on with the profile you have been using.

*Please note these changes could take several minutes to refresh spotlight.*
You can open the file location below and you should see the files start re-populating after a few minutes. `%USERPROFILE%/AppData\Local\Packages\Microsoft.Windows.ContentDeliveryManager_cw5n1h2txyewy\LocalState\Assets`  

I cannot say that this **will** fix your Windows 10 Spotlight issues, but it is a great start, and is a combination what i found in several articles, and my personal experiences fixing Spotlight with the registry settings that I altered that accidentally created the issue. So if you modified the registry setting I have listed in the fix, then it is a good bet you broke Windows 10 Spotlight by accident.


_References:_
- https://www.techsupportall.com/windows-spotlight-not-working-fix-it-easily/
- https://www.intowindows.com/fix-windows-spotlight-not-working-in-windows-10/
- https://windowsreport.com/windows-10-spotlight-issue/
