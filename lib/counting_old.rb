class Counting

	def initialize(max)
		@max = max
		@basic_numbers = ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten"] 
		@teens = ["eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]
		@numbers_ty = ["twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]
		@hundred = "hundred"
		@thousand = "thousand"
	end

	def count_in_numbers
		i = 0

		while i <= @max do
			puts i 
			i = i + 1
		end
	end


	def count_in_words
		#count to 10
		@basic_numbers.each do |num|
			puts "#{num}"
		end

		#count 11 - 19
		@teens.each do |teen|
			puts "#{teen}"
		end

		#count 20-99
		@numbers_ty.each do |number_ty|

			@basic_numbers.each do |number|
				puts "#{number_ty}" + "-" "#{number}"
			end
		end

		#count 120-999
		@basic_numbers.each do |hundred|

			@numbers_ty.each do |number_ty|

				@basic_numbers.each do |number|
					puts "#{hundred}" + " hundred" + " and" "#{number_ty}" + "-" "#{number}"
				end
			end
		end

	end

end