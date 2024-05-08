class StringCalculator
  attr_accessor :string, :delimiter

  def initialize(string)
    @string = string
    @delimiter = ','
  end

  def add
    return 0 if string.empty?

    raise_error_if_negative
    converted_array.inject(0) { |sum, integer| sum + integer.to_i }
  end

  def raise_error_if_negative
    # checks if any negative numbers are present in the string
    negatives = converted_array.select { |i| i.to_i.negative? }.join(',')
    raise "Negative Numbers are #{negatives}" unless negatives.empty?
  end

  def converted_array
    string.split(delimiter)
  end
end
