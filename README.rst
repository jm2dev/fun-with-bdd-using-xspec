===================
XSLT BDD with Xspec
===================

:Author:
   José Miguel Martínez Carrasco
:version:
   1.0.0
:date:
   17-12-2013

Introduction
============

I wanted to apply *behaviour driven development* (BDD_) techniques to XSLT development.

Requirements
============

- Java_
- Xspec_
- Saxon_
- Ant_

Here are the commands to install them on Fedora_ linux 19::

    yum install java-1.7.0-openjdk ant saxon
    cd /usr/local
    wget 'http://xspec.googlecode.com/files/xspec-0.4.0rc1.zip'
    unzip xspec-0.4.0rc1.zip

For OSX I have used homebrew::

  brew install ant ivy

Setup
=====

Use *xspec.properties* file to provide settings like Xspec home folder and Saxon home folder::

   # saxon system binary
   saxon.jar.unix=/usr/share/java/saxon.jar


If you don't have saxon installed, an ivy task is provided to download it for you. As the saxon jar file is operating system dependent, you need to populate relevant properties::

   # saxon ivy binary
   saxon.jar.unix=./lib/Saxon-HE-9.4.jar
   saxon.jar.mac=./lib/Saxon-HE-9.4.jar

If you go for the second approach, run this command to get saxon library::

  ant resolve

Run
===
This is the default task, just especify the specification file to process.

The tutorial folder contains the files you can find in xspec tutorial, just to check works.

::

    ant -Dxspec.xml=tutorial/escape-for-regex.xspec

Note for MacOSX users, you need to specify ivy libraries location::

  ant -lib /usr/local/Cellar/ivy/2.3.0/libexec/ -Dxspec.xml=tutorial/escape-for-regex.xspec

Check *build.sh* script if you don't like typing.

Debug
=====

There is an *echoproperties* task useful for debugging purpuoses.

Clean
=====

Just run the *clean* task to delete the directory containing output reports.

.. _Java: http://openjdk.java.net/
.. _Ant: http://ant.apache.org/
.. _Saxon: http://saxon.sourceforge.net/
.. _Xspec: http://code.google.com/p/xspec/
.. _BDD: http://en.wikipedia.org/wiki/Behavior-driven_development
.. _Fedora: http://fedoraproject.org/
