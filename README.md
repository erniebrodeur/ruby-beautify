# Ruby Beautify
**Master** [![Code Climate](https://codeclimate.com/badge.png)](https://codeclimate.com/github/erniebrodeur/ruby-beautify) [![Build Status](https://travis-ci.org/erniebrodeur/ruby-beautify.png?branch=master)](https://travis-ci.org/erniebrodeur/ruby-beautify) [![Dependency Status](https://gemnasium.com/erniebrodeur/ruby-beautify.png)](https://gemnasium.com/erniebrodeur/ruby-beautify)
**Development** [![Build Status](https://travis-ci.org/erniebrodeur/ruby-beautify.png?branch=development)](https://travis-ci.org/erniebrodeur/ruby-beautify)

[![Gitter](https://badges.gitter.im/Join Chat.svg)](https://gitter.im/erniebrodeur/ruby-beautify?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

This gem provides a cli binary named 'ruby-beautify' that will pretty up ruby code.

Currenty, 'rbeautify' is included for backwards compatibility but will likely be phased out at some point.

## Installation

  % gem install ruby-beautify

## Usage

To Pretty up a file:

  % ruby-beautify filename

Without a filename it reads from STDIN, suitable for piping:

  % curl 'http://example.org/ugly-file.rb' | ruby-beautify

It has help:

  % ruby-beautify --help

You can pick your indent character:

  % ruby-beautify --(t)abs

  % ruby-beautify --(s)paces

You can also pick the count of characters:

  % ruby-beautify --indent_(c)ount 1

Examples:

  % ruby-beautify -c 2 -s filename

  % ruby-beautify filename

  % ruby-beautify -t -c 2 filename

## Bugs

I don't have every ruby style tested against, so I expect some gaps.  Feel free to submit issues (please include an example) and I'll figure out how to 'beautify' it.

Please feel free to open issues, I am actively working on this project again, thanks entirely to the ripper gem.

## Todo

* Add vim style comment hinting.
* Add overwrite in place to files.
* Add 'best guest' for files that fail syntax checking.
* Add syntax checking to files rendered via STDIN.
* Seperate the content of the main bin into a proper namespace/library (so it doesn't pollute by default).
* Split up the spec into multiple specs.
* remove the link to rbeautify (by 1.0).

Longer term I'd like to do some more to assignment, line wrapping, and spacing in/around keywords.

## Contributing

* fork it.
* create it.
* push it.
* pull it.

# History

The original analyzer is available at: http://www.arachnoid.com/ruby/rubyBeautifier.html.

My work is based off of this sublime-text2 plugin: https://github.com/CraigWilliams/BeautifyRuby but cleaned up and made suitable for use directly in a shell.

I've recently re-written this to use the stdlib `ripper` gem to do the lexical analyzing.  Consequently I've dropped all of the old legacy code that did this.
