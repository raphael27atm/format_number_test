class MoneyFormat
  attr_reader :number

  def initialize number:
    @number = number
  end

  def print_number
    "#{number}"
  end

  def format_number
    "#{number}".to_s.reverse.gsub(/(\d{3})(?=\d)/, '\\1,').reverse
  end

end



