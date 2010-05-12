# .irbrc
# vim: set syntax=ruby :
require 'irb/completion'
require 'irb/ext/save-history'
require 'fileutils'
require 'pp'

%w[
  rubygems
  ap
  ruby/copypaste
  ruby/interactive_editor
  ruby/object_extensions
  ruby/pipe
].each do |gem|
  begin
    require gem
  rescue LoadError
  end
end


ARGV.concat [ "--readline",
  "--prompt-mode",
  "simple" ]

# 25 entries in the list
IRB.conf[:SAVE_HISTORY] = 1000

# Store results in home directory with specified file name
IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb-history"
IRB.conf[:PROMPT_MODE] = :SIMPLE
