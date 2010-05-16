# .irbrc
# vim: set syntax=ruby foldmethod=marker :
require 'irb/completion'
require 'irb/ext/save-history'
require 'fileutils'
require 'pp'

%w[
  rubygems
  ap
  interactive_editor
].each do |gem|
  begin
    require gem
  rescue LoadError
  end
end


ARGV.concat [ "--readline",
  "--prompt-mode",
  "simple" ]

# 1000 entries in the list
IRB.conf[:SAVE_HISTORY] = 1000

# Store results in home directory with specified file name
IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb-history"
IRB.conf[:PROMPT_MODE] = :SIMPLE

# Copy/Paste stuff for OS X {{{1
def copy(str)
  IO.popen('pbcopy', 'w') { |f| f << str.to_s }
end

def copy_history
  history = Readline::HISTORY.entries
  index = history.rindex("exit") || -1
  content = history[(index+1)..-2].join("\n")
  puts content
  copy content
end

def paste
  `pbpaste`
end

# This extension adds a UNIX-style pipe to strings {{{1
#
# Synopsis:
#
# >> puts "UtilityBelt is better than alfalfa" | "cowsay"
#  ____________________________________
# < UtilityBelt is better than alfalfa >
#  ------------------------------------
#         \   ^__^
#          \  (oo)\_______
#             (__)\       )\/\
#                 ||----w |
#                 ||     ||
# => nil
class String
  def |(cmd)
    IO.popen(cmd.to_s, 'r+') do |pipe|
      pipe.write(self)
      pipe.close_write
      pipe.read
    end
  end
end
