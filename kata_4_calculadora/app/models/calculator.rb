class Calculator
	attr_reader :memory

	def initialize
    @memory = 0
	end

  def calculate(args)
  	increment_memory
	  args[0].send(args[2], args[1])
  end

  def refresh
    @memory = 0
  end

  private

  def increment_memory
  	@memory=memory+1
  end
end

class Fixnum
  def average(op)
    (self + op) / 2
  end
end
