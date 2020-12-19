# T1A3 - Terminal Application By -----------Joseph Buhagiar---------

#### Github Repository for code: [JoeComputational-T1A3 App](https://github.com/JoeComputational/Term1A3-Medapp)
##### For viewers rearing the printed versions of the readme, please visit:
https://github.com/JoeComputational/Term1A3-Medapp

## ------- Software Developement Plan ------

#### Statement of Purpose / who is MediKait for?

**MediKait** was designed for users that are struggling to maintain a record of their medications (polypharmacy) if on multiple, how frequently they take them, and when they need to refill their medication. This was designed to help and track medications so users don't accidentally dose incorrectly which has the potential to cause grievous harm/death. It was also built around health supportive features which include definitions of routes and supplements, calculators and unit conversion methods, as well as a Body mass inex calculator - these features are outlined below:

The main feature of this application is a **Medication List**. This sounds simple, but helps the user maintain which medications they're currently on a description of what its use is, and its schedule (be it when it's taken, when the prescription needs a refill, or its medication classification). 

Along with the medication list, another great feature set is the split **Volume Conversion** and **Mass Conversion** elements. Both of these features help the user calculate both different volume and mass units into others (such as mL to L or mg to Ug). This helps the user if all of their doses are in different units and they would like to list it all in one easy to remember unit.

Another great feature of MediKait is a **Grouped Definitions Page of Administration Routes** and their medical abbreviations. This helps at home users break down the routes they're supposed to be taking their medications with ease.

A supplementary and supportive feature of MediKait is a **Mineral, Vitamin, and Supportive Supplements Page**. This was added to help promote vitamins and minerals that promote and aid in body homeostasis, support, and general well-being.

The last important feature of MediKait at the current release is a **BMI calculator**, which is important to keep track of weight and your current body mass index. This helps users maintain a healthy weight while taking certain medications (such as steroidal and metabolic inhibitors due to certain conditions and tumor growths).

**MediKait** was designed solely with the user in mind, to support, track, and help maintain their health and well-being. So many times are people entering the hospital system without complete knowledge of all of their medications - which puts a strain on staff, prognosis, and ability to prescribe medications until family members can help fill knowledge gaps.

With this app, the user will be able to enter all of their medical information - which then saves it to a text document - which can be emailed, printed, or stored on a mobile device and shown to medical professionals. This then helps the user as well as the medical team.

## Listed features and understanding


**Medication List** The medication list includes many features, these include inputting information, updating information, and being able to view the information as a list. This portion of the app lets users, input data that was all set in the main class - the class was full of methods to print, receive, list, and update input information. It then took all of this information and ported it into a saved .txt file. If this text file happened to go missing or be accidentally deleted - the user would need to replace it and the app would output that the file is missing from the set directory. This personally is my favorite feature of the app and took the most time to complete. It is listed as one feature of the app, but this one feature does 3 things and then saves to an external file - hence why it took the longest.

**Mass and Volume Conversions**
I have implemented both mass and volume conversions in MediKait, this was done as both mass and volume are used when administering medication. Both have 6 options to choose from, all using commonly used units, taking them from larger to smaller units with ease. Both were great features to include, both also built off the same skeleton as each other. Both were fantastic to code and error check, if anything bar numbers are entered - it will continually ask you to put in a valid option. Both were built off an if, elsif, and else loops - very fun to implement and very straight forward to read if taking over the code from a programming perspective. This feature is very handy for rapid/on the fly conversions.

**Definitions and Supplements pages**
These two areas are both fantastic user resources, providing definitions for medical shorthand administration routes - as well as commonly taken vitamins, minerals, and supplements. This both promoting a healthy and supportive routine of supplements to promote homeostasis within the body. These are both very simplistic features - both are simply printing an array in a list format. But sometimes simple is elegant. There can be no errors here as it's a clean code with a simple puts statement.

**Main Loop Functions**
Another feature of this app is the main loop, I spent a lot of time on it making sure going through the menu was as efficient and simplistic as it could be. I had to continually fix exit and break scenario selections -which was a great patience and ability test. With input from educators and peers - I was rapidly able to sort out errors and issues.

## Gems used in the app (MediKait)

The Ruby Gems that were used in this app are as follows:
- **TTY Prompt**
 (This is used to make menus highlightable and selectable)
 
- **TTY- Font**
(This was used to make an amazing title screen, great feature)

- **Bundler**
(Bundler helps pull all required gems for the program to run)

- **RSPEC** (Only able to get 2 tests completely working)
(Fantasti Gem to create debugging/testing methods)

- **Colorize**
(Colorize was used to have text output in different colours)

## Outline of the user interaction/experience


Users will find that it's rather easy to navigate through and interact with MediKait. It has a few **Gems** installed to help with this. It firstly has TTY-Prompt installed that takes the app away from requiring a numerical value entered to select a portion of the app - and makes it highlightable with arrows and selectable with the enter key. It is shown on the prompt - must like as the image below shows.

