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
class FindWays
  def initialize(block)
    @block = block
  end
  def across_ways
    @@count = 0
   #pp @block[@@count].sort
    #@block.sort! {|a,b| a}
   #myarray.sort! { |a, b|  a.attribute <=> b.attribute } 
    #@a = @block.sort_by { |block,key|
      #puts key.from
    #}
    while @@count <= @block.length - 1 
      ('A'..'Z').each do |x|
        (@block[@@count].length).times do |y|  
           if @block[@@count][y].from == x and (@block[@@count][y].to == x.next or(("{x.next}"..'Z').each {|x| x.next}) )
             pp @block[@@count][y]
           end
        end
      end
      pp "======="
      @@count +=1
    end
  end
  def cheap_way
  end

  def fast_way
  end
end
##calar
file = PrepareData.new
datos = file.separate_blocks
calculo = FindWays.new(datos)
calculo.across_ways

