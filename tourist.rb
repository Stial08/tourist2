require 'pry'
class Toznurist
  def initialize
  end
end

class OpenFile
  def open_file
    file = File.new('/files/sample.input.txt',''r)
    @array = []
    while line = file.gets
      @array << file.split(" ") unless line == "\n"
    end
  binding.pry
  end
end

class Steve < Tourist
end

class Jenifer < Tourist
end

##calar 
  file OpenFile.new
  file.openfile
