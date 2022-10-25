======================================================================
Real-Time Document Image Retrieval System ver. 1.1

Copyright (C) 2006 Tomohiro Nakai,
	Intelligent Media Processing Laboratory,
	Dept. of Computer Science and Intelligent Systems,
	Graduate School of Engineering,
	Osaka Prefecture University
======================================================================
This software is available only for research and evaluation. Use for
purposes other than those stated, such as sales or embedding in
commercial products are prohibited.

-----------------------------------------------------------------------
1. Introduction

Thank you for downloading this software.
This software realizes real-time retrieval of document images using a
web camera. Fast and accurate retrieval is realized by our novel image
retrieval method called LLAH (Locally Likely Arrangement Hashing).

-----------------------------------------------------------------------
2. Files

This software consists of following files.

readme.txt:	This file
readme_jp.txt:	Japanese version of this file
server.exe:	Server program
server.ini:	Configuration file of the server program
client.exe:	Client program
client.ini:	Configuration file of the client program
cv100.dll, cxcore100.dll, highgui100.dll:
		DLLs of OpenCV
config.dat, hash.dat, point.dat, disc.txt:
		Sample database
thumb:		Folder of thumbnail images of the sample database
pdf:		Folder of PDF files of the sample database
makedb.vbs:	Batch file to make database files
makedb.sh:	Bourne shell script file to make database files called
		by makedb.vbs
win-bash.exe:	win-bash: Windows port of the GNU bash distributed at
		http://win-bash.sourceforge.net/

-----------------------------------------------------------------------
3. Install

Extract the above files from the archive.

-----------------------------------------------------------------------
4. Uninstall

This software does not change the registry of your computer. You can
uninstall this software by simply removing the files.

-----------------------------------------------------------------------
5. Retrieval using the bundled sample data

(0). Print out PDF files in the "pdf" folder, which are used as query
   images for retrieval.

(1). Double-click "server.exe" to run the sever program. After you see
   "Ready" on the window, double-click "client.exe" to run the client
   program. Then, you will find the "captured image" window and the
   "thumbnail" window.

   Notices:
   [1] Each sever and client program monopolizes 1 CPU, so that 2 CPUs
   are required in total. If you want to use a PC with single CPU,
   read "7. Client/sever system" in the document.
   [2] The server program and the client program communicate each
   other via UDP. If you are asked whether you permit the
   communication of the programs, select "permit".
   [3] If more than one web cameras are connected to your computer,
   you may be asked to select the camera to use. You can select it by
   inputting the corresponding camera number.
   [4] If more than one resolution modes are supported by the web
   camera, you may be asked to select a mode to use. In this case,
   input the corresponding mode number.
      * 640x480 or higher resolution is recommended.
      * If you find the same mode lists twice, do not select the
	latter half because they are only for the still mode.
      * Resolution modes higher than 1280x1024 are not permitted in
        the program.

(2). By capturing a printed document in the database, you will find
   the thumbnail image of the corresponding page immediately in the
   "thumbnail" window. This is a search result. The red rectangle on
   the window indicates the estimated captured region.

(3). Feature points used for the retrieval is displayed by pressing
   "F" key on the "captured image" window. Feature points superimposed
   on the captured image appears by pressing "f" key. Pressing either
   "f" or "F" key twice gets you back to the normal mode.

(4). To quit the program, press "q" key when either the "Captured
   image" or "Thumbnail" windows is active.

-----------------------------------------------------------------------
6. Specifying the web camera and the resolution mode in advance

You can omit entering the web camera number and the resolution mode
number by modifying the configuration file "client.ini".

(A) As for the web camera, change the 2nd line of "client.ini" from

CamNum =

   to

CamNum = [Number of camera] .

Ex.) If the web camera number is "0":

CamNum = 0

Notice: If only one camera is connected, use "0".

(B) As for the resolution mode, change the 4th line of "client.ini"
   from

CamConfNum =

   to

CamConfNum = [Number of resolution mode] .

Ex.) If the resolution mode number is "13":

CamConfNum = 13

-----------------------------------------------------------------------
7. Client/sever system

This software employs the client-server system as shown in the
following figure.

             +------------------------+       +------------------------+
             |        client PC       |  LAN  |        Server PC       |
Web camera---| (Execute "client.exe") |=======| (Execute "server.exe") |
             |   [Thumbnail images]   |       |        [Database]      |
             +------------------------+       +------------------------+

