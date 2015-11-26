# Getting Ruby and Sinatra setup
Hopefully you'll have time to do this at home so that things move quickly in class. No worries if you run into issues, it happens to literally every developer when they're starting out. We'll have plenty of time in class to make sure everyone is setup.

## Ensure Ruby is installed
Open up the Terminal application and type:

    ruby -v

You should see it print out your ruby version (maybe 1.9.3 or 2.1.2 or something similar). If so, you've got ruby all setup! If not, try using [one of these installers](https://www.ruby-lang.org/en/documentation/installation/#installers). I'd recommend ruby-build if you're on a mac, and there is also an option for windows.

## Install Sinatra
In the same terminal window, run the following 2 commands

    gem install sinatra --no-ri --no-rdoc
    gem install sinatra-reloader --no-ri --no-rdoc
    gem install sequel sinatra-sequel --no-ri --no-rdoc
    gem install sqlite3 --no-ri --no-rdoc

You should see it start to install Sinatra and a bunch of other "gems" (basically just libraries or tools). This make take a while.

## Try running the "hello world" application
In your terminal window, use the `cd` command to change into the directory where you downloaded the day 2 materials. For example, if you downloaded them to your desktop, you'd run:

    cd ~/Desktop/day-2/

If you run `ls -l` in here, you should see the contents of that directory printed out to your terminal.

Now simply run the following command in your terminal:

    ruby hello_world.rb

You should see a WEBrick server startup. Open your browser and visit this URL, and it should say "Hello World!":

[http://localhost:4567/](http://localhost:4567/)

If so, you're all set!