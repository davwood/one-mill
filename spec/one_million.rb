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

  it "should convert the number '861' to the word 'eight hundred and sixty one' " do
    expect(converter.convert(861)).to eq 'eight hundred and sixty one'
  end

  it "should convert the number '2104' to the word 'two thousand one hundred and four' " do
    expect(converter.convert(2104)).to eq 'two thousand one hundred and four'
  end

  it "should convert the number '32104' to the word 'thirty two thousand one hundred and four' " do
    expect(converter.convert(32104)).to eq 'thirty two thousand one hundred and four'
  end

  it "should convert the number '164508' to the word 'one hundred and sixty four thousand five hundred and eight' " do
    expect(converter.convert(164508)).to eq 'one hundred and sixty four thousand five hundred and eight'
  end

  it "should convert the number '413560' to the word 'four hundred and thirteen thousand five hundred and sixty' " do
    expect(converter.convert(413560)).to eq 'four hundred and thirteen thousand five hundred and sixty'
  end

  it "should convert the number '400060' to the word 'four hundred thousand and sixty' " do
    expect(converter.convert(400060)).to eq 'four hundred thousand and sixty'
  end

  it "should convert the number '400' to the word 'four hundred' " do
    expect(converter.convert(400)).to eq 'four hundred'
  end
end