You can execute both the client and server programs on a PC with more
than 2 CPUs. You can also execute each program on a separate PC along
the following procedure.

(1). Prepare the client program on the client PC. The client PC
   requires the following files and folders.

client.exe
client.ini
thumb
cv100.dll
cxcore100.dll
highgui100.dll

   They should be installed in the same folder.

(2). Prepare the server program on the server PC. The server PC
   requires the following files and folders.

server.exe
server.ini
config.dat
hash.dat
point.dat
disc.txt
cv100.dll
cxcore100.dll
highgui100.dll
makedb.vbs
makedb.sh
win-bash.exe

   They should be installed in the same folder.

(3). Modify the configuration files for communication.
   [a]Change the 10th line of "server.ini" from

ClientName = localhost

   to

ClientName = [Name of the client PC] .

Ex.) If the name of the client PC is "alpha":

ClientName = alpha

   [b]Change the 12th line of "server.ini" from

ServerName = localhost

   to

ServerName = [Name of the server PC] .

Ex.) If the name of the server PC is "beta":

ServerName = beta

   [c]Modify ClientName and ServerName of "client.ini" in the same
      way.

(4). Execute "server.exe" on the server PC and "client.exe" on the
   client PC in this order.

-----------------------------------------------------------------------
8. Rebuild the database using the script

In the above explanation, the bundled sample database is used. You can
also retrieve your PDF files by rebuilding the database and the
thumbnails.

