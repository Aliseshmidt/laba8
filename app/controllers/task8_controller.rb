# frozen_string_literal: true

# class for detect Armstrong number
class Task8Controller < ApplicationController
  def input; end

  def output
    @digits = find_armstrongs(params[:digit].to_i)
  end

  def find_armstrongs(number)
    (1..Float::INFINITY).lazy.drop_while { |x| x.digits.size < number }
                        .take_while { |x| x.digits.size == number }
                        .select { |x| armstrong?(x) }.force
  end

  def armstrong?(number)
    number.digits.sum { |x| x**number.digits.size } == number
  end
end
