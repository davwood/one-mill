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


	def count_to_ninty_nine(number)
		if (1..20).include?(number)
			@words[number]
		elsif [30, 40, 50, 60, 70, 80, 90].include?(number)
			@words[number]
		else
			array = number.to_s.split("")
			@words[(array[0] + "0").to_i] + " " + @words[array[1].to_i]
		end 
    end 

	def count_to_nine_hundred_ninty_nine(number=0)
    	
    	array = number.to_s.split("")

		if (1..20).include?(number)
			@words[number]
		elsif [30, 40, 50, 60, 70, 80, 90].include?(number)
			@words[number]
		elsif number < 100 
			@words[(array[0] + "0").to_i] + " " + @words[array[1].to_i]
		else
			last_two_digits = (array[1]+ array[2]).to_i
			if last_two_digits == 0
				@words[array[0].to_i] + " hundred"
			else
        		@words[array[0].to_i] + " hundred" + " and " + count_to_ninty_nine(last_two_digits) 
        	end
        end

	end 

	def count_to_thousand_and_above(number=0)

		array = number.to_s.split("")
		n = array.length
		last_three_digits = (array[-3]+array[-2]+array[-1]).to_i

		if n == 6 
			count_to_nine_hundred_ninty_nine((array[0]+array[1]+array[2]).to_i) +
  			" thousand " + above_100?(last_three_digits) +
			count_to_nine_hundred_ninty_nine(last_three_digits)
		elsif n == 5
			count_to_nine_hundred_ninty_nine((array[0]+array[1]).to_i) +
  			" thousand " + above_100?(last_three_digits) +
			count_to_nine_hundred_ninty_nine(last_three_digits)
 		else 
 			count_to_nine_hundred_ninty_nine(array[0].to_i) +
  			" thousand " + above_100?(last_three_digits) +
			count_to_nine_hundred_ninty_nine(last_three_digits)
		end
	end

	def above_100?(number)
		if number >= 100
			return ""
		else 
			return "and " 
		end
	end

    def convert(i=0)


      if i == 1000000

      	puts "one million"
      elsif (1..999).include?(i)
      	count_to_nine_hundred_ninty_nine(i)
      elsif (1000..999999).include?(i)
      	count_to_thousand_and_above(i)
      elsif i > 1000000
      	puts "greater than one million +"
      	# if the number is above one million, throw an error
      else 
      	puts "less than zero. Positive number needed"
      end

    end 

end