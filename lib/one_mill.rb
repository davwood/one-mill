class One_million
	def initialize 
		@words {
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

		def count_99(num)
		num = num
		array = num.to_s.split("")
		
		if num == 0
			 ""
	    # elsif @words[array.join.to_i].nil? 
		elsif @words[num].nil? 
			@words[(array[0] + "0").to_i] + " " + @words[array[1].to_i]
		else 
			@words[array.join.to_i]
		end
	end
	
end 