![MediKait Home Page](https://i.ibb.co/Js53Mvp/HomePage.png)

Once told to select from the following options - it displays how to navigate and select. The hovered item is highlighted in green to help show selection.

In certain areas of the application, such as conversion areas or medical list input - it prints a prompt of what you have to do (such as enter a numerical value to convert or enter a medication onto the list). Each section will display its prompt to aid the user and provide a high level of access to users with all sorts of technical knowledge.

Errors handled within the app are quite elegant, it will print a prompt asking for correct value inputs in certain areas, and to my knowledge - it will not break. So it will not throw up error codes and then break the app and close it. It will politely ask for correct input or tell you your medical storage file is missing.


## Control Flow diagram - Workflow Logic
#### This is the Control Flow diagram of how the App Works
![MediKait Control Flow Diagram](https://i.ibb.co/52T2pgC/Flow-Chart.jpg)

## Implementation Plan of Features/Trello 

#### To view the MediKait full Trello,  visit [MediKait Trello Board](https://trello.com/b/ReTsaZEG/t1a3)

##### or for printed documents, please visit this link: https://trello.com/b/ReTsaZEG/t1a3

Please find a snippet of the Trello board - which shows progressional feature implementation as well as outlines error handling and documentation that is due to be completed once the app was finished.

![MediKait Trello Board](https://i.ibb.co/ZmnrbjN/trello.png)
This was such a fun board to work on and divise up my work, the deadlines were hard to stick to, as some features took longer and others were done well before due time. It also helps grealy to have such an amazing visual representation of your application, breaks down what is required in the app, what section is being worked on, what still needs to be done and whats completed. You can also highlight portions of your app that are required to continue and list them coloured by importance. All extremely handy when working on technology and within a team based scenario.

# How To launch / use the APP

Please note - to launch this app WSL is required and can be found here [WSL](https://www.microsoft.com/en-us/p/ubuntu-2004-lts/9n6svws3rx71?activetab=pivot:overviewtab) 
or for printed versions of this leaflet, here : https://www.microsoft.com/en-us/p/ubuntu-2004-lts/9n6svws3rx71?activetab=pivot:overviewtab. It is a free piece of software that enables the linux ecosystem on your windows machine.

### System Requirements at time of testing:
please note - at the time of testing asnd debugging - the system was using 
Windows 10 with WSL 20.04 (ver. 2) installed
That means minimum windows 10 spec computer to run software:

- Windows 10 OS 32 or 64bit
- Processor: 1ghz or faster processor
- 1(GB) Gigabyte of ram
- Minimum of 16gb HDD space
- DirectX9 or later with WDDM 1.0 Drivers installed
- Minimum display of 800x600

### Please note, the affore mentioned GEMS will be required to run this application - following the steps below will help you run and install them with the launch script.

**To pull the repository/app please follow these steps**
Windows users please follow these prompts.
Download the repository using this link here: [JoeComputationalT1A3](https://github.com/JoeComputational/Term1A3-Medapp/archive/main.zip)
or https://github.com/JoeComputational/Term1A3-Medapp/archive/main.zip

and unzip it to a stable and usable location on your desktop or documents folder.
## Once unzipped please follow these prompts

Please open the folder you have placed the unzipped files in and double click on the src folder as below:
![SRC File](https://i.ibb.co/fpTWKLZ/src.png)

once inside the src folder, please hold down the left shift and right click (LShift + Rclick) and click on open linux shell here, like the following pic:
![linux shell](https://i.ibb.co/bv054Jg/linux-prompt.png)

A black window will pop up on screen - to open the app please type the following in which will launch the program:
``` 
sh medicaid.sh	
```
![medicait launch](https://i.ibb.co/Nx6RRmt/launch.png)

###### (This script will install bundler - which is a gem used to pull all required gems from a source location) Once bundler has finished installing the gems it will push your through the app launching prompts and bring you to the app title screen)

This will launch the app in generic mode, if you would like to add your name to the home menu please type (replace yournamehere with your name you would like to use.
```
sh medicaid.sh yournamehere
```
###### (Please note - as of patch 1.0.0 - current. This can break the medication list)

You will then be greeted by the welcome message and pushed through to the main menu prompt - as seen below:
![enter image description here](https://i.ibb.co/Js53Mvp/HomePage.png)

Then please follow the prompt on screen (current selection will be in green) - then using your arrow keys please highlight the part of the app you would like to select and press the enter key.

**Areas you can enter are as follows:**
**Medication lists** - select to View, update or enter new medications onto the list. You can return to the main menu or close the app from here.
![Medication Lists](https://i.ibb.co/yQpQZ7k/Medicationlist.png)

**BMI calculator** - this area lets you input weight and height to calculate your BMI score - it will then output a colour coded message to show you your category. You can also return to the main menu from here or exit the app completely.

![BMI Calc](https://i.ibb.co/tm55sdy/BMIcalc.png)

**Route Definitions and Vitamins and supplements menu** - 
These are very similar - they output a list showing you definitions for medical routes, as well as most commonly taken supplements and vitamins, you can return to the main menu or exit app completely from here.

![Supplements and Vits](https://i.ibb.co/4K8BXVJ/Vitamin-list.png)

![Route Definitions](https://i.ibb.co/9N8YCLH/Route-Definitions.png)

**Mass and Volume Conversions**
These are two very handy unit conversion areas of the app, just highlight what units you're looking to convert, enter your number and it will output the amount in the selected unit. From either option, you can return to the main menu or again exit the app completely.

![Volume Conversion](https://i.ibb.co/ZdmBB5d/Volumeconversion.png)

![enter image description here](https://i.ibb.co/8PgdXF1/Massconversion.png)

If you would like to exit the app - please select this option in any menu, or alternatively please use (alt+f4)
**!!! NOTE DOING THIS WILL NOT SAVE MEDICATION TO YOUR LIST!!!**

again - thank you so much for choosing to use MediKait - its been an honor to help you out.



## References

Markdown Guide. (2020). Retrieved 18 December 2020, from https://www.markdownguide.org/

medication administration. (2020). Retrieved 18 December 2020, from https://medical-dictionary.thefreedictionary.com/medication+administration

Top Vitamins and Supplements 2020. (2020). Retrieved 18 December 2020, from https://www.mdlinx.com/article/top-vitamins-and-supplements-in-2020/1x034atzR5XSk5FHhFg0Mt

Windows 10 system requirements. (2020). Retrieved 18 December 2020, from https://support.microsoft.com/en-us/windows/windows-10-system-requirements-6d4e9a79-66bf-7950-467c-795cf0386715
