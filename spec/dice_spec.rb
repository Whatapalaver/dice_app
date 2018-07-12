require './lib/dice.rb'

describe Dice do
	
	it { is_expected.to respond_to :roll }
	
	it 'roll returns a whole number' do
   	dice = Dice.new
   	expect(dice.roll).to be_an_instance_of(Integer)
  end	

  it 'roll returns between 1 and 6' do
   	dice = Dice.new
   	expect(dice.roll).to be_between(1,6).inclusive
  end	

  it 'should resemble randomness' do
  	dice = Dice.new
  	array1 = []
 		array2 = []
		10.times {array1 << dice.roll}
 		10.times {array2 << dice.roll}
 		expect(array1).not_to eq (array2)
  end
	
end