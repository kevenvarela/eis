require 'rspec'
require_relative '../app/models/calculator.rb'

describe 'Calculator' do

  let(:calculator) { Calculator.new }

    context '#initialize' do
      it { expect(calculator).to be_an_instance_of Calculator }
    end

    context '#calculate(operator1, operator2, operation)' do
      it 'when adding' do
        res = calculator.calculate(1, 2, '+')
        expect(res).to be 3
      end

      it 'when subtracting' do
        res = calculator.calculate(3, 2, '-')
        expect(res).to be 1
      end

      it 'when averaging' do
        res = calculator.calculate(6, 4, 'average')
        expect(res).to be 5
      end
    end
end
