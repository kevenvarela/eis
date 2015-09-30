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

  it 'Piedra name returns Piedra' do
  	expect(piedra.name).to eq "Piedra"
  end

  it 'Piedra vs Piedra returns nil' do
    expect(piedra.vs piedra).to eq nil
  end

=begin
  it 'Piedra vs Papel returns false' do
    expect(piedra.vs papel).to eq false
  end

  it 'Piedra vs Tijera returns true' do
    expect(piedra.vs tijera).to eq true
  end

  it 'Piedra vs Mono returns nil' do
    expect(piedra.vs mono).to eq nil
  end
=end
end