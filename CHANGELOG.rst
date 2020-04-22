^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Changelog for package timed_roslaunch
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

0.1.1 (2020-04-22)
------------------
* Merge pull request `#16 <https://github.com/MoriKen254/timed_roslaunch/issues/16>`_ from v4hn/patch-1
  make sure to handle spaces in parameters
* make sure to handle spaces in parameters
  `"$@"` is a special sequence expanded to a list of *quoted* arguments
  Leaving this out might result in arguments split into multiple smaller arguments at this point
* Fix install scripts in CMakeLists
* Modify travis setting
* Modify travis setting.
* Fix timed_roslaunch to add default values
* Rename exmample file
* Modify misc settings
* Merge pull request `#7 <https://github.com/MoriKen254/timed_roslaunch/issues/7>`_ from MoriKen254/indigo-devel
  Official CI
* Delete launchtest depend.
* Merge pull request `#6 <https://github.com/MoriKen254/timed_roslaunch/issues/6>`_ from MoriKen254/indigo-devel
  Official CI
* Add launch test.
* Add package configuration for official ci.
* Add about in README.
* Merge pull request `#5 <https://github.com/MoriKen254/timed_roslaunch/issues/5>`_ from MoriKen254/mm/add/travis
  Add travis
* Add travis status to README.
* Add travis file.
* Add dependency setting.
* Add test trigger launch.
* Add test related files.
* Merge pull request `#4 <https://github.com/MoriKen254/timed_roslaunch/issues/4>`_ from forno/master
  Add launch file for usability
* Fix typo
* Update documentation for launch file
* Add launch file
* Add launch file for usability
  time, pkg, file, valueと具体名をつけることで使いやすくする試み。
  使用者はこれらアーギュメントを渡しつつincludeすれば良い
* Merge pull request `#3 <https://github.com/MoriKen254/timed_roslaunch/issues/3>`_ from forno/master
  Fix url tags
* Fix url tags
* Update limit number of arguments to 3
  少なくとも、 [late time, package name, launch file name] の3つのステータスが必要。
  なので、3つよりも引数が少なければエラーとする。
* Update usage on launch file
  必要最低限の情報だけのほうが使い方は伝わりやすいかと思います。
* Fix typo on README
  BSD3条項ライセンスでした
* Add text for license onto script files
* Update README.md for license
* Create LICENSE.txt
  package.xml にBSDライセンスって書いてあるけど LICENSEの表示ファイルが無いのは不親切かと思い追加。
  LICENSE.txt 追加にあたって @MoriKen254 さんのお名前を著作権表示のためお借りします。
* Update document using timed_launch package
  include fix typo time_roslaunch.sh to timed_roslaunch.sh
  せっかくcatkinパッケージにしてROSシステム上に存在してるので
  他の人のところにコピるんじゃなくて利用してもらうように指示
  BSDライセンスって書いてあるから、コピったらBSDライセンスに従わないといけませんしね
* Update readme with description and usage
* Update package.xml and CMakeLists.txt
  reference:
  - [ros_core/package.xml](https://github.com/ros/metapackages/blob/kinetic-devel/ros_core/package.xml)
* Update function definition for posix
  sh (dash) から実行できなかったので posix 準拠にして動くようにしました。
  referance:
  - http://pubs.opengroup.org/onlinepubs/007904875/utilities/xcu_chap02.html#tag_02_09_05
* Add comment to shift command
  何度読んでも見逃してしまいがちなので
  改行+コメントで強調
* Add non-existent argment task
* Update comment layout
* Fix typo Use to Usage
* Fix miss text for solve syntax error
  恐らく誤って3行目と4行目がコピーされた結果であるものを削除
* [modify] add maintainer
* Update README.md
* [add] added actual scripts
* Update .gitignore
* Initial commit
* Contributors: Doi Yusuke, Masaru Morita, Michael Görner, Mori, MoriKen254
