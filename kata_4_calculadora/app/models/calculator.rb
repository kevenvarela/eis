class Calculator
 
  def calculate(operator1, operator2, operation)
	operator1.send(operation, operator2)
  end
end

class Fixnum
	def average(op)
		(self + op) / 2
	end
end