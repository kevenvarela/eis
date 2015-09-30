require 'rspec' 
require_relative '../lib/element'
require_relative '../lib/mono'
require_relative '../lib/piedra'
require_relative '../lib/tijera'
require_relative '../lib/papel'

describe 'Element' do

  let(:piedra) { Piedra.new }  
  let(:papel)  { Papel.new }  
  let(:tijera) { Tijera.new }  
  let(:mono)   { Mono.new }  

  describe 'Piedra' do

    it 'name returns Piedra' do
      	expect(piedra.name).to eq "Piedra"
    end
  
    it 'vs Piedra returns nil' do
        expect(piedra.vs piedra).to eq nil
    end
  
    it 'vs Papel returns false' do
        expect(piedra.vs papel).to eq false
    end
  
    it 'vs Tijera returns true' do
        expect(piedra.vs tijera).to eq true
    end
  
    it 'vs Mono returns nil' do
      expect(piedra.vs mono).to eq nil
    end
  end

  describe 'Papel' do

    it 'name returns Papel' do
      	expect(papel.name).to eq "Papel"
    end
  
    it 'vs Piedra returns true' do
        expect(papel.vs piedra).to eq true
    end
  
    it 'vs Papel returns nil' do
        expect(papel.vs papel).to eq nil
    end
  
    it 'vs Tijera returns false' do
        expect(papel.vs tijera).to eq false
    end
  
    it 'vs Mono returns false' do
      expect(papel.vs mono).to eq false
    end
  end

  describe 'Tijera' do

    it 'name returns Tijera' do
        expect(tijera.name).to eq "Tijera"
    end
  
    it 'vs Piedra returns false' do
        expect(tijera.vs piedra).to eq false
    end
  
    it 'vs Papel returns true' do
        expect(tijera.vs papel).to eq true
    end
  
    it 'vs Tijera returns nil' do
        expect(tijera.vs tijera).to eq nil
    end
  
    it 'vs Mono returns true' do
      expect(tijera.vs mono).to eq true
    end
  end
end