# .irbrc
# vim: set syntax=ruby :
require 'irb/completion'
require 'irb/ext/save-history'
require 'fileutils'
require 'pp'
require 'rubygems'
require 'ruby/copypaste'
require 'ruby/interactive_editor'
require 'ruby/string_extensions'

ARGV.concat [ "--readline",
  "--prompt-mode",
  "simple" ]

# 25 entries in the list
IRB.conf[:SAVE_HISTORY] = 25

# Store results in home directory with specified file name
IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb-history"
IRB.conf[:PROMPT_MODE] = :SIMPLE

