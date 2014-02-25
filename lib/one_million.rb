class Onemillion

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


	def convert(i)
		number_array = i.to_s.split("")

		number_length = number_array.length

		case 
			when number_length == 7
				"One million!"
			when number_length == 6
				count_999(number_array.take(3).join.to_i) + " thousand" + 
				above100?(number_array[-3,3].join.to_i) + count_999(number_array[-3,3].join.to_i)
			when number_length == 5
				count_999(number_array.take(2).join.to_i) + " thousand" + 
				above100?(number_array[-3,3].join.to_i) + count_999(number_array[-3,3].join.to_i)
			when number_length == 4
				count_999(number_array.take(1).join.to_i) + " thousand" + 
				above100?(number_array[-3,3].join.to_i) + count_999(number_array[-3,3].join.to_i)
			else
				count_999(number_array.join.to_i)
		end

	end

	def count_999(number)
		array999 = number.to_s.split("")

		if array999.length == 3
			@words[array999[0].to_i] + " " + "hundred" + count_99(array999[1,2].join.to_i)
		else 
			count_99(array999.join.to_i)
		end

	end

	def count_99(num)
		num = num
		array = num.to_s.split("")
		
		if num == 0
			 ""
		elsif @words[array.join.to_i].nil? 
			@words[(array[0] + "0").to_i] + " " + @words[array[1].to_i]
		else 
			@words[array.join.to_i]
		end
	end

	def above100?(number)
		if number >= 100
			return ""
		else 
			return " and " 
		end
	end

end
