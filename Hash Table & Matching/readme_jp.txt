-----------------------------------------------------------------------
リアルタイム文書画像検索システム ver 1.1

Copyright (C) 2006 Tomohiro Nakai,
	Intelligent Media Processing Laboratory,
	Dept. of Computer Science and Intelligent Systems,
	Graduate School of Engineering,
	Osaka Prefecture University
-----------------------------------------------------------------------
　このソフトウェアは研究や評価の目的に限り利用でき、製品への組み込み，
販売など他の目的では利用できません。
-----------------------------------------------------------------------
1. はじめに

　このたびは本システムをダウンロードしていただき，誠にありがとうございます．
　本システムは，Webカメラで撮影された英文の印刷文書の画像を入力とし，対
応する文書画像をデータベースからリアルタイムで検索するものです．
　本システムでは，我々の提案している高速画像検索法「LLAH(Locally Likely
Arrangement Hashing)」を用いることで，高速かつ高精度な検索を実現しています．

-----------------------------------------------------------------------
2. ファイル構成

　本システムは以下のファイルで構成されています．

readme_jp.txt : このファイル
readme.txt : このファイルの英語版
server.exe : サーバプログラム
server.ini : サーバ側設定ファイル
client.exe : クライアントプログラム
client.ini : クライアント側設定ファイル
cv100.dll, cxcore100.dll, highgui100.dll : OpenCVのDLL
config.dat, hash.dat, point.dat, disc.txt : サンプルデータベース
thumb : サンプルデータベース用のサムネイル画像のフォルダ
pdf : サンプルデータベース用のPDFファイルのフォルダ
makedb.vbs : データベース作成用バッチファイル
makedb.sh : データベース作成用スクリプトファイル
win-bash.exe : win-bash（bashのWindows版）

-----------------------------------------------------------------------
3. インストール
　圧縮ファイルを任意のアーカイバで解凍して下さい．

-----------------------------------------------------------------------
4. アンインストール
　本システムはレジストリ等を使用しません．インストールしたファイルを削除
すればアンインストールは完了します．

-----------------------------------------------------------------------
5. サンプルデータでの実行

　あらかじめ，検索対象としてpdfフォルダのPDFファイルを印刷しておいて下さい．

　まず，server.exeをダブルクリックしてサーバプログラムを実行します．
　画面に「Ready」と表示されたら，client.exeをダブルクリックしてクライア
ントプログラムを実行して下さい．

※サーバプログラムとクライアントプログラムはUDPによる通信を行うので，ブ
ロックするかどうか訊ねられる場合があります．「ブロックを解除する」を選択
してください．

※Webカメラが複数接続されている場合，使用するカメラを選択する画面が表示さ
れます．キーボードで該当する番号を入力し，Enterキーを押して下さい．

※Webカメラが複数の解像度モードをサポートしている場合，使用するモードを選
択する画面が表示されます．キーボードで該当する番号を入力し，Enterキーを
押して下さい．
（注1：640x480程度以上の解像度を推奨）
（注2：後半のモードは正しく動作しない場合があります）
（注3：1280x1024を超える解像度では動作しないよう制限しています）

　CaptureウィンドウとThumbウィンドウが出現します．Captureウィンドウには
Webカメラでキャプチャした画像が表示されます．Webカメラで印刷した文書を撮
影すると，キャプチャされた画像に基づいて検索が行われ，検索結果に対応する
サムネイル画像がThumbウィンドウに表示されます．また，キャプチャされた画
像の範囲が赤い枠で表示されます．

　CaptureウィンドウもしくはThumbウィンドウがアクティブな状態で，fキーを
押すと特徴点モードになり，検索に用いている特徴点がCaptureウィンドウに表
示されます．もう一度fキーを押すと元に戻ります．

　CaptureウィンドウもしくはThumbウィンドウがアクティブな状態で，qキーを
押すと終了します．終了しない場合は，コマンドプロンプトでCtrlキーを押しな
がらcキーを押して終了させてください．

-----------------------------------------------------------------------
6. 使用するカメラおよび解像度モードの事前指定

　設定ファイルclient.iniを編集することで，使用するカメラおよび解像度モー
ドを事前に指定することができます．

　カメラについては，client.iniの2行目の

CamNum =

　を

CamNum = [カメラの番号]

　として下さい．使用するカメラの番号が0ならば，

CamNum = 0

　になります．カメラが1つしか接続されていない場合は0として下さい．
　解像度モードについては，client.iniの4行目の

CamConfNum =

　を

CamConfNum = [解像度モードの番号]

　として下さい．使用する解像度モードの番号が13ならば，

CamConfNum = 13

　になります．

-----------------------------------------------------------------------
7. クライアント・サーバシステムでの実行

　クライアントプログラムとサーバプログラムを別のマシンで実行し，並列処理
による高速化を図ることができます．下図のように，Webカメラの接続されたク
ライアントマシンとサーバマシンはLANで接続されます．

            +--------------------+       +--------------------+
            | クライアントマシン |  LAN  |    サーバマシン    |
