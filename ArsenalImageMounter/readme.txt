Arsenal Image Mounter
Many Windows®-based disk image mounting solutions mount the contents of disk images as shares or partitions, rather than “complete” (a/k/a “physical” or “real”) disks, which limits their usefulness to digital forensics practitioners and others. Arsenal Image Mounter mounts the contents of disk images as complete disks in Windows. As far as Windows is concerned, the contents of disk images mounted by Arsenal Image Mounter are real SCSI disks, allowing users to benefit from disk-specific features like integration with Disk Manager, access to Volume Shadow Copies, and more.

End Users: If Arsenal Image Mounter is run without a license, it will run in "Free Mode" and provide core functionality. If Arsenal Image Mounter is licensed, it will run in "Professional Mode” with full functionality enabled.

Developers: Arsenal Image Mounter source code, APIs, and executables are available for royalty-free use in open source projects. Commercial projects (and other projects not licensed under an AGPL v3 compatible license) that would like to use Arsenal Image Mounter source code, APIs, and/or executables must contact Arsenal to obtain alternative licensing.

Simple feature list:
[Free Mode] Mount raw, forensic, and virtual machine disk images as “real” disks on Windows
[Free Mode] Temporary write support with replayable delta files for all supported disk image formats
[Free Mode] Virtually mount optical images
[Free Mode] RAM disk creation
[Free Mode] CLI executables
[Free Mode] MBR injection, “fake” disk signatures, removable disk emulation, and much more

[Professional Mode] Effortlessly launch (and often login to) virtual machines
[Professional Mode] Volume Shadow Copy mounting with optional Windows NTFS driver bypass
[Professional Mode] Windows file system driver bypass support for disk image mounting
[Professional Mode] Virtually mount archives and directories

Detailed feature descriptions (Mount options):
Read only disk device - Mount the disk image as a read-only disk device. No write operations will be allowed.

Write temporary disk device - Mount the disk image as a writable disk device. Modifications will be written to a write-overlay differencing file and the original disk image will not be changed. Sometimes referred to as write-overlay or write-copy mode. (Note - required for launching virtual machines.)

Write original disk device - Mount the disk image as a writable disk device. Modifications will be written to the disk image. (Caution - this option modifies the original disk image.)

Windows file system driver bypass - Mount the disk image as a virtual read-only file system, bypassing Windows file system drivers and using DiscUtils file system drivers. This mount option bypasses file system security and exposes NTFS metafiles. May also be useful to read files from images containing corrupted file systems.

Fake disk signature - Report a random disk signature to Windows. Useful if the disk image contains a zeroed-out disk signature or you are attempting to mount a duplicate disk signature. (Note - requires a valid MBR and partition table. Not compatible with GPT partitions or images without a partition table.)

Create “removable” disk device - Emulate the attachment of a USB thumb drive, which may facilitate the successful mounting of images containing partitions rather than complete disks or images without partition tables. (Caution - see relevant FAQ on our website for caveats.)

Detailed feature descriptions (Main screen and dropdown menus):
Save as new image file - Save a “physically” mounted object such as a disk image, including deltas, to a new raw (dd), vhd, vhdx, vdi, or vmdk file. Also supports saving virtually mounted objects such as archives and VSC contents to iso files. Some users may leverage this feature to effectively convert from one disk image (or other source) format to another, but please note that the source is saved as it currently appears to Windows - including (for example) injected MBRs, fake disk signatures, and other deltas.

Mount VSCs - Quickly mount all Volume Shadow Copies (VSCs) within a disk image with the option of either using the Windows NTFS driver or the DiscUtils NTFS driver (bypassing file system security and exposing NTFS metafiles) to parse VSC contents.

Launch VM – Launch a Hyper-V virtual machine using the selected AIM-mounted disk. The disk image should be mounted in write temporary mode before using this feature, which is designed to make booting the contents of a disk image in a virtual machine more efficient, reliable, and useful than other methods. The virtual machine is created with 2 CPUs, half of free host RAM (maximum of 4GB), two network adapters (not connected by default), one DVD-ROM (without any attached image) and the AIM-mounted disk as primary IDE HD. A small application, AIM Virtual Machine Tools, is injected into virtual machines running Windows and is available via the “Ease of Access” icon on login screen. This application will optionally reset the password of each active user account (also adding them to the administrators group) and can open an administrative command prompt from the login screen. The Launch VM feature currently works on Windows 8/8.1/10 (and Server 2012/2012 R2/2016) x64 and requires that Hyper-V role be running on physical hardware, not within a virtual machine.

Mount directory – Select a directory to mount as a virtual read-only drive (virtual CD-ROM). Includes “Boot image” option to create a bootable CD/DVD or for use booting a virtual machine.

Mount image / Archives –  Select zip, cab, wim, and tar (raw or gzip or bzip2 compressed) files to mount as virtual read-only drives (virtual CD-ROMs). Note that wim files often contain more than one image, so more than one virtual drive may appear. 

Detailed feature descriptions (CLI executables):
aim_cli.exe - Arsenal Image Mounter CLI is a .NET 4.0 tool that provides most of Arsenal Image Mounter’s functionality. The command “AIM_CLI /?” displays basic syntax for using Arsenal Image Mounter CLI.

aim_ll.exe - Arsenal Image Mounter Low Level is a tool that does not use .NET and provides more “low level” access to the Arsenal Image Mounter driver. The command “AIM_LL /?” displays basic syntax for using Arsenal Image Mounter Low Level.

