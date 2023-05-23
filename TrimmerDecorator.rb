require_relative 'decorator'

class TrimmerDecorator < BaseDecorator
    Max = 10
    def correct_name
      name = @nameable.correct_name
      name.length > Max ? name[0, Max] : name
    end
end