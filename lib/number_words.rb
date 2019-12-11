#!/usr/bin/ruby

class NumbersToWords

  def initialize(inputted_number)
    @inputted_number = inputted_number
  end

  def inputted_number
    @inputted_number
  end

  def number_convert()
    converted_number_catch = []

    one_number = {
      "0" => "zero",
      "1" => "one",
      "2" => "two",
      "3" => "three",
      "4" => "four",
      "5" => "five",
      "6" => "six",
      "7" => "seven",
      "8" => "eight",
      "9" => "nine"
    }

    two_numbers = {
      "2" => "twenty",
      "3" => "thirty",
      "4" => "forty",
      "5" => "fifty",
      "6" => "sixty",
      "7" => "seventy",
      "8" => "eighty",
      "9" => "ninety"
    }


    split_int = @inputted_number.to_s.chars.map(&:to_i)
    array = split_int.length
    puts array
    # puts split_int
    if array == 1
      converted_ones = one_number.fetch(@inputted_number)
      converted_number_catch.push(converted_ones)
    elsif array == 2 && split_int[1] == 0
      converted_tens_zero = two_numbers.fetch(split_int[0].to_s)
      converted_number_catch.push(converted_tens_zero)
    elsif array == 2 && array[1] > 0
      converted_tens = two_numbers.fetch(split_int[0].to_s) + " "  + one_number.fetch(split_int[1].to_s)
      converted_number_catch.push(converted_tens)
    end
    converted_number_catch
  end
end
