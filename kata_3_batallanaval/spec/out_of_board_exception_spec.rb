require 'rspec'
require_relative "../exceptions/out_of_board_exception.rb"

describe 'OutOfBoardException' do

  let(:exception) { OutOfBoardException.new }

  describe "matching error message with string" do
    it "matches the error message" do
      expect { raise exception, 'Out of board!'}.
      to raise_error('Out of board!')
    end
  end

end