# knife Info [![Build Status](https://travis-ci.org/outofjungle/knife-info.png?branch=master)](https://travis-ci.org/outofjungle/knife-info)

## Description

This is an EXPERIMENTAL knife plugin that displays the information from the `knife.rb` config file in the kinfe search path.

## Installation

This knife plugin is packaged as a gem.  To install it, clone the
git repository and run the following:

    rake install

## Subcommands

### `knife info [options]`

*Options*

  * `--tiny`: Show concise information in oneline
  * `--medium`: Show important information in oneline
  * `--long`: Show all information in multi-lines

## TODO

* Support for `--[no-]color` option
