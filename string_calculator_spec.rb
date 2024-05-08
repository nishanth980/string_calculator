require 'rspec'
require_relative 'string_calculator'

describe StringCalculator do
  let(:calculator) { described_class.new(string) }

  describe '#add_string' do
    context 'When an empty number is sent' do
      let(:string) { '' }
      it 'returns 0' do
        expect(calculator.add).to eq(0)
      end
    end
  end
end
