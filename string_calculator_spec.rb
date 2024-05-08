require 'rspec'
require_relative 'string_calculator'

describe StringCalculator do
  let(:calculator) { described_class.new(string) }

  describe '#add_string' do
    context 'When an empty number is sent in the string' do
      let(:string) { '' }

      it 'returns 0' do
        expect(calculator.add).to eq(0)
      end
    end

    context 'When an negative integers are sent in the string' do
      let(:string) { '-4,-9' }

      it 'raises an exception with message' do
        expect { calculator.add }.to raise_error('Negative Numbers are -4,-9')
      end
    end

    context 'When an positive integers is sent in the string' do
      let(:string) { '4,9' }

      it 'returns the sum of the integers' do
        expect(calculator.add).to eq(13)
      end
    end

    context 'When \n is sent in the middle of the input' do
      let(:string) { "4\n9" }

      it 'returns the sum of the integers' do
        expect(calculator.add).to eq(13)
      end

      it 'raises the sum of the integers' do
        expect(calculator.add).to eq(13)
      end
    end

    context 'When \n is sent at the end of the input' do
      let(:string) { "4,9\n" }

      it 'raises error that the input is invalid' do
        expect { calculator.add }.to raise_error('Invalid input')
      end
    end

    context 'When custom delimiter is sent in the input' do
      let(:string) { "//;\n1;2" }

      it 'raises error that the input is invalid' do
        expect(calculator.add).to eq(3)
      end
    end
  end
end
