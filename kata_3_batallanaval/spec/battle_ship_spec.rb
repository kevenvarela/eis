require 'rspec'
require "battle_ship.rb"

describe 'BattleShip' do

  let(:battle_ship) { BattleShip.new }

  context '::initialize' do
    it { expect(battle_ship.class).to eq BattleShip.itself }
  end
end