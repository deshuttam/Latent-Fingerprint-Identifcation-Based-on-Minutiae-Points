-----------------------------------------------------------------------
���A���^�C�������摜�����V�X�e�� ver 1.1

Copyright (C) 2006 Tomohiro Nakai,
	Intelligent Media Processing Laboratory,
	Dept. of Computer Science and Intelligent Systems,
	Graduate School of Engineering,
	Osaka Prefecture University
-----------------------------------------------------------------------
�@���̃\�t�g�E�F�A�͌�����]���̖ړI�Ɍ��藘�p�ł��A���i�ւ̑g�ݍ��݁C
�̔��ȂǑ��̖ړI�ł͗��p�ł��܂���B
-----------------------------------------------------------------------
1. �͂��߂�

�@���̂��т͖{�V�X�e�����_�E�����[�h���Ă��������C���ɂ��肪�Ƃ��������܂��D
�@�{�V�X�e���́CWeb�J�����ŎB�e���ꂽ�p���̈�������̉摜����͂Ƃ��C��
�����镶���摜���f�[�^�x�[�X���烊�A���^�C���Ō���������̂ł��D
�@�{�V�X�e���ł́C��X�̒�Ă��Ă��鍂���摜�����@�uLLAH(Locally Likely
Arrangement Hashing)�v��p���邱�ƂŁC�����������x�Ȍ������������Ă��܂��D

-----------------------------------------------------------------------
2. �t�@�C���\��

�@�{�V�X�e���͈ȉ��̃t�@�C���ō\������Ă��܂��D

readme_jp.txt : ���̃t�@�C��
readme.txt : ���̃t�@�C���̉p���
server.exe : �T�[�o�v���O����
server.ini : �T�[�o���ݒ�t�@�C��
client.exe : �N���C�A���g�v���O����
client.ini : �N���C�A���g���ݒ�t�@�C��
cv100.dll, cxcore100.dll, highgui100.dll : OpenCV��DLL
config.dat, hash.dat, point.dat, disc.txt : �T���v���f�[�^�x�[�X
thumb : �T���v���f�[�^�x�[�X�p�̃T���l�C���摜�̃t�H���_
pdf : �T���v���f�[�^�x�[�X�p��PDF�t�@�C���̃t�H���_
makedb.vbs : �f�[�^�x�[�X�쐬�p�o�b�`�t�@�C��
makedb.sh : �f�[�^�x�[�X�쐬�p�X�N���v�g�t�@�C��
win-bash.exe : win-bash�ibash��Windows�Łj

-----------------------------------------------------------------------
3. �C���X�g�[��
�@���k�t�@�C����C�ӂ̃A�[�J�C�o�ŉ𓀂��ĉ������D

-----------------------------------------------------------------------
4. �A���C���X�g�[��
�@�{�V�X�e���̓��W�X�g�������g�p���܂���D�C���X�g�[�������t�@�C�����폜
����΃A���C���X�g�[���͊������܂��D

-----------------------------------------------------------------------
5. �T���v���f�[�^�ł̎��s

�@���炩���߁C�����ΏۂƂ���pdf�t�H���_��PDF�t�@�C����������Ă����ĉ������D

�@�܂��Cserver.exe���_�u���N���b�N���ăT�[�o�v���O���������s���܂��D
�@��ʂɁuReady�v�ƕ\�����ꂽ��Cclient.exe���_�u���N���b�N���ăN���C�A
���g�v���O���������s���ĉ������D

���T�[�o�v���O�����ƃN���C�A���g�v���O������UDP�ɂ��ʐM���s���̂ŁC�u
���b�N���邩�ǂ����u�˂���ꍇ������܂��D�u�u���b�N����������v��I��
���Ă��������D

��Web�J�����������ڑ�����Ă���ꍇ�C�g�p����J������I�������ʂ��\����
��܂��D�L�[�{�[�h�ŊY������ԍ�����͂��CEnter�L�[�������ĉ������D

��Web�J�����������̉𑜓x���[�h���T�|�[�g���Ă���ꍇ�C�g�p���郂�[�h��I
�������ʂ��\������܂��D�L�[�{�[�h�ŊY������ԍ�����͂��CEnter�L�[��
�����ĉ������D
�i��1�F640x480���x�ȏ�̉𑜓x�𐄏��j
�i��2�F�㔼�̃��[�h�͐��������삵�Ȃ��ꍇ������܂��j
�i��3�F1280x1024�𒴂���𑜓x�ł͓��삵�Ȃ��悤�������Ă��܂��j

�@Capture�E�B���h�E��Thumb�E�B���h�E���o�����܂��DCapture�E�B���h�E�ɂ�
Web�J�����ŃL���v�`�������摜���\������܂��DWeb�J�����ň�������������B
�e����ƁC�L���v�`�����ꂽ�摜�Ɋ�Â��Č������s���C�������ʂɑΉ�����
�T���l�C���摜��Thumb�E�B���h�E�ɕ\������܂��D�܂��C�L���v�`�����ꂽ��
���͈̔͂��Ԃ��g�ŕ\������܂��D

�@Capture�E�B���h�E��������Thumb�E�B���h�E���A�N�e�B�u�ȏ�ԂŁCf�L�[��
�����Ɠ����_���[�h�ɂȂ�C�����ɗp���Ă�������_��Capture�E�B���h�E�ɕ\
������܂��D������xf�L�[�������ƌ��ɖ߂�܂��D

�@Capture�E�B���h�E��������Thumb�E�B���h�E���A�N�e�B�u�ȏ�ԂŁCq�L�[��
�����ƏI�����܂��D�I�����Ȃ��ꍇ�́C�R�}���h�v�����v�g��Ctrl�L�[��������
����c�L�[�������ďI�������Ă��������D

-----------------------------------------------------------------------
6. �g�p����J��������щ𑜓x���[�h�̎��O�w��

�@�ݒ�t�@�C��client.ini��ҏW���邱�ƂŁC�g�p����J��������щ𑜓x���[
�h�����O�Ɏw�肷�邱�Ƃ��ł��܂��D

�@�J�����ɂ��ẮCclient.ini��2�s�ڂ�

CamNum =

�@��

CamNum = [�J�����̔ԍ�]

�@�Ƃ��ĉ������D�g�p����J�����̔ԍ���0�Ȃ�΁C

CamNum = 0

�@�ɂȂ�܂��D�J������1�����ڑ�����Ă��Ȃ��ꍇ��0�Ƃ��ĉ������D
�@�𑜓x���[�h�ɂ��ẮCclient.ini��4�s�ڂ�

CamConfNum =

�@��

CamConfNum = [�𑜓x���[�h�̔ԍ�]

�@�Ƃ��ĉ������D�g�p����𑜓x���[�h�̔ԍ���13�Ȃ�΁C

CamConfNum = 13

�@�ɂȂ�܂��D

-----------------------------------------------------------------------
7. �N���C�A���g�E�T�[�o�V�X�e���ł̎��s

�@�N���C�A���g�v���O�����ƃT�[�o�v���O������ʂ̃}�V���Ŏ��s���C���񏈗�
�ɂ�鍂������}�邱�Ƃ��ł��܂��D���}�̂悤�ɁCWeb�J�����̐ڑ����ꂽ�N
���C�A���g�}�V���ƃT�[�o�}�V����LAN�Őڑ�����܂��D

            +--------------------+       +--------------------+
            | �N���C�A���g�}�V�� |  LAN  |    �T�[�o�}�V��    |
Web�J����---|�iclient.exe�����s�j|=======|�iserver.exe�����s�j|
            |  [�T���l�C���摜]  |       |   [�f�[�^�x�[�X]   |
            +--------------------+       +--------------------+

�@�N���C�A���g�}�V���ɂ́C�ȉ��̃t�@�C���ƃt�H���_�𓯈�̃t�H���_�ɒu��
�܂��D

client.exe
client.ini
thumb
cv100.dll
cxcore100.dll
highgui100.dll

�@�T�[�o�}�V���ɂ́C�ȉ��̃t�@�C���𓯈�̃t�H���_�ɒu���܂��D

server.exe
server.ini
config.dat
hash.dat
point.dat
disc.txt
cv100.dll
cxcore100.dll
highgui100.dll
pdf
makedb.vbs
makedb.sh
win-bash.exe

�@���ɁC�ʐM�̂��߂ɐݒ�t�@�C�������������܂��D
�@�܂��Cserver.ini��10�s�ڂ�

ClientName = localhost

�@��

ClientName = [�N���C�A���g�̃}�V����]

�@�Ƃ��ĉ������D�N���C�A���g�̃}�V������alpha�Ȃ�΁C

ClientName = alpha

�@�ɂȂ�܂��D���ɁCserver.ini��12�s�ڂ�

ServerName = localhost

�@��

ServerName = [�T�[�o�̃}�V����]

�@�Ƃ��ĉ������D�T�[�o�̃}�V������beta�Ȃ�΁C

ServerName = beta

�@�ɂȂ�܂��D

�@�N���C�A���g����client.ini�ɂ��Ă����l��ClientName��ServerName���C��
���ĉ������D

�@�ȏ�̏C��������������C�T�[�o�}�V����server.exe���C�N���C�A���g�}�V��
��client.exe�����ɋN������Ε��񏈗����s���܂��D

-----------------------------------------------------------------------
8. �����f�[�^�̕ύX�i�X�N���v�g�̎g�p�j

�@�����܂ł̐����ł́C���炩���ߗp�ӂ��ꂽ�T���v���f�[�^�Ō������s���Ă�
�܂����D�{�V�X�e���́C���[�U�̗p�ӂ����C�ӂ̉p��PDF�������Ώۂɂ��邱��
���ł��܂��D

�@�����ł́C�X�N���v�g���g�p���Ď����I�Ƀf�[�^�x�[�X���쐬������@�ɂ�
���Đ������܂��D�X�N���v�g��bash�̌`���ŋL�q����Ă���C��������win-bash
�ihttp://win-bash.sourceforge.net/�j�ɂ���Ď��s����܂��D

***********************************************************************
���FPDF�t�@�C�����摜�t�@�C���ɕϊ����邽�߂�ImageMagick
(http://www.imagemagick.org/script/index.php)���g�p���܂��̂ŁC
���炩���߃T�[�o�}�V���ɃC���X�g�[�����Ă����ĉ������D
***********************************************************************

8.1 PDF�t�@�C���̗p��

�@�f�[�^�x�[�X�ɓo�^����PDF�t�@�C�����C�T�[�o����pdf�t�H���_�ɓ���܂��D

8.2 �X�N���v�g�̎��s

�@�T�[�o����makedb.vbs���_�u���N���b�N���ċN�����܂��DFinished�ƕ\����
�ꂽ��f�[�^�x�[�X�̍쐬�͊����ł��DEnter�L�[�������ăE�B���h�E�����
�������D

8.3 �T���l�C���摜�̈ړ�

�@�T���l�C���摜�̓T�[�o����thumb�t�H���_�ɍ쐬����܂��D�T�[�o�}�V����
�N���C�A���g�}�V�����قȂ�ꍇ�C�쐬���ꂽ�T���l�C���摜���N���C�A���g
����thumb�t�H���_�Ɉړ����ĉ������D�T�[�o�}�V���ƃN���C�A���g�}�V������
��̂��̂ł���΂��̎菇�͕K�v����܂���D

8.3 �ݒ�̕ύX

�@�f�t�H���g�ł�pdf�t�H���_��PDF�t�@�C����p���C�f�[�^�x�[�X�t�@�C����
�J�����g�f�B���N�g���ɁC�T���l�C���摜��thumb�t�H���_�ɕۑ����܂��DLLAH
�̃p�����[�^�ɂ��ẮCn=7�Cm=6�C���U�����x������15�ƂȂ�C�A�t�B���s
�ϗʂ��p�����܂��D

�@�����̐ݒ��ύX����ɂ́Cmakedb.sh��ҏW���ĉ������D

�@�Ȃ��C�f�[�^�x�[�X�̏o�͐��ύX�����ꍇ�C���s���Ƀf�[�^�x�[�X�t�@�C
���̏ꏊ���w�肷��K�v������܂��Dserver.ini��DatabaseDir���C�����ĉ���
���D���l�ɁC�T���l�C���摜�̃f�B���N�g����ύX�����ꍇ�́Cclient.ini��
ThumbDir���C�����ĉ������D

-----------------------------------------------------------------------
9. �����f�[�^�̕ύX�i�蓮�j

�@�����ł́C�X�N���v�g���g�p�����Ɏ蓮�Ńf�[�^�x�[�X���쐬������@�ɂ�
���Đ������܂��D

9.1 PDF�̉摜�ւ̕ϊ�

�@�p��PDF�t�@�C�����摜�f�[�^�ɕϊ����܂��D�ϊ��ɂ�ImageMagick(http:
//www.imagemagick.org/script/index.php)����p���ĉ������D�Ȃ��CPDF�t�@�C
�����摜�ɕϊ�����ꍇ�́C�𑜓x��200dpi�C�摜�t�H�[�}�b�g��
BMP/DIB/JPEG/JPG/JPE/PNG/PBM/PGM/PPM/SR/RAS/TIFF/TIF�̂����ꂩ�Ƃ��ĉ������D

9.2 �f�[�^�x�[�X�t�@�C���̍쐬

�@�f�[�^�x�[�X�t�@�C���̍쐬�ɂ̓R�}���h�v�����v�g��p���܂��D�T�[�o�v��
�O�����̂���f�B���N�g���Ɉړ����āC�ȉ��̃R�}���h����͂��ĉ������D

> server.exe -c [�����摜�̃f�B���N�g��] [�����摜�t�@�C���̊g���q](-h
[�o�̓f�B���N�g��] -r/-a/-s -n [�p�����[�^n] -m [�p�����[�^m] -d [���U��
���x����])

�E�I�v�V����

�@-h [�o�̓f�B���N�g��]: �f�[�^�x�[�X�t�@�C���̏o�̓f�B���N�g�����w�肵
�܂��D�ȗ������ꍇ�C�J�����g�f�B���N�g���ɏo�͂���܂��D

�@-r/-a/-s : �����ʌv�Z�ɗp����s�ϗʂ̃^�C�v���w�肵�܂��D-r�Ȃ畡��C-
a�Ȃ�A�t�B���s�ϗʁC-s�Ȃ瑊���s�ϗʂ�p���܂��D�f�t�H���g�ł̓A�t�B��
�s�ϗʂ��p�����܂��D

�@-n [�p�����[�^n] : �p�����[�^n���w�肵�܂��D�f�t�H���g�ł�7�ƂȂ�܂��D

�@-m [�p�����[�^m] : �p�����[�^m���w�肵�܂��D�f�t�H���g�ł�6�ƂȂ�܂��D
�i���F�s�ϗʃ^�C�v������̏ꍇ�Cn>=m>=5�ƂȂ�K�v������܂��D���l�ɁC�A
�t�B���s�ϗʂ̏ꍇ��n>=m>=4�C�����s�ϗʂ̏ꍇ��n>=m>=3�Ƃ��ĉ������j

�@-d [���U�����x����] : ���U�����x�������w�肵�܂��D�f�t�H���g�ł�15�Ƃ�
��܂��D

�@����ɏI������ƁC�o�̓f�B���N�g����hash.dat�Cpoint.dat�Cconfig.dat�C
disc.txt��4�̃t�@�C�����쐬����܂��D

9.3 �T���l�C���摜�̗p��

�@�N���C�A���g�v���O�����ɂ����錟�����ʂ̊m�F�̂��߁C�f�[�^�x�[�X�ɓo�^
���������摜�̃T���l�C���摜��p�ӂ��܂��D�������C���̎菇�͕K�{�ł͂���
�܂���D

�@�f�[�^�x�[�X�ɓo�^���������摜��ImageMagick���ŏk�����C�T���l�C���摜
���쐬���܂��D�Ȃ��C�T���l�C���摜�̊g���q���������t�@�C�����́C�o�^����
�����摜�Ɠ���łȂ���΂Ȃ�܂���D�o�^���������摜�����̂܂܃T���l�C��
�摜�Ƃ��ėp���邱�Ƃ��\�ł����C�摜�̃T�C�Y���傫���C�ǂݍ��݂Ɏ��Ԃ�
�|���邽�ߏ������x���ቺ����ꍇ������܂��D
�@�p�ӂ����T���l�C���摜�́C�N���C�A���g�}�V������A�N�Z�X�\�ȏꏊ�ɁC
1�̃t�H���_�ɂ܂Ƃ߂Ĕz�u���Ă��������D

9.4 �ݒ�t�@�C���̏C��

�@�쐬�����f�[�^�x�[�X�t�@�C���ƃT���l�C���摜��ݒ�t�@�C���Ŏw�肵�܂��D
�@�T�[�o���ł́Cserver.ini��DatabaseDir���f�[�^�x�[�X�t�@�C���̂���t�H
���_�ɕύX���ĉ������D
�@�N���C�A���g���ł́Cclient.ini��ThumbDir��ThumbSuffix���C���ꂼ��T��
�l�C���摜�̃t�H���_�Ɗg���q�ɕύX���ĉ������D

-----------------------------------------------------------------------
10. �ݒ�t�@�C���ɂ����鍀�ڂ̐���

(1) server.ini

�@TCPPort : �����ݒ肨��ђʐM�v���g�R����TCP�̏ꍇ�̃f�[�^�̒ʐM�ɗp��
��|�[�g�D
�@Protocol : �ʐM�v���g�R���DTCP��������UDP���w�肵�܂��D
�@PointPort : �ʐM�v���g�R����UDP�̏ꍇ�ɃN���C�A���g����T�[�o�ւ̒ʐM
�ɗp����|�[�g�D
�@ResultPort : �ʐM�v���g�R����UDP�̏ꍇ�ɃT�[�o����N���C�A���g�ւ̒ʐM
�ɗp����|�[�g�D
�@ClientName : �N���C�A���g�̃}�V�����D�N���C�A���g�ƃT�[�o������̏ꍇ
��"localhost"�Ƃ��܂��D
�@ServerName : �T�[�o�̃}�V�����D�N���C�A���g�ƃT�[�o������̏ꍇ��
"localhost"�Ƃ��܂��D
�@DatabaseDir : �f�[�^�x�[�X�t�@�C���̃f�B���N�g���D

(2) client.ini

�@CamNum : Web�J�����̔ԍ��D
�@CamConfNum : Web�J�����̃��[�h�D
�@TCPPort : �����ݒ肨��ђʐM�v���g�R����TCP�̏ꍇ�̃f�[�^�̒ʐM�ɗp��
��|�[�g�D
�@Protocol : �ʐM�v���g�R���DTCP��������UDP���w�肵�܂��D
�@PointPort : �ʐM�v���g�R����UDP�̏ꍇ�ɃN���C�A���g����T�[�o�ւ̒ʐM
�ɗp����|�[�g�D
�@ResultPort : �ʐM�v���g�R����UDP�̏ꍇ�ɃT�[�o����N���C�A���g�ւ̒ʐM
�ɗp����|�[�g�D
�@ClientName : �N���C�A���g�̃}�V�����D�N���C�A���g�ƃT�[�o������̏ꍇ
��"localhost"�Ƃ��܂��D
�@ServerName : �T�[�o�̃}�V�����D�N���C�A���g�ƃT�[�o������̏ꍇ��
"localhost"�Ƃ��܂��D
�@ThumbDir : �T���l�C���摜�̃f�B���N�g���D
�@ThumbSuffix : �T���l�C���摜�̊g���q�D
�@ThumbScale : �\�������T���l�C���́i200dpi�̌��摜�ɑ΂���j�{���D�T
���l�C���摜�̃T�C�Y�Ƃ͖��֌W�D

-----------------------------------------------------------------------
11. �X�V����

ver.1.1(2006/12)
�E�f�[�^�x�[�X�쐬�p�X�N���v�g�𓯍�

ver.1.0(2006/12)
�E���J

-----------------------------------------------------------------------
12. �ӎ�

�@���̃v���O������OpenCV
(http://www.intel.com/technology/computing/opencv/)�𗘗p���č쐬����܂����D

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

-----------------------------------------------------------------------
13. ����
�����E�摜�������@�Ƃ��̃v���O����
�E�o��F 2005�N3��1���o�� (����2005-56124)
�E�����D�挠�咣�F 2005�N6��30�� (����2005-192658)
�EPCT�o��F 2006�N2��15�� (���ۏo��ԍ��FPCT/JP2006/302669)
�E���ی��J�F 2006�N9��8�� (���ی��J�ԍ��FWO2006/092957)

-----------------------------------------------------------------------
14. ���

�EFIT2005 �����O���T�[�`���[��
�EMIRU2006 �f���Z�b�V������
�E����18�N�x ���{����w �w������

-----------------------------------------------------------------------
15. �Q�l����

�����F�O, �����_��, �⑺���, "�����_�̋Ǐ��I�z�u�Ɋ�Â��f�W�^���J����
��p�������������摜����," �M�w�_�iD�j, vol.J89-D, no.9, pp.2045-2054,
Sep. 2006.

T.Nakai, K.Kise and M.Iwamura, "Use of affine invariants in locally
likely arrangement hashing for camera-based document image retrieval,"
DAS 2006, pp.541-552, 2006.

�����F�O, �����_��, �⑺���, "�f�W�^���J������p�������������摜������
������A�t�B���s�ϗʂ���ё����s�ϗʂ̗��p," �M�w�Z��CPRMU2005-188,
pp.25--30, Feb. 2006.

�����F�O, �����_��, �⑺���, "Web�J������p�������A���^�C�������摜����
�Ƃ��̊g�������ւ̉��p," �摜�̔F���E�����V���|�W�E��(MIRU2006), DS-5,
pp.1379-1380, July 2006. [�f���Z�b�V�����܎��]

-----------------------------------------------------------------------
16. �A����
���ӌ��C��v�]�C�o�O���|�[�g���������܂����琥��ȉ��̃A�h���X�܂ł��A��
�����肢���܂��D����̎Q�l�Ƃ����Ē����܂��D

LLAH@m.cs.osakafu-u.ac.jp

http://www.m.cs.osakafu-u.ac.jp/LLAH/
