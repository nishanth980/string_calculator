require 'pry'
class StringCalculator
  attr_accessor :string, :delimiter

  def initialize(string)
    @string = string
    @delimiter = ','
  end

  def add
    return 0 if string.empty?

    raise_error_if_negative
    handle_new_lines
    converted_array.inject(0) { |sum, integer| sum + integer.to_i }
  end

  def raise_error_if_negative
    # checks if any negative numbers are present in the string
    negatives = converted_array.select { |i| i.to_i.negative? }.join(',')
    raise "Negative Numbers are #{negatives}" unless negatives.empty?
  end

  def handle_new_lines
    return unless string.include?("\n")
    raise 'Invalid input' if string.end_with?("\n")

    string.gsub!("\n", delimiter)
  end

  def converted_array
    string.split(delimiter)
  end
end
