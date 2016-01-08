# Getting Ruby and Sinatra setup
Hopefully you'll have time to do this at home so that things move quickly in class. No worries if you run into issues, it happens to literally every developer when they're starting out. We'll have plenty of time in class to make sure everyone is setup.

## Ensure Ruby is installed
Open up the Terminal application and type:

    ruby -v

You should see it print out your ruby version (maybe 1.9.3 or 2.1.2 or something similar). If so, you've got ruby all setup! If not, try using [one of these installers](https://www.ruby-lang.org/en/documentation/installation/#installers). I'd recommend ruby-build if you're on a mac, and there is also an option for windows.

## Install Sinatra
In the same terminal window, run the following command:

    sudo gem install sinatra sinatra-reloader sequel sinatra-sequel sqlite3 --no-ri --no-rdoc

It will likely ask you for your computer user's password. This is what you type to logon to your machine, just type it in and hit enter. Note that *you won't see anything show up as you're typing your password*, just hit enter when you're done typing it.

You should see it start to install Sinatra and a bunch of other "gems" (basically just libraries or tools). This make take a while.

## Try running the "hello world" application
In your terminal window, use the `cd` command to change into the directory where you downloaded the Sunday materials. For example, if you downloaded them to your desktop, you'd run:

    cd ~/Desktop/programming-for-non-programmers/master/sunday/2-sinatra/

If you run `ls -l` in here, you should see the contents of that directory printed out to your terminal.

Now simply run the following command in your terminal:

    ruby bootcamp.rb

You should see a WEBrick server startup. Open your browser and visit this URL, and it should say "Hello World!":

[http://localhost:4567/](http://localhost:4567/)

If so, you're all set!
