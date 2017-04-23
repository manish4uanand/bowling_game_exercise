require 'rails_helper'

# RSpec.describe Bowling, type: :model do
#   pending "add some examples to (or delete) #{__FILE__}"
# end

describe 'Bowling game test' do

	# Its for creating Bowling Object, but not need same thing I am going to do in next test
	# it('can create object for Bowling') do
	# 	bowling = Bowling.new
	# 	p bowling
	# end

	# Here I am creating class level bowling
	before do
		@bowling = Bowling.new
	end

	it('can roll to knocks down') do
		20.times{@bowling.roll 0}
		expect(@bowling.score).to eq 0

	end

	it('can knocks down in 1 roll') do
		20.times{@bowling.roll 1}
		expect(@bowling.score).to eq 20
	end

	it('can roll a spare') do
		@bowling.roll 3
		@bowling.roll 7
		@bowling.roll 3

		17.times{@bowling.roll 0}
		expect(@bowling.score).to eq 16
	end

	it('can roll a strike') do
		@bowling.roll 10
		@bowling.roll 4
		@bowling.roll 3

		16.times{@bowling.roll 0}
		expect(@bowling.score).to eq 24
	end

end