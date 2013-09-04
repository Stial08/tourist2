require 'pry'
class Tourist
end

class OpenFile
  def open_file
    file = File.new('files/sample-input.txt','r')
    @array = []
    while line = file.gets
      @array << line.split(" ") unless line == "\n"
    end
  end
end

class Steve < Tourist
  def cheap_way
  end
end

class Jenifer < Tourist
  def fast_way
  end
end

##calar 
  file = OpenFile.new
  file.open_file
