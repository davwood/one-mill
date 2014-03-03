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


	def count_to_nine(number=0)
		@words[number]
	end

	def count_to_ninty_nine(number)
		if (10..20).include?(number)
			@words[number]

		elsif [30, 40, 50, 60, 70, 80, 90].include?(number)
			@words[number]

		else
			array=number.to_s.split("")
			@word[(array[0] + "0").to_i] + @word[array[1].to_i]
		end 
    end 

	def count_to_nine_hundred_ninty_nine(number=0)
		array=number.to_s.split("")
		last_two_digital = (array[1]+ array[2]).to_i
        @word[array[0].to_i] + "hundred" + count_to_ninty_nine(last_two_digital)

	end 

	def count_above_thousand(number=0)
		array=number.to_s.split("")
		array.length = n
        number_of_thousand(n)+"thousand"+count_to_nine_hundred_ninty_nine(last_three_digital)
		
		 	
		private def number_of_thousand(n=0)
		  m=(n-3)%3
		  if m==3
			 count_to_nine_hundred_ninty_nine((array[0]+array[1]+array[2]).to_i)
          elsif m==2
             count_to_ninty_nine((array[0]+array[1]).to_i)
          else
          	 count_to_nine(array[0].to_i)
          end 
	    end 
	end 


    def convert(i=0)
      if (1..9).include?(i)
     	count_to_nine(i)
      elsif (10..99).include?(i)
      	count_to_ninty_nine(i)
      elsif (100..999).include?(i)
      	count_to_nine_hundred_ninty_nine(i)
      elsif (1000..999999).include?(i)
      	count_to_thousand_and_above(i)
      elsif i == 1000000
      	puts "one million"
      #else
      	# if the number is above one million, throw an error
      end
    end 

end