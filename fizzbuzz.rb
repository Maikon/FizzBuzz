class FizzBuzz
	
	def divisible_by(a, b)
		a % b == 0
	end

	def entry(n)
		if divisible_by(n, 15)
			n = "fizzbuzz"
		elsif divisible_by(n, 3)
			n = "fizz"
		elsif divisible_by(n, 5)
			n = "buzz"
		end
		n
	end

	
	def range
		(1..100).map {|number| entry(number)}		
	end

end

puts FizzBuzz.new.range