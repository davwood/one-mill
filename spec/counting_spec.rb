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

  it "should convert the number '121' to the word 'one hundred and twenty one' " do
    expect(converter.convert(121)).to eq 'one hundred and twenty one'
  end

  it "should convert the number '1121' to the word 'one thousand one hundred and twenty one' " do
    expect(converter.convert(1121)).to eq 'one thousand one hundred and twenty one'
  end


  it "should convert the number '11121' to the word 'one hundred and twenty one' " do
    expect(converter.convert(11121)).to eq 'eleven thousand one hundred and twenty one'
  end

  it "should convert the number '111121' to the word 'one hundred and twenty one' " do
    expect(converter.convert(111121)).to eq ' one hundred and eleven thousand one hundred and twenty one'
  end

  it "should convert the number '1000000' to the word 'one million' " do
    expect(converter.convert(1000000)).to eq ' one million'
  end

end
