KSO/WPS I18n
================================================================================
KSO/WPS internationalization support.

Prepare
--------------------------------------------------------------------------------
Rcc, lrelease is required to compile KSO/WPS language package. Lingist is 
required to translate KSO/WPS. You can install them by follow command in Ubuntu:

	$ sudo apt-get install qt4-dev-tools

Other system is similar.

There codes assume that KSO/WPS is installed to /opt/kingsoft/wps-office. If you 
install KSO/WPS by deb or rpm package, nothing need to do. If KSO/WPS is installed
by green package. You must do follow command:

	$ sudo ln -s absolute_path_to_you_kso_dir /opt/kingsoft/wps-office

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


How to create a language support
--------------------------------------------------------------------------------
If you can not found the language you interesting in root directory, this means 
no one had translate it yet. You need create it by yourself.

For example, we create a directory for Vietnamese.

At first, you must comfirm what locale the language used. Here is a list: 
http://www.roseindia.net/tutorials/i18n/locales-list.shtml

We known the locale for Vietnamese is vi\_VI. OK, let's create directory.

	$ cd dev
	$ ./new_lang.sh vi_VI

A new directory named vi\_VI is created in root. The next step is to edit lang.conf

	$ cd ../vi_VI
	$ gedit lang.conf   # or whatever editor you liked.

There is two lines need to edit, DisplayName and DisplayName[en\_US]. They will
be displayed in language choosing dialog.

And then, you need a icon file, put to vi\_VI. You can ignore it currently.

Now save you changes. All you need is the follow command:

	$ sudo make install

Restart wps, and you will see what you want.

**If you create a language support, give us a push request immediately, in order
to avoid another volunteer create it again, that will be a badly conflict.**

How to install/uninstall language support
--------------------------------------------------------------------------------
It's very easy:

	$ cd xx_XX
	$ sudo make install    # install
	$ sudo make uninstall  # uninstall

How to translate strings
--------------------------------------------------------------------------------
There is a directory named 'ts' is each language dirs. There are several .ts files
in the directory. You can open them by linguist.
	
	$ cd xx_XX/ts
	$ linguist wpsresource.ts

When you translate KSO/WPS, We recommend you open some other ts file for guidance.
You can open guidance by follow step:

	Linguist -> File -> Open Read-Only... -> choose ts file under other language dir

For example, if you want translate zh\_TW/ts/wpsresource.ts. You can open 
zh\_CN/ts/wpsresource.ts as guidance.

You can follow any order to translate KSO/WPS. But we strongly recommend that
you can translate wpsresource.ts, wppresource.ts, etresource.ts first. Because,
the strings in these files will be shown to user at first time.

Once you translated some strings, you can save and run

	$ sudo make install

to install and test your works.

How to translate non-string resources
--------------------------------------------------------------------------------
KSO/WPS will find resources in language special directory first, and if KSO/WPS
can not found it in language special directory, KSO/WPS will find default directory.

If you want to translate non-string resources, for example template, you can 
create a same path in your language directory as that under default directory.
And put a file to replace it.

For example, we create a template for vi\_VI.

	$ cd vi_VI
	$ mkdir templates
	$ cd templates
	$ cp ../../default/templates/normal.wpt .
	$ wps -t normal.wpt  # edit it

Of course, you can copy resource from other language.

**Do not copy the entire directory tree from default, it's not a good idea. 
Copy the one you need only.**
