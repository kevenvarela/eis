require 'rspec'
require_relative '../app/models/calculator.rb'

describe 'Calculator' do

  let(:calculator) { Calculator.new }

    context '#initialize' do
      it { expect(calculator).to be_an_instance_of Calculator }
      it { expect(calculator.memory).to eq 0 }
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

    context '#increment_memory' do
      it 'when no calculates did' do
        expect(calculator.memory).to be 0
      end

      it 'when make a calculate' do
        calculator.calculate(6, 4, 'average')
        expect(calculator.memory).to eq 1

        calculator.calculate(6, 4, '+')
        expect(calculator.memory).to eq 2

        calculator.calculate(6, 4, '-')
        expect(calculator.memory).to eq 3
      end
    end
end
