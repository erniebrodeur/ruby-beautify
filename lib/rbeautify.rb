=begin
/***************************************************************************
 *   Copyright (C) 2008, Joel Chippindale, Paul Lutus                      *
 *                                                                         *
 *   This program is free software: you can redistribute it and/or modify  *
 *   it under the terms of the GNU General Public License as published by  *
 *   the Free Software Foundation, either version 3 of the License, or     *
 *   (at your option) any later version.                                   *
 *                                                                         *
 *   This program is distributed in the hope that it will be useful,       *
 *   but WITHOUT ANY WARRANTY; without even the implied warranty of        *
 *   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the         *
 *   GNU General Public License for more details.                          *
 *                                                                         *
 *   You should have received a copy of the GNU General Public License     *
 *   along with this program.  If not, see <http://www.gnu.org/licenses/>. *
 *                                                                         *
 ***************************************************************************/
=end

require 'rbeautify/block_start'
require 'rbeautify/block_end'
require 'rbeautify/block_matcher'
require 'rbeautify/language'
require 'rbeautify/line'

require 'rbeautify/config/ruby'

module RBeautify

  def self.beautify_string(language, source, use_tabs=false)
    dest = ""
    block = nil

    unless language.is_a? RBeautify::Language
      language = RBeautify::Language.language(language)
    end

    source.split("\n").each_with_index do |line_content, line_number|
      line = RBeautify::Line.new(language, line_content, line_number, block, use_tabs)
      dest += line.format + "\n"
      block = line.block
    end

    return dest
  end
end # module RBeautify
