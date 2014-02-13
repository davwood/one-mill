require 'spec_helper'

describe Counting do 

	it "should convert the number '1' to the word 'one' " do
	
	
	expect(converter.convert(1)).to eq 'one'
	end

	it "should convert the number '2' to the word 'two " do
	expect(converter.convert(2)).to eq 'two'
	end

	it "should convert the number '5' to the word 'five' " do
	expect(converter.convert(5)).to eq 'five'
	end

end
