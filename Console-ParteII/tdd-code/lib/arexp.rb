class ArithmeticExpression
	def initialize(str)
		@str = str
	end
	def calculate()
		if @str.eql? ""
			return 0
		else
			i = 0 
			@str.split(",").each do |v|
				i = i + v.to_i
			end
			return i
		end
	end
end