Webカメラ---|（client.exeを実行）|=======|（server.exeを実行）|
            |  [サムネイル画像]  |       |   [データベース]   |
            +--------------------+       +--------------------+

　クライアントマシンには，以下のファイルとフォルダを同一のフォルダに置き
ます．

client.exe
client.ini
thumb
cv100.dll
cxcore100.dll
highgui100.dll

　サーバマシンには，以下のファイルを同一のフォルダに置きます．

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

　次に，通信のために設定ファイルを書き換えます．
　まず，server.iniの10行目の

ClientName = localhost

　を

ClientName = [クライアントのマシン名]

　として下さい．クライアントのマシン名がalphaならば，

ClientName = alpha

　になります．次に，server.iniの12行目の

ServerName = localhost

　を

ServerName = [サーバのマシン名]

　として下さい．サーバのマシン名がbetaならば，

ServerName = beta

　になります．

　クライアント側のclient.iniについても同様にClientNameとServerNameを修正
して下さい．

　以上の修正が完了したら，サーバマシンでserver.exeを，クライアントマシン
でclient.exeを順に起動すれば並列処理を行います．

-----------------------------------------------------------------------
8. 検索データの変更（スクリプトの使用）

　ここまでの説明では，あらかじめ用意されたサンプルデータで検索を行ってい
ました．本システムは，ユーザの用意した任意の英文PDFを検索対象にすること
ができます．

　ここでは，スクリプトを使用して自動的にデータベースを作成する方法につ
いて説明します．スクリプトはbashの形式で記述されており，同梱したwin-bash
（http://win-bash.sourceforge.net/）によって実行されます．

***********************************************************************
注：PDFファイルを画像ファイルに変換するためにImageMagick
(http://www.imagemagick.org/script/index.php)を使用しますので，
あらかじめサーバマシンにインストールしておいて下さい．
***********************************************************************

8.1 PDFファイルの用意

　データベースに登録するPDFファイルを，サーバ側のpdfフォルダに入れます．

8.2 スクリプトの実行

　サーバ側でmakedb.vbsをダブルクリックして起動します．Finishedと表示さ
れたらデータベースの作成は完了です．Enterキーを押してウィンドウを閉じて
下さい．

8.3 サムネイル画像の移動

　サムネイル画像はサーバ側のthumbフォルダに作成されます．サーバマシンと
クライアントマシンが異なる場合，作成されたサムネイル画像をクライアント
側のthumbフォルダに移動して下さい．サーバマシンとクライアントマシンが同
一のものであればこの手順は必要ありません．

8.3 設定の変更

　デフォルトではpdfフォルダのPDFファイルを用い，データベースファイルを
カレントディレクトリに，サムネイル画像をthumbフォルダに保存します．LLAH
のパラメータについては，n=7，m=6，離散化レベル数は15となり，アフィン不
変量が用いられます．

　これらの設定を変更するには，makedb.shを編集して下さい．

　なお，データベースの出力先を変更した場合，実行時にデータベースファイ
ルの場所を指定する必要があります．server.iniのDatabaseDirを修正して下さ
い．同様に，サムネイル画像のディレクトリを変更した場合は，client.iniの
ThumbDirを修正して下さい．

-----------------------------------------------------------------------
9. 検索データの変更（手動）

　ここでは，スクリプトを使用せずに手動でデータベースを作成する方法につ
いて説明します．

9.1 PDFの画像への変換

　英文PDFファイルを画像データに変換します．変換にはImageMagick(http:
//www.imagemagick.org/script/index.php)等を用いて下さい．なお，PDFファイ
ルを画像に変換する場合は，解像度を200dpi，画像フォーマットを
BMP/DIB/JPEG/JPG/JPE/PNG/PBM/PGM/PPM/SR/RAS/TIFF/TIFのいずれかとして下さい．

9.2 データベースファイルの作成

　データベースファイルの作成にはコマンドプロンプトを用います．サーバプロ
グラムのあるディレクトリに移動して，以下のコマンドを入力して下さい．

> server.exe -c [文書画像のディレクトリ] [文書画像ファイルの拡張子](-h
[出力ディレクトリ] -r/-a/-s -n [パラメータn] -m [パラメータm] -d [離散化
レベル数])

・オプション

　-h [出力ディレクトリ]: データベースファイルの出力ディレクトリを指定し
ます．省略した場合，カレントディレクトリに出力されます．

　-r/-a/-s : 特徴量計算に用いる不変量のタイプを指定します．-rなら複比，-
aならアフィン不変量，-sなら相似不変量を用います．デフォルトではアフィン
不変量が用いられます．

　-n [パラメータn] : パラメータnを指定します．デフォルトでは7となります．

　-m [パラメータm] : パラメータmを指定します．デフォルトでは6となります．
（注：不変量タイプが複比の場合，n>=m>=5となる必要があります．同様に，ア
フィン不変量の場合はn>=m>=4，相似不変量の場合はn>=m>=3として下さい）

　-d [離散化レベル数] : 離散化レベル数を指定します．デフォルトでは15とな
ります．

　正常に終了すると，出力ディレクトリにhash.dat，point.dat，config.dat，
disc.txtの4つのファイルが作成されます．

9.3 サムネイル画像の用意

　クライアントプログラムにおける検索結果の確認のため，データベースに登録
した文書画像のサムネイル画像を用意します．ただし，この手順は必須ではあり
ません．

　データベースに登録した文書画像をImageMagick等で縮小し，サムネイル画像
を作成します．なお，サムネイル画像の拡張子を除いたファイル名は，登録した
文書画像と同一でなければなりません．登録した文書画像をそのままサムネイル
画像として用いることも可能ですが，画像のサイズが大きく，読み込みに時間が
掛かるため処理速度が低下する場合があります．
　用意したサムネイル画像は，クライアントマシンからアクセス可能な場所に，
1つのフォルダにまとめて配置してください．

9.4 設定ファイルの修正

　作成したデータベースファイルとサムネイル画像を設定ファイルで指定します．
　サーバ側では，server.iniのDatabaseDirをデータベースファイルのあるフォ
ルダに変更して下さい．
　クライアント側では，client.iniのThumbDirとThumbSuffixを，それぞれサム
ネイル画像のフォルダと拡張子に変更して下さい．

-----------------------------------------------------------------------
10. 設定ファイルにおける項目の説明

(1) server.ini

　TCPPort : 初期設定および通信プロトコルがTCPの場合のデータの通信に用い
るポート．
　Protocol : 通信プロトコル．TCPもしくはUDPを指定します．
　PointPort : 通信プロトコルがUDPの場合にクライアントからサーバへの通信
に用いるポート．
　ResultPort : 通信プロトコルがUDPの場合にサーバからクライアントへの通信
に用いるポート．
　ClientName : クライアントのマシン名．クライアントとサーバが同一の場合
は"localhost"とします．
　ServerName : サーバのマシン名．クライアントとサーバが同一の場合は
"localhost"とします．
　DatabaseDir : データベースファイルのディレクトリ．

(2) client.ini

　CamNum : Webカメラの番号．
　CamConfNum : Webカメラのモード．
　TCPPort : 初期設定および通信プロトコルがTCPの場合のデータの通信に用い
るポート．
　Protocol : 通信プロトコル．TCPもしくはUDPを指定します．
　PointPort : 通信プロトコルがUDPの場合にクライアントからサーバへの通信
に用いるポート．
　ResultPort : 通信プロトコルがUDPの場合にサーバからクライアントへの通信
に用いるポート．
　ClientName : クライアントのマシン名．クライアントとサーバが同一の場合
は"localhost"とします．
　ServerName : サーバのマシン名．クライアントとサーバが同一の場合は
"localhost"とします．
　ThumbDir : サムネイル画像のディレクトリ．
　ThumbSuffix : サムネイル画像の拡張子．
　ThumbScale : 表示されるサムネイルの（200dpiの元画像に対する）倍率．サ
ムネイル画像のサイズとは無関係．

-----------------------------------------------------------------------
11. 更新履歴

ver.1.1(2006/12)
・データベース作成用スクリプトを同梱

ver.1.0(2006/12)
・公開

-----------------------------------------------------------------------
12. 謝辞

　このプログラムはOpenCV
(http://www.intel.com/technology/computing/opencv/)を利用して作成されました．

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
13. 特許
文書・画像検索方法とそのプログラム
・出願： 2005年3月1日出願 (特願2005-56124)
・国内優先権主張： 2005年6月30日 (特願2005-192658)
・PCT出願： 2006年2月15日 (国際出願番号：PCT/JP2006/302669)
・国際公開： 2006年9月8日 (国際公開番号：WO2006/092957)

-----------------------------------------------------------------------
14. 受賞

・FIT2005 ヤングリサーチャー賞
・MIRU2006 デモセッション賞
・平成18年度 大阪府立大学 学長顕彰

-----------------------------------------------------------------------
15. 参考文献

中居友弘, 黄瀬浩一, 岩村雅一, "特徴点の局所的配置に基づくデジタルカメラ
を用いた高速文書画像検索," 信学論（D）, vol.J89-D, no.9, pp.2045-2054,
Sep. 2006.

T.Nakai, K.Kise and M.Iwamura, "Use of affine invariants in locally
likely arrangement hashing for camera-based document image retrieval,"
DAS 2006, pp.541-552, 2006.

中居友弘, 黄瀬浩一, 岩村雅一, "デジタルカメラを用いた高速文書画像検索に
おけるアフィン不変量および相似不変量の利用," 信学技報，PRMU2005-188,
pp.25--30, Feb. 2006.

中居友弘, 黄瀬浩一, 岩村雅一, "Webカメラを用いたリアルタイム文書画像検索
とその拡張現実への応用," 画像の認識・理解シンポジウム(MIRU2006), DS-5,
pp.1379-1380, July 2006. [デモセッション賞受賞]

-----------------------------------------------------------------------
16. 連絡先
ご意見，御要望，バグレポート等ございましたら是非以下のアドレスまでご連絡
をお願いします．今後の参考とさせて頂きます．

LLAH@m.cs.osakafu-u.ac.jp

http://www.m.cs.osakafu-u.ac.jp/LLAH/
