# README #
# ROR POC #


This README documents whatever steps are necessary to get ROR POC application up and running.

## What is this repository for? ##

* Quick summary
* Version

## Installing ROR POC on Linux (Windows may be more complicated) ##

### Configuration & Dependencies ###

Some of the gems do require their source code to be compiled. On a Linux, please install the latest version of XCode and its developer tools.

### Install PostgreSQL ###

    https://www.enterprisedb.com/postgres-tutorials/how-install-postgres-ubuntu

### Install RVM ###

Follow the instructions at http://rvm.io/:

    \curl -sSL https://get.rvm.io | bash -s stable

If you don't already have the current version of Ruby installed, you will need to install it.  This will tell you the version you need:

    cat .ruby-version

As of this writing, we use Ruby 2.7.3, so this would be the command:

    rvm install 2.7.3; cd ..; cd ror_poc

### Install Node.js using NVM  ###

    https://www.digitalocean.com/community/tutorials/how-to-install-node-js-on-ubuntu-18-04

### Install yarn ###

    https://classic.yarnpkg.com/en/docs/install/#debian-stable

### Install Bundler ###

    gem install bundler 
    
### Run bundler to download all the gems ###

    bundle install

### Database setup ###

If this is the first time you set up this project, you will need to run:

    rails db:environment:set RAILS_ENV=development
    rails db:drop && rails db:create && rails db:migrate && rails db:seed

### Start the server ###

    rails s

### Guidelines ###

	* please refer to: https://github.com/styleguide/ruby