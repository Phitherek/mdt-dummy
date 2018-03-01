# MDT - Dummy module

A dummy module for [MDT](https://github.com/Phitherek/mdt-core "MDT").

## Requirements

* [mdt-core](https://github.com/Phitherek/mdt-core "mdt-core") >= 0.0.1
* Ruby (tested with 2.5.0, earlier versions down to 2.0 may also work)
* RubyGems

## Installation

`gem install mdt-dummy`

## Usage

The module is automatically loaded by `mdt`. All you need to do is to use appropriate keys in your `mdt-deploy.yml`.

## Objects defined by module

### Command modifiers

* `dummy.dummy` - prints the diagnostic message and returns exactly the command or expression that it is given with no changes

### Commands

* `dummy.dummy` - prints the diagnostic message, executes all of the given command modifiers in order with command being empty string and returns 0 (success)

### Directory choosers

* `dummy.dummy` - `mkdir` prints the diagnostic message and returns 0 (success), `cd` prints the diagnostic message and returns 0 (success), `rm` prints the diagnostic message and returns 0 (success)

### Fetchers

* `dummy.dummy` - prints the diagnostic message and returns 0 (success)

## Contributing

You can contribute to the development of this MDT module by submitting an issue or pull request.

## Documentation

Generated RDoc documentation can be found [here](http://www.rubydoc.info/github/Phitherek/mdt-dummy "here").