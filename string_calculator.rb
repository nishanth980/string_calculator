class StringCalculator
  attr_accessor :string

  def initialize(string)
    @string = string
  end

  def add
    return 0 if string.empty?

    raise_error_if_negative
  end

  def raise_error_if_negative
    # checks if any negative numbers are present in the string
    negatives = string.split(',').select { |i| i.to_i < 0 }.join(',')
    raise "Negative Numbers are #{negatives}" unless negatives.empty?
  end
end
