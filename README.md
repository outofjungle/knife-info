# knife Info 
[![Gem Version](https://badge.fury.io/rb/knife-info.png)](http://badge.fury.io/rb/knife-info)
[![Build Status](https://travis-ci.org/outofjungle/knife-info.png?branch=master)](https://travis-ci.org/outofjungle/knife-info)
[![Code Climate](https://codeclimate.com/github/outofjungle/knife-info.png)](https://codeclimate.com/github/outofjungle/knife-info)
[![Dependency Status](https://gemnasium.com/outofjungle/knife-info.png)](https://gemnasium.com/outofjungle/knife-info)

## Description

This is an EXPERIMENTAL knife plugin that displays information from `knife.rb` config file in knife's configuration file search path.

## Installation

This knife plugin is packaged as a gem. To install it, clone this
git repository and run the following command:

    rake install

## Subcommands

### `knife info [options]`

*Options*

  * `--tiny`: Show concise information in oneline
  * `--medium`: Show important information in oneline
  * `--long`: Show all information in multi-lines

## TODO

* Support for `--[no-]color` option
* Support for `json` output
