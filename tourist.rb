require 'pry'
class Tourist
    def initialize
    end
end

class PrepareData
  def open_file
    file = File.new('files/sample-input.txt','r')
    @array = []
    while line = file.gets
      @array << line.split(" ") unless line == "\n"
    end
  end
  def separate_blocks
    open_file
    @iterations = (@array[0][0]).to_i
    @count = 2
    @array_size = @array.count
    #@iterations.times do |x|
     while @count <= @array_size
       
      end
    #end
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
  file = PrepareData.new
  file.separate_blocks
