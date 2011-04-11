# HOT Kit Generator

## Description:

Create a new Hot Kit in a given **root directory** from a given **directory structure configuration** which is a yaml file.

If no **root directory** is given then it creates a new kit in a default location.
If the directory structure is not given it will use the default one

## Installation:

### Using RVM
    git clone git://github.com/sabman/HOT-Kit-Generator.git
    cd HOT-Kit-Generator
    bundle install
    rake install

### Using System Ruby

    sudo bundle install
    sudo rake install

Make sure bundler is installed. If not you will need to run the following before running the above (Thanks Dane Springmeyer):

    sudo gem update --system # because bundle would not gem install do to old rubygems
    sudo gem install bundler

## Usage:

    hot_kit_generator -h
    Usage: hot_kit_generator [options] root_dir dir_config_file

        root_dir:         Root directory for a new HOT kit default: "__HOT_Kit"
        dir_config_file:  HOT directory structure default: ".../meta/directory_structure.yml"

        -h, --help      Print this help message


## Tests:

    rspec spec/hot_kit_generator_spec.rb

## TODO:

* Add ability to specify and download web resources in the configuration file
* Allow a configuration file itself to be a web resource
* Allow geospatial resources such as OSM data to be scoped by bounding box
* Write more specs/tests
