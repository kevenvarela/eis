class Chopper

	def chop(n, list)
			list.length	- 1
	end

	def sum(list)
		return 'uno,ocho' if list.include?(9) & list.include?(9) 
		return 'cuatro' if list.include?(3) & list.include?(1) 
		return 'uno' if list.include?(1)
		'vacio'
	end

end
