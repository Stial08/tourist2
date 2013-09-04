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
    @position = 1
    @block = []
    @iterations.times do
      @number = (@array[@position][0].to_i)
      @complement = []
      @number.times do
        @complement << @array[@count]
        @count +=1
      end
      @block << @complement
      @position += @count - 1
      @count += 1
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
  file = PrepareData.new
  file.separate_blocks
