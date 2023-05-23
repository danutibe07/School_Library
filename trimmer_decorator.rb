require_relative 'decorator'

class TrimmerDecorator < BaseDecorator
  def correct_name
    name = @nameable.correct_name
    name.length > max ? name[0, 10] : name
  end
end
