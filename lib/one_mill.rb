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

	end

	def count_99(num)
	 num = num
	 array = num.to_s.split("")
		
		if num == 0
			 ""
		elsif @words[num].nil? 
			@words[(array[0] + "0").to_i] + " " + @words[array[1].to_i]
		else 
			@words[array.join.to_i]
		end
	end 


	def count_999(array)
		array999 = array
		if array999(0) = nil
			count_99(array999[1,2].join.to_i)
		elsif array999(0)="0"
			"and " + count_99(array999[1,2].join.to_i)
		else 
			@words[array999[0].to_i] + " hundred " + "and " + count_99(array999[1,2].join.to_i)
		end

	end

	
	def convert_array(array)
	    num_array=array
	  while num_array.length < 6
        num_array.push(nil)
      end 
      num_array.reverse
      array_1=num_array[0..2]
      array_2=num_array[3..5]
      count_999(array1) + " thousand " + count_999(array_2)
     end 

	def convert(number)

		number_array = i.to_s.split("")
		number_length = number_array.length

		if number_length == 7
				"One million!"
			elsif number_length > 7
				"Error Message: please give a number less than one million"

			else
				convert_array(number_array)
		end

	end 

end 