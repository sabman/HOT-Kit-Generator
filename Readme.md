# HOT Kit Generator

## Description:

Create a new Hot Kit in a given **root directory** from a given **directory structure configuration** which is a yaml file.

If no **root directory** is given then it creates a new kit in a default location.
If the directory structure is not given it will use the default one

## Usage:

    hit_kit_generator -h

## Tests:

    rspec spec/hot_kit_generator_spec.rb

## TODO:

* Add ability to specify and download web resources in the configuration file
* Allow a configuration file itself to be a web resource
* Allow geospatial resources such as OSM data to be scoped by bounding box
* Write more specs/tests
