require 'rspec' 
require_relative '../lib/player'
require_relative '../lib/piedra'

describe 'Player' do

  let(:player) { Player.new }  
  let(:piedra) { Piedra.new }

  describe "player initialize" do

    it 'when player plays Piedra then has a Piedra element' do
  	  player.play piedra
      expect(player.element).to eq piedra
    end
  end

end
