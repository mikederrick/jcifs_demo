JCIFS_DEMO
==========

Just a simple project for messin' with jcifs, a cifs implementation in java.

Overview
--------

This is a simple sinatra app for demonstrating the jcifs library. Most of the meat is in jcifs.rb. Specify the path you intend to read along with the username and password in user.yml in the config directory. 

Installation
------------

You will need jruby installed on your machine.
From a command prompt, type the following commands:

*  _gem install bundler_ (Installs the bundler gem -- this is used to
   pull down all of the other gems needed for the sinatra application)
* _bundle_ (This will install all the necessary gem files to run the
  tests)
* _rackup_ (Invoke the ruby interpreter and start up the
  app with sinatra)