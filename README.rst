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
    ln -s /usr/local/xspec-0.4.0rc1/bin/xspec.sh /usr/local/bin/xspec

Setup
=====

Use *xspec.properties* file to provide settings like Xspec home folder and Saxon home folder.

Run
===

The tutorial folder contains the files you can find in xspec tutorial, just to check works.

::

    ant -Dxspec.xml=tutorial/escape-for-regex.xspec

.. _Java: http://openjdk.java.net/
.. _Ant: http://ant.apache.org/
.. _Saxon: http://saxon.sourceforge.net/
.. _Xspec: http://code.google.com/p/xspec/
.. _BDD: http://en.wikipedia.org/wiki/Behavior-driven_development
.. _Fedora: http://fedoraproject.org/
