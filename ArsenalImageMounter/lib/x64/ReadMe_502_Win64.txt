WIN64 DNA.DLL v5.02


                   software_DNA DLL Package
                         
                  Revision Version 5.0.2.731
                        October-10-2016

           softWORKZ Innovation Inc. All Rights Reserved.


-----------
Description - 64 Bit Version
-----------
The software_DNA DLL Package contains the software_DNA Client and the Interface files required for several programming languages (including LAZARUS ,Microsoft Visual Studio 2010  C++, VB.NET and Sun Java). The Interface files have been fully tested and verified by softWORKZ. 

The DNA.DLL Win64 version must be used with 64-bit applications only. The resulting 64-bit application can be run only on 64-bit OS's.

For 32-bit applications, use the DNA.DLL Win32 version.


-------
Install - DNA.DLL
-------
The DNA.DLL file must be packaged with your software application and MUST be installed in the same directory as your software application.

---------
MD5 Hash Code
---------

We highly recommend that you authenticate the DNA Client (DNA.DLL) by comparing MD5 of the DNA.DLL with the expected MD5 value for the version of the DLL you are using.

The MD5 Hash Code is used by your application to verify the authenticity of the DNA.DLL file. Any discrepancy would indicate a wrong version of the DNA.DLL file is being used by the user, or that the user has attempted to change or replace the DNA.DLL file in some way.
You should embed the MD5 Hash Code in your application in an encrypted form and use it to authenticate the DNA.DLL everything time you use the software_DNA API calls.

MD5 Hash Code for DNA 5.0.2 Build 731 : 5A304C147FCA8FD97D41CFDD149B92C7

Some IDE’s (like .NET) have built-in MD5 functions (ex: MD5CryptoServiceProvider Class ) and are used by MD5 functions included in the DNA_INT file for your convenience.

-------
Install - coding environment
-------
The following files need to be added to your software project to use the API calls from your software:

        * LAZARUS			DNA.DLL
					DNA_INT.pas

        * Microsoft 
	  Visual Studio 2010 C++	DNA.DLL		(library must be dynamically loaded before API use)
					DNA_INT.h
					DNA_INT.CPP

        * Microsoft
	  Visual Studio 2010 VB.NET	DNA.DLL
					DNA_INT.vb

        * Microsoft
	  Visual Studio 2010 C#.NET	DNA.DLL
					DNA_INT.cs

        * Sun Java 			DNA.DLL
					DNAINT.java

					(see install notes below)

-------------------------------------------------
Visual Studio - Installing software_DNA into your Project
-------------------------------------------------

The following is specific to Visual Studio 2010 / 2015, but will likely work for other IDE's. 

Always use the latest DNA Client and DNA_INT files available for download in the DNA Control Panel.
Do not use the files included in the Code Sample as they may not be the latest versions.

To include software_DNA into your Visual Studio Project:

	1)- in the "root" folder of your Project, copy the 32-bit or 64-bit DNA.DLL and "include" in the project
	2)- in the "root" folder of your Project, copy the DNA_INT and "include" in the project
	3)- in every source file that uses a DNA API call ensure you “include” or reference the DNA_INT file
	    as per the programming language
	4)- after a 1st "Build", copy the DNA.DLL file in the "Debug" and/or "Release" folders created during the build
		- for 32-bit : bin/x86/Debug or bin/x86/Release
		- for 64-bit : bin/i64/Debug or bin/i64/Release

-------------------------------------------------
Visual Studio - Settings for 32-bit or 64-bit
-------------------------------------------------

To be able to run a 32-bit or 64-bit application, you need to use the correct version of the DNA.DLL
and set your Build settings correctly as follows :

	- View  “Project -> Project Options”

	- For the "Solutions Platform", select "x86" or "i64" (you may need to create this configuration
	  via the Configuration Manager	
	- in your application (Protection.cs in the code sample), use the correct MD5 for the DLL

	- copy the correct DNA.DLL to your Project's root, DEBUG and RELEASE folders
		- for 32-bit : bin/x86/Debug or bin/x86/Release
		- for 64-bit : bin/i64/Debug or bin/i64/Release


-------------------------------------------------
JAVA Eclipse - Installing software_DNA into your Project
-------------------------------------------------

The following is specific to the Eclipse IDE, but will likely work for other IDE's.

	1)- in the ".src" folder of your Project, copy the DNA.DLL 
	2)- in the ".src" folder, create the sub-directories "com/softworkz/dna"
	3)- copy the DNAINT.java file into the "com/softworkz/dna" folder such that the path of the DNAINT file is
		com/softworkz/dna/DNAINT.java
	4)- in your application's main source file include in the import section:
		import com.softworkz.dna.*;
	5)- in your application's main source file, at the beggining of your code, include:
		// create instance of the DNAINT class
		DNAINT di = new DNAINT();
	6)- your first API Call should be the DNA_SetCDMPathName() API to set the path for the CDM License
	    file to a read-write directory (typically C:\Users\Public )

-------------------------------------------------
LAZARUS - Installing software_DNA into your Project
-------------------------------------------------

The following is specific to the Lazarus IDE, but will likely work for other IDE's. 

Always use the latest DNA Client  and DNAINT files available for download in the DNA Control Panel.
Do not use the files included in the Code Sample as they may not be the latest versions.

To include software_DNA into your Lazarus Project:

	1)- in the "root" folder of your Project, copy the DNA.DLL and "include" in the project
	2)- in the "root" folder of your Project, copy the DNAINT.pas file and "include" in the project
	3)- in your application's main source file include in the "uses" section:
		dna_int

-------------------------------------------------
LAZARUS - Architecture Settings for 32-bit or 64-bit
-------------------------------------------------

To be able to run a 32-bit or 64-bit application, you need to use the correct version of the DNA Client (32-bit or 64-bit) and set your Build settings correctly as follows :

	- View  “Project -> Project Options”
	- Under “Compiler Options -> Config and Target”

	- for 64-bit, 
		- Target CPU Family = X86-64

	- for 32-bit,
		- Target CPU Family = i386


------------
Documentation and code samples
------------
Complete documentation for integrating the software_DNA protection solution into your application and code samples in several programming languages can be found in the DNA Control Panel, Documentation and Samples section, at www.softworkz.com

Several sample projects are also included in this ZIP Package in the "Samples" folder.

Available documentation includes:

	* software_DNA API Developer Guide 
	* software_DNA API Reference Guide
	* software_DNA Sample Code Guide


-----------------
Technical support
-----------------
Report errors and problems to support@softworkz.com
Please include the following in your message:

	* Version of the DNA.DLL
	* Windows version. Also clarify whether your Windows:
		* Includes service packs and other fixes installed
		* US or international
		* OEM or not
	* Computer hardware: CPU class, memory and hard drive space available.
	* Programming language used
	* Description of your problem (provide as much information as possible)


-------
Contact
-------
Homepage: http://www.softworkz.com
Email   : support@softworkz.com


Thanks for choosing softWORKZ.