Here, we explain how to rebuild database files from PDF files by using
the bundled scripts.
***********************************************************************
Notice: In the script file, ImageMagick (http://www.imagemagick.org/)
is used to convert PDF files to image files such as JPEG
files. Download and install ImageMagick in advance.
***********************************************************************

(1) Preparation of PDF files

Put your PDF files into the "pdf" folder of the server PC.

(2) Execution of the script

Double-click "makedb.vbs" on the server PC. After creation of database
files is completed, press "Enter" key to close the window.

(3) Relocation of thumbnail files

Thumbnail images are created in "thumb" folder of the server PC. If the
server PC and the client PC are different, relocate the thumbnail images
to "thumb" folder of the client PC. If the server PC and the client PC
is identical, this procedure is unnecessary.

**Configuration**
On the default, PDF files of the "pdf" folder are used. Database files
are stored in the current directory and thumbnail images are stored in
"thumb" folder. As for parameters of LLAH, n=7, m=6, the level of
quantization is 15, and affine invariants are used. To customize these
settings, edit "makedb.sh".

When the output directory of database files is changed, you must
change "DatabaseDir" of "server.ini". In the same way, you must change
"ThumbDir" of "client.ini" when the output directory of thumbnail
images is changed.

-----------------------------------------------------------------------
9. Rebuild the database manually

Here, we explain how to make database files from your PDF files
without the script.

(1) Conversion of PDF files to image files.

Firstly, convert PDF files to image files using a software such as
ImageMagick (http://www.imagemagick.org/). When you convert PDF files
to image files, specify the resolution as 200 dpi and format as one of
BMP/DIB/JPEG/JPG/JPE/PNG/PBM/PGM/PPM/SR/RAS/TIFF/TIF.

(2) Making files for the database

Use the command prompt to make the database files as follows.
   1. Move to directory where the server program is located.
   2. Input following command.

> server.exe -c [Directory of the images] [Suffix of the images](-h
[Output directory] -r/-a/-s -n [Parameter n] -m [Parameter m] -d [Level
of quantization])

  ==Options of server.exe==
   -h [Output directory]:
	Specify the output directory for created database files. If
	omitted, database files are created in the current directory.

   -r/-a/-s:
	Specify the type of invariant used in feature calculation.
	"-r", "-a", and "-s" mean the cross-ratio (projective
	invariant), an affine invariant, and "-s" a similarity
	invariant, respectively. (Default: the affine invariant)

   -n [Parameter n]:
	Specify the parameter n of LLAH. (Default: 7)

   -m [Parameter m]:
	Specify the parameter m of LLAH. (Default: 6)
	Notice: In the case of the cross-ratio, n and m must meet the
	condition n>=m>=5. In the similar way, n>=m>=4 is required for
	the affine invariant, and n>=m>=3 for the similarity
	invariant.

   -d [Level of quantization]:
	Specify the level of quantization. (Default: 15)

When the process terminates successfully, hash.dat, point.dat,
config.dat, and disc.txt are created in the output directory.

(3) Making thumbnail images

Make thumbnail images of registered document images. Thumbnail images
are used for confirmation of retrieval results in the client program.
Note that this can be omitted.

Thumbnail images are created by scaling down the registered document
images with an image processing software (e.g. ImageMagick). Note that
file names of thumbnail images must match those of registered document
images except for suffix. Allocate thumbnail images to a folder which
can be accessed by the client PC.

(4) Configuration

Specify the location of the database files and the thumbnail
images. As for server side, change "DatabaseDir" of "server.ini" to
the folder of the database files. As for client side, change
"ThumbDir" and "ThumbSuffix" of "client.ini" to the folder of the
thumbnail images and suffix of them, respectively.

-----------------------------------------------------------------------
10. Configurable items of the configuration files

(1) server.ini

 TCPPort: Port number used in initial configuration and communication of
data when TCP is specified in "Protocol".
 Protocol: Communication protocol. Specify "TCP" or "UDP".
 PointPort: Port number used for communication from the client to the
server when UDP is specified in "Protocol".
 ResultPort: Port number used for communication from the server to the
client when UDP is specified in "Protocol".
 ClientName: Name of the client. When the client and the server are
identical, specify "localhost".
 ServerName: Name of the server. When the client and the server are
identical, specify "localhost".

(2) client.ini

 CamNum: Number of the web camera.
 CamConfNum: Number of the resolution mode of the web camera.
 TCPPort: Port number used in initial configuration and communication of
data when TCP is specified in "Protocol".
 Protocol: Communication protocol. Specify "TCP" or "UDP".
 PointPort: Port number used for communication from the client to the
server when UDP is specified in "Protocol".
 ResultPort: Port number used for communication from the server to the
client when UDP is specified in "Protocol".
 ClientName: Name of the client. When the client and the server are
identical, specify "localhost".
 ServerName: Name of the server. When the client and the server are
identical, specify "localhost".
 ThumbDir: Directory of thumbnail images.
 ThumbSuffix: Suffix of thumbnail images.
 ThumbScale: Scaling factor of the thumbnail images to the original
200dpi images. It is irrelevant to the size of the thumbnail images.

-----------------------------------------------------------------------
11. Change log

ver.1.0(2006/12)
- Initial release.

ver.1.1(2007/1)
- Script files for making database files are bundled.
- English document is bundled.

-----------------------------------------------------------------------
12. Acknowledgment

This software utilizes OpenCV
(http://www.intel.com/technology/computing/opencv/).

	--- * --- * --- * --- * --- * ---
Intel License Agreement For Open Source Computer Vision Library

Copyright (C) 2000, Intel Corporation, all rights reserved. Third party
copyrights are property of their respective owners.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are
met:
 Redistribution's of source code must retain the above copyright notice,
this list of conditions and the following disclaimer.

 Redistribution's in binary form must reproduce the above copyright
notice, this list of conditions and the following disclaimer in the
documentation and/or other materials provided with the distribution.

 The name of Intel Corporation may not be used to endorse or promote
products derived from this software without specific prior written
permission.


This software is provided by the copyright holders and contributors "as
is" and any express or implied warranties, including, but not limited
to, the implied warranties of merchantability and fitness for a
particular purpose are disclaimed. In no event shall Intel or
contributors be liable for any direct, indirect, incidental, special,
exemplary, or consequential damages (including, but not limited to,
procurement of substitute goods or services; loss of use, data, or
profits; or business interruption) however caused and on any theory of
liability, whether in contract, strict liability, or tort (including
negligence or otherwise) arising in any way out of the use of this
software, even if advised of the possibility of such damage.
	--- * --- * --- * --- * --- * ---

-----------------------------------------------------------------------
13. Patent

Title: Document/image searching method and program,
       and document/image recording and searching device
Application number: PCT/JP2006/302669
Publication number: WO2006/092957

-----------------------------------------------------------------------
14. Awards

- FIT2005 Young Researcher Award
- MIRU2006 Demo Session Award
- 2006 President's Award of Osaka Prefecture University

-----------------------------------------------------------------------
15. Reference

T.Nakai, K.Kise and M.Iwamura, "Use of affine invariants in locally
likely arrangement hashing for camera-based document image retrieval,"
DAS 2006, pp.541-552, 2006.

-----------------------------------------------------------------------
16. Contact

We would appreciate for informing us of any questions, comments,
requests or bug reports you may have.

LLAH@m.cs.osakafu-u.ac.jp

http://www.m.cs.osakafu-u.ac.jp/LLAH/

