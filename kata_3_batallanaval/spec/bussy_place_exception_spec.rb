require 'rspec'
require_relative "../exceptions/bussy_place_exception.rb"

describe 'BussyPlaceException' do

  let(:exception) { BussyPlaceException.new }

  describe "matching error message with string" do
    it "matches the error message" do
      expect { raise exception, 'The place is busy!'}.
        to raise_error('The place is busy!')
    end
  end

end