# Automation-of-on-screen-keyboard

![openQA](https://pbs.twimg.com/profile_images/854994974831759360/HU8Qj4wC_400x400.jpg)

[![Build Status](https://travis-ci.org/doge/wow.svg)](https://github.com/AbdulRehmanQuadri/Automation-of-on-screen-keyboard)
[![Coverage Status](http://img.shields.io/coveralls/doge/wow.svg)](https://github.com/AbdulRehmanQuadri/Automation-of-on-screen-keyboard)
[![Badges](http://img.shields.io/:badges-7/7-ff6799.svg)](https://github.com/badges/badgerbadgerbadger)

# Table of Contents  
- [Introduction](#introduction)
- [Project Brief](#projectbrief)
- [Requirements](#requirements)
- [Installation](#installation)
- [Getting started](#getting_started)
- [Contributing](#contributing)
- [Support](#support)
     
<a name="Support"/>     
<a name="Introduction"/>
<a name="ProjectBrief"/>
<a name="Requirements"/>
<a name="installation"/>
<a name="Getting_started"/>
<a name="Contributing"/>

# Introduction

   **1. openQA:**

>openQA is an automated test tool for operating systems. OpenQA makes it possible to test the whole installation process of an operating system. It uses virtual machines to reproduce the process, check the output (both serial console and screen) in every step and send the necessary keystrokes and commands to proceed to the next.
You can find more about the OpenQA here: http://open.qa/documentation

   **2. On Screen Keyboard:**

>On screen keyboard is a virtual keyboard that comes by default in each fedora release. It is under the gnome-shell component. The working of the screen keyboard is same as the actual hardware keyboard. On screen keyboard can be helpful in many situations such as when some keys of the hardware keyboard stop functioning, security, etc.

# ProjectBrief

This projects includes the automated test cases for On Screen Keyboard for Fedora for the following locale:
1. English
2. Japanese
3. Russian

## Screen keyboard brief
- A screen keyboard is a software component that allows the input of characters without the need for physical keys.The interaction with the virtual keyboard happens mostly via a touchscreen interface, but can also take place in a different form in virtual or augmented reality.

- On a desktop computer, a virtual keyboard might provide an alternative input mechanism for users with disabilities who cannot use a conventional keyboard, or for bi- or multi-lingual users who switch frequently between different character sets or alphabets, which may be confusing over time. Although hardware keyboards are available with dual keyboard layouts (e.g. Cyrillic/Latin letters in various national layouts), the on-screen keyboard provides a handy substitute while working at different stations or on laptops, which seldom come with dual layouts.

# Requirements

1. Operating System: Any RPM or Debian based
2. RAM: Minimum. 8GB
3. Live Image of Fedora 28: You can get it from https://getfedora.org/workstation/download/
or you can also use the qcow2 image format
4. Account on openSuse(Not necessary if you just want to observe the working of already created tests)

# Installation 
 
- Follow the installation guide from here to install openQA to your system 
https://github.com/os-autoinst/openQA/blob/master/docs/Installing.asciidoc​ or you can 
refer https://www.youtube.com/watch?v=EM3XmaQXcLg&t=3187s&pbjreload=10 

# Getting_started

   **File usage**
   - main.pm: Entry point: All tests are loaded here.
   - tests: The directory contains all the test cases.
   - needles: This directory will contain all the needles(PNG and JSON format file) which will be generated when the user perform testing by marking required area.

   **Execution** 
   - Execution can be started from command line using following command:
   ``` 
      $ systemctl start openqa@workerN
   ```
   N is the worker number(starting from 1)

1. Open the terminal, start the worker and type:
```
$ openqa-client isos post ISO=my_iso.iso DISTRI=my_distri FLAVOR=sweet\ARCH=my_arch VERSION=42 BUILD=1234\_DEPRIORITIZEBUILD=1 _DEPRIORITIZE_LIMIT=120 \
```
2. Open the web browser and direct to the *localhost* and their you will find the test which will be executed in virtual machine.
   Note: The value assigned to all the attributes is in lowercase.  
   
3. Error details
   - If any must match areas doesn’t match or if their is any syntactical or logical error in main.pm file or any other file in the tests directory will result in the failure of test.To trace the error just head towards the autoinst file autoinst-log.txt which is present under Logs.
   - If you get “cannot create/update needles” error while creating updating needles make sure that the needles directory is having the appropriate permission.
   - In order to manipulate the needles user needs to be logged in.
   
**Executing qcow2 image format**

Open the terminal, start the worker and type:
```
$ /usr/share/openqa/script/client jobs post DISTRI=onscreenkeyboardonqcow2 VERSION=28 ARCH=x86_64 TEST=fedora MACHINE=Fedora BOOTFROM=c HDD_1=00000453-disk_Fedora28_64bit.qcow2  IMAGETYPE=qcow2 DESKTOP=gnome QEMUVGA=std QEMUCPUS=2 QEMU_VIRTIO_RNG=1 LIVE=0 QEMURAM=2560 TEST_TARGET=qcow2
```
# Contributing 
 
Your feedback is precious to us: Please let us know how we can improve screen keyboard. 
Fork or clone the project and send a Pull request and there you go, start exploring. 

# Support

You can reach out to me at following platforms
- LinkedIn https://www.linkedin.com/in/abdulrehman69/
- Facebook https://www.facebook.com/abdulrehman.quadri.777


