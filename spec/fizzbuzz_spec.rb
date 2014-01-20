require './fizzbuzz'

describe "Fizzbuzz" do 

	let(:fizzbuzz) { FizzBuzz.new }

	it "should return n if we pass 1 to it" do
		expect(fizzbuzz.entry(1)).to eq(1)
	end

	it "should return fizz if we pass it 3" do
		expect(fizzbuzz.entry(3)).to eq("fizz")
	end

	it "should return buzz if we pass 5" do
		expect(fizzbuzz.entry(5)).to eq("buzz")
	end

	it "should return fizzbuzz if we pass 15" do
		expect(fizzbuzz.entry(15)).to eq("fizzbuzz")
	end

	it "should filter through fizzbuzz" do
		expect(fizzbuzz).to receive(:entry).exactly(100).times
		fizzbuzz.range		
	end
end