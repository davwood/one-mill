require 'spec_helper'

describe Counting do 
	let(:converter) { Counting.new }

	it "should convert the number '1' to the word 'one' " do

	expect(converter.convert(1)).to eq 'one'
	end

	it "should convert the number '2' to the word 'two " do

	expect(converter.convert(2)).to eq 'two'
	end

	it "should convert the number '5' to the word 'five' " do

	expect(converter.convert(5)).to eq 'five'
	end

	 it "should convert the number '10' to the word 'ten' " do
    expect(converter.convert(10)).to eq 'ten'
  	end  

	it "should convert the number '14' to the word 'fourteen' " do
	expect(converter.convert(14)).to eq 'fourteen'
	end

  it "should convert the number '19' to the word 'nineteen' " do
    expect(converter.convert(19)).to eq 'nineteen'
  end

  it "should convert the number '20' to the word 'twenty' " do
    expect(converter.convert(20)).to eq 'twenty'
  end

  it "should convert the number '21' to the word 'twenty one' " do
    expect(converter.convert(21)).to eq 'twenty one'
  end

end
