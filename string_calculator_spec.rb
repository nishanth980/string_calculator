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

    context 'When an negative integer is sent in the string' do
      let(:string) { '-4,-9' }

      it 'raises an exception with message' do
        expect { calculator.add }.to raise_error('Negative Numbers are -4,-9')
      end
    end
  end
end
