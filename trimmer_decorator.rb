require_relative 'decorator'

class TrimmerDecorator < BaseDecorator
  def correct_name
    name = @nameable.correct_name[0..9]
  end
end
