# Giles Bowkett, Greg Brown, and several audience members from Giles' Ruby East presentation.
# http://gilesbowkett.blogspot.com/2007/10/use-vi-or-any-text-editor-from-within.html
require 'tempfile'

module Exec
  extend self

  def system(file, *args)
    Kernel::system(file, *args)
  end
end

if RUBY_PLATFORM =~ /java/
  require 'ffi'

  Exec.extend(FFI::Library)
  Exec.class_eval do

    attach_function :ffi_execlp, :execlp, [:string, :string, :varargs], :int
    attach_function :fork, [], :int

    def system(file, *args)
      var_args = (args.map { |a| [:pointer, a.to_s] } + [:pointer, nil]).flatten
      if Exec.fork == 0
        ffi_execlp(file, file, *var_args)
      end

      Process.waitall.each do |(pid, status)|
        raise "status code: #{status}" unless status == 0
      end
    end
  end
end

class InteractiveEditor
  attr_accessor :editor

  def initialize(editor)
    @editor = editor.to_s
  end

  def edit(file=nil)
    @file = if file 
       FileUtils.touch(file) unless File.exist?(file)
       File.new(file)
      else
       (@file && File.exist?(@file.path)) ? @file : Tempfile.new(["irb_tempfile", ".rb"])
    end
    mtime = File.stat(@file.path).mtime 
    Exec.system(@editor, @file.path)

    execute if mtime < File.stat(@file.path).mtime
  end

  def execute
    Object.class_eval(IO.read(@file.path))
  end

  def self.edit(editor, file=nil)
    #idea serialise last file to disk, for recovery
    unless IRB.conf[:interactive_editors] && IRB.conf[:interactive_editors][editor]
      IRB.conf[:interactive_editors] ||= {}
      IRB.conf[:interactive_editors][editor] = InteractiveEditor.new(editor)
    end
    IRB.conf[:interactive_editors][editor].edit(file)
  end
end

class << self
  def vi(name=nil)
     InteractiveEditor.edit('vi', name)
  end

  def gvim(name=nil)
    InteractiveEditor.edit('/Applications/MacVim.app/Contents/MacOS/Vim -g -f', name) 
  end
  
  def mate(name=nil)
    InteractiveEditor.edit('mate -w', name)
  end
  
  def emacs(name=nil)
    InteractiveEditor.edit('emacs', name)
  end

  def nano(name=nil)
    InteractiveEditor.edit('nano', name)
  end

  def pbcopy(stuff)
    IO.popen('pbcopy', 'w+') {|clipboard| clipboard.write(stuff)}
  end
end

