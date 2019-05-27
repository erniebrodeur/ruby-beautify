require "bundler/gem_tasks"
require "rspec/core/rake_task"
require "open-uri"
### Configurables

files = {
  Gemfile:         'https://gist.githubusercontent.com/erniebrodeur/5a5518f5051210f1828a0712bf623dc8/raw',
  Rakefile:        'https://gist.githubusercontent.com/erniebrodeur/afc92b72158413aa1f85d8d1facd267a/raw',
  Rubocop:         'https://gist.githubusercontent.com/erniebrodeur/f7f63996ef1e017aee9bf9d8e680a1df/raw',
  Tasks:           'https://gist.githubusercontent.com/erniebrodeur/03573fecf4f274101c14f6802abdbe83/raw',
  BinAdd:          'https://gist.githubusercontent.com/erniebrodeur/a815ee4d8bd9ccc54d91025a5543ebb8/raw',
  VsCodeFormatter: 'https://gist.githubusercontent.com/erniebrodeur/b24d757c0c625d108019eaceff2234cc/raw'
}

# spec
RSpec::Core::RakeTask.new(:spec)
task default: :spec

# automagical updating
desc "updates for various bits of the development environment."

namespace :update do
  desc "update everything (multitasked)"
  multitask(all: [:gemfile, :rakefile, :rubocop, :tasks, :vscode_formatter])

  desc 'Update Gemfile from gist'
  task :gemfile do
    grab_file 'Gemfile', files[:Gemfile]
  end

  desc 'Update Rakefile from gist'
  task :rakefile do
    grab_file 'Rakefile', files[:Rakefile]
  end

  desc 'Update .rubocop.yml from gist'
  task :rubocop do
    grab_file '.rubocop.yml', files[:Rubocop]
  end

  desc 'Update .vscode/tasks.json from gist'
  task :tasks do
    mkdir_p '.vscode'
    grab_file '.vscode/tasks.json', files[:Tasks]
  end

  desc 'Update vscode_formatter.rb in spec_helper'
  task :vscode_formatter do
    mkdir_p 'spec'
    grab_file 'spec/vscode_formatter.rb', files[:VsCodeFormatter]
  end

  desc 'Add a new lib and spec file (binary)'
  task :binadd do
    mkdir_p 'bin'
    grab_file 'bin/add', files[:BinAdd]
  end
end

def grab_file(filename, uri)
  File.write filename, OpenURI.open_uri(uri).read
  puts "Updated #{filename} from: #{uri}"
end

