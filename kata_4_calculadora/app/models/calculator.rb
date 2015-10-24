class Calculator

	def calculate(operator1, operator2, operation)
		puts 'Operator 1:' + operator1.to_s
		puts 'Operator 2:' + operator2.to_s
		puts 'Operation:' + operation.to_s

		operator1.send(operation.to_sym, operator2)
	end
end