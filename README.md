# RBeautify

This gem provides a cli binary named 'rbeautify' that will pretty up ruby code.


## Installation

    % gem install ruby-beautify

## Usage

To Pretty up a file:

    % rbeautify filename

Without a filename it reads from STDIN, suitable for piping:

    % curl 'http://example.org/ugly-file.rb' | rbeautify

It has help:

    % rbeautify --help

You can pick your indent character:

    % rbeautify --(t)abs

    % rbeautify --(s)paces

You can also pick the count of characters:

    % rbeautify --indent_(c)ount 1

Examples:

    % rbeautify -c 2 -s filename

    % rbeautify filename

    % rbeautify -t -c 2 filename

## Bugs

  I don't have every ruby style tested against, so I expect some gaps.  Feel free to submit issues (please include an example) and I'll figure out how to 'beautify' it.

Please feel free to open issues, I am actively working on this project again, thanks entirely to the ripper gem. 

## Todo

  * Add vim style comment hinting.
  * Add overwrite in place to files.
  * Add 'best guest' for files that fail syntax checking.
  * Add syntax checking to files rendered via STDIN.

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
