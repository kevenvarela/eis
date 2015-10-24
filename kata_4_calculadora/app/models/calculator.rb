class Calculator
	attr_reader :memory

	def initialize
    @memory = 0
	end

  def calculate(operator1, operator2, operation)
  	increment_memory
	  operator1.send(operation, operator2)
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