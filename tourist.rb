require 'pry'
require 'pp'
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
      @instances = []
      @number.times do
        @array[@count][2] = Time.parse(@array[@count][2])
        @array[@count][3] = Time.parse(@array[@count][3])
        @array[@count][4] = @array[@count][4].to_f
        @array[@count].each_slice(5) {|from, to, departure,check,cost| @instances << Flight.new(from,to,departure,check,cost) }
        @count +=1
      end
      @block << @instances
      @position += @count - 1
      @count += 1
    end
    @block
  end
end
class Calculate
  def initialize(block)
    @block = block
  end
  def across_ways
    (@block[0].length).times do |x|
      pp "from #{@block[0][x].from} to #{@block[0][x].to}"
   end
  end
    ##A 
    ##->B
    ##-> C
    ##-> Z
    ##->C
    ##-> Z
    ##->Z
  def cheap_way
  end

  def fast_way
  end
end
##calar
file = PrepareData.new
datos = file.separate_blocks
calculo = Calculate.new(datos)
calculo.across_ways

