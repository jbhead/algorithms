module Luhn
  def self.is_valid?(number)
    sum = 0
    num = number.to_s.split('')

    num.reverse.each_with_index do |digit, index|
      if index % 2 != 0
        doubled_digit = digit.to_i * 2
        if doubled_digit > 9
          doubled_digit = doubled_digit - 9
        end
        sum = sum + doubled_digit
      else
        sum = sum + digit.to_i
      end
    end

    if sum % 10 == 0
      return true
    else
      return false
    end
  end
end