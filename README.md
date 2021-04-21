# HeaSoft Installer

HeaSoftのインストールは長いから、自動化しようと思った。

(**ちなみに、遠慮なくこの`README.md`を日本語化してくださいw。**お願いします。)

## Install
著作権違反の心配があるので、HeaSoftのSource Codeを提供しない。研究室のサバーや提供元NASAの[サイト](https://heasarc.gsfc.nasa.gov/docs/software/lheasoft/download.html)からダウンロードしてください。

### Download Source File of Heasoft
NASAの[ページ](https://heasarc.gsfc.nasa.gov/docs/software/lheasoft/download.html)からSource Codeをダウンロードする。
ダウンロードしたファイルを`~/software`にコピーし、解凍する。

---

## Install XQuartz

[XQuartz](https://www.xquartz.org/)をインストールする。

---

### Download Script
> **今年(2021)の場合はおそらく何も変更する必要がない.ダウンロードし展開したファイルを何も変更しないて、そのまま実行してください。**

ZIPファイルをダウンロードして、解凍する。`main.sh`を編集する。NASAの[ページ](https://heasarc.gsfc.nasa.gov/docs/heasarc/caldb/install.html)に従って、

```
# CALDB Setup File Path:
STEUP_FILE="https://heasarc.gsfc.nasa.gov/FTP/caldb/software/tools/caldb_setup_files.tar.Z"
```

の値を新しいURLにする。（多分滅多に変更がないと思うが、一応確認してください。）

---

[リスト](https://heasarc.gsfc.nasa.gov/docs/heasarc/caldb/caldb_supported_missions.html)を参照し、利用したいデータのURLを入力する。
ファイル名のルールは
```goodfiles_<mission>_<instrument>_tar.Z```
。(___変更する必要がない___)

```
# URL of Mission Data:
# Filename Format : goodfiles_<mission>_<instrument>_tar.Z
DOWNLOAD_PATH=(
    "https://heasarc.gsfc.nasa.gov/FTP/caldb/data/swift/bat/goodfiles_swift_bat_20171016.tar.Z"
    "https://heasarc.gsfc.nasa.gov/FTP/caldb/data/swift/mis/goodfiles_swift_mis_20210317.tar.Z" 
    "https://heasarc.gsfc.nasa.gov/FTP/caldb/data/swift/uvota/goodfiles_swift_uvota_20201215.tar.Z" 
    "https://heasarc.gsfc.nasa.gov/FTP/caldb/data/swift/xrt/goodfiles_swift_xrt_20200724.tar.Z"
    "https://heasarc.gsfc.nasa.gov/FTP/caldb/data/swift/sc/goodfiles_swift_mis_20210317.tar.Z"
)
```

### install.sh

18行目の

```
cd ~/software/heasoft-6.28/BUILD_DIR
```

を先の展開先にする。(今年の場合は多分変更不要でしょう)


>もともと`main.sh`の定数`HEASOFT_PATH`で指定するべきだが、わけわからないエラーで実行する。

### Run

まずは`main.sh`実行し、終わった後、`ds9.sh`を実行する。

`main.sh`の実行はすごく時間かかるので、

```
cd ~/software/heasoft-6.28/BUILD_DIR
tail -f config.txt #拡張子は.outではなく、.txtです。最初はついでに#!/bin/shを書いたので、
```

で実行結果を見ることができる。
