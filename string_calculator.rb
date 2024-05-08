class StringCalculator
  attr_accessor :string, :delimiter

  def initialize(string)
    @string = string
    @delimiter = ','
  end

  def add
    return 0 if string.empty?

    raise_error_if_negative
    handle_custom_delimiters
    handle_new_lines
    converted_array.inject(0) { |sum, integer| sum + integer.to_i }
  end

  def raise_error_if_negative
    # checks if any negative numbers are present in the string
    negatives = converted_array.select { |i| i.to_i.negative? }.join(',')
    raise "Negative Numbers are #{negatives}" unless negatives.empty?
  end

  def handle_custom_delimiters
    # it updates the delimiter attribute with the custom value
    @delimiter = string[2] if string.start_with?('//')
  end

  def handle_new_lines
    # handles the \n in the string by substituting it with the delimiter
    return unless string.include?("\n")
    raise 'Invalid input' if string.end_with?("\n")

    string.gsub!("\n", delimiter)
  end

  def converted_array
    # splits the string with the delimiter
    string.split(delimiter)
  end
end
