# This extension adds a UNIX-style pipe to strings
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

