class Counting

	def initialize
		  @words = {
		    1 => 'one',
		    2 => 'two',
		    3 => 'three',
		    4 => 'four', 
		    5 => 'five', 
		    6 => 'six',
		    7 => 'seven',
		    8 => 'eight',
		    9 => 'nine',
		    10 => 'ten',
		    11 => 'eleven',
		    12 => 'twelve',
		    13 => 'thirteen',
		    14 => 'fourteen',
		    15 => 'fifteen',
		    16 => 'sixteen',
		    17 => 'seventeen',
		    18 => 'eighteen',
		    19 => 'nineteen',
		    20 => 'twenty',
		    30 => 'thirty',
		    40 => 'fourty',
		    50 => 'fifty', 
		    60 => 'sixty',
		    70 => 'seventy',
		    80 => 'eighty',
		    90 => 'ninety',
		  }
	end

	def convert(number)
		# convert the number to a string

		# count the numbers. 6 will be hundred thousand. 3 will be hundred etc.
		# split into parts
		# e.g. 1 3 4 7 2 1 

		# one hundred and thirty four thousand seven hundred and twenty one

		array = number.to_s.split("")

		if array.length = 2
			@word[(array[0] + "0").to_i] + @word[array[1].to_i]
		else
			@words[number]
		end
	end

	def count_to_twenty
		for i in 1..20 
			convert(i)
		end
	end

end