require 'pry'
require 'time'
require 'enumerator'
class Flight
  attr_accessor :from
  attr_accessor :to
  attr_accessor :departure
  attr_accessor :check
  attr_accessor :cost

  def initialize(from, to, departure, check,cost)
      @from = from
      @to = to
      @departure = departure
      @check = check
      @cost = cost
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
    @position = 1
    @block = []
    @iterations.times do
      @number = (@array[@position][0].to_i)
      @complement = []
      @number.times do
        @array[@count][2] = Time.parse(@array[@count][2])
        @array[@count][3] = Time.parse(@array[@count][3])
        @complement << @array[@count] 
        @count +=1
      end
      @block << @complement
      @position += @count - 1
      @count += 1
    end
    binding.pry
  end
end
class Calculate < PrepareData
  def across_ways
    ##A 
      ##->B
        ##-> C
        ##-> Z
      ##->C
        ##-> Z
      ##->Z
  end
  
  def cheap_way
  end

  def fast_way
  end
end

##calar 
  file = Calculate.new
  file.separate_blocks
  file.across_ways
