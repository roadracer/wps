KSO/WPS i18n
================================================================================
KSO/WPS internationalization support.

Prerequisites
--------------------------------------------------------------------------------
You need `rcc` and `lrelease` to compile language packages for KSO/WPS; Linguist
is required to translate KSO/WPS. Typically you can find them in your
distribution's repositories, but here are copy-and-paste commands for some
popular distributions:

Ubuntu:

```sh
sudo apt-get install qt4-dev-tools
```

Gentoo:

```sh
sudo emerge dev-qt/qtcore dev-qt/linguist
```

Setup for other distributions should be similar.


Directory structure
--------------------------------------------------------------------------------
	
	root
	|-- default			# default resources
	|-- sample			# template for new language
	|-- dev				# dev tools
	|-- en_US			# English support
	|-- zh_CN			# Chinese support
	...					# ...
	|-- bin				# legacy
	|-- doc				# legacy
	|-- CMakeLists.txt	# internal build script
	|-- README.md		# this file


Translation resources
--------------------------------------------------------------------------------
For all the *.ts files, starting with et, wpp and wps means for WPS Spreadsheets only,  WPS Presentation only, and WPS Writer only.

	config
	|-- hotkeylettermap.cfg        # Hotkey mapper
	|-- localizedfuntionname.cfg   # Spreadsheets function localized name
	data
	|-- dgres.ini                  # For shapes (Insert -> Shapes)
	ts
	|-- auth.ts                    # Authentication module (Windows only)
	|-- etcore.ts                  # Core module translations for Spreadsheets
	|-- etresource.ts              # GUI translations for Spreadsheets
	|-- ettablestyle.ts            # Table style translations for Spreadsheets
	|-- ettips.ts                  # GUI tooltips translations for Spreadsheets
	|-- et.ts                      # Spreadsheets
	|-- highresolution.ts          # For high resolution setting dialog (Windows only)
	|-- kaccountsdk.ts             # For officespace (Windows only)
	|-- kcomctl.ts                 # Common controls/widgets translations
	|-- kde.ts                     # Kingsoft development enviroment (Windows only)
	|-- kfeedback.ts               # Feedback (Windows only)
	|-- khomepage.ts               # Home page
	|-- kole.ts                    # Same as kde.ts
	|-- kscreengrab.ts             # Screen capture plugin (Windows only)
	|-- ksomisc.ts                 # Install/uninstall module (Windows only)
	|-- ksotips.ts                 # Common tooltips
	|-- kso.ts                     # Common core module
	|-- ktreasurebox.ts            # Treasure Box (Windows only)
	|-- kwpsassist.ts              # Assist plugin (Windows only)
	|-- kxshare.ts                 # Same as kcomctl.ts
	|-- launcher.ts                # Launcher (Windows only)
	|-- multiclipboard.ts          # Multi-clipboard plugin (Windows only)
	|-- officespace.ts             # Office space plugin (Windows only)
	|-- qing.ts                    # Same as officespace.ts
	|-- shareplay.ts               # Share play plugin (Windows only)
	|-- wpp2doc.ts                 # Presentaion -> Writer convert plugin (Windows only)
	|-- wppcore.ts                 # Presentation core module
	|-- wppencoder.ts              # Encoder (Windows only)
	|-- wpponlinetemplate.ts       # Online templates plugin (Windows only)
	|-- wpppresentationtool.ts     # Presentaion Tool (Windows only)
	|-- wppresource.ts             # Presentaion GUI
	|-- wpptips.ts                 # Presentaion tooltips
	|-- wpp.ts                     # Presentaion
	|-- wpscore.ts                 # Writer core module
	|-- wpsgallery.ts              # For Writer gallery
	|-- wpsrecommend.ts            # Software recommendation (Windows only)
	|-- wpsresource.ts             # Writer GUI
	|-- wpsspeaker.ts              # Speaker plugin (Windows only)
	|-- wpstablestyle.ts           # Table style
	|-- wpstips.ts                 # Tooltips for Writer
	|-- wps.ts                     # Writer


How to add a new language
--------------------------------------------------------------------------------
If the language you're interested in is not present in the root directory, it
means no one has translated it yet, and you need to add it yourself.

For example, we are going to add Vietnamese.

First you must find out the **locale name** for the language.
[Here is a list][locale-list].

[locale-list]: http://www.roseindia.net/tutorials/i18n/locales-list.shtml

Now we know that `vi_VI` stands for Vietnamese. OK, let's create the directory.

```sh
cd dev
./new_lang.sh vi_VI
```

The directory is created at top-level of the repo. Next step is to **edit `lang.conf`**:

```sh
cd ../vi_VI
gedit lang.conf  # substitute with ${YOUR_FAVORITE_EDITOR}
```

You should now **modify the `DisplayName` and `DisplayName[en_US]` settings**,
which will be displayed in the language chooser dialog.

And then, you need **an icon** for your language, named `vi_VI.png` in this case.
For now you can ignore it.

Now save your changes and test:

```sh
make install
```
	
*Note*: If you're using A11p2 or an earlier version, root privilege is needed:

```sh
sudo make install
```

Restart WPS and you will find the new language.

*Note*: If you added a language, please **immediately** send us a pull request,
in order to avoid duplication of efforts (and nasty merge conflicts).

How to install/uninstall a language
--------------------------------------------------------------------------------

It's easy:

```sh
cd xx_XX
make install    # to install
make uninstall  # to uninstall
```

How to translate strings
--------------------------------------------------------------------------------
There is a directory named `ts` for each language. There are several `.ts` files
in the directory, which can be opened with Linguist.

```sh
cd xx_XX/ts  # substitute with actual locale
linguist wpsresource.ts
```

While you're at it, it's recommended to keep some `.ts` files from other relevant
languages open side-by-side for reference, if that's the case. You can do it in
Linguist, just follow the steps:

    Linguist -> File -> Open Read-Only... -> choose a .ts file of another language

For example, if you're translating `zh_TW/ts/wpsresource.ts` you may want to
occasionally reference to the `zh_CN` strings. Then you can open
`zh_CN/ts/wpsresource.ts` for that.

You can translate KSO/WPS in any order you want. But we strongly recommend that
you translate `wpsresource.ts`, `wppresource.ts` and `etresource.ts` first,
because they comprise the main interface so a user reads these strings first.

Once you translated some strings and saved your changes, just run

```sh
make install
```

to install and test your work.

How to translate non-string resources
--------------------------------------------------------------------------------
KSO/WPS will try to load resources first from the language-specific directory,
falling back to the default directory.

If you want to translate non-string resources, for example templates, you can 
create a same directory structure as `default` in your language's directory,
then copy-and-edit the file you want to translate.

For example, here's the steps to translate the `normal.wpt` template for `vi_VI`.

```sh
cd vi_VI
mkdir templates
cd templates
cp ../../default/templates/normal.wpt .
wps -t normal.wpt  # edit it
```

You're free to copy resources from other languages.

*Note*: Do **not** copy the entire directory tree from default; it's not a good idea.
Please only copy the files you need.
