class StringCalculator
  attr_accessor :string

  def initialize(string)
    @string = string
  end

  def add
    return 0 if string.empty?
  end
end
