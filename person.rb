# require_relative 'nameable'
# require_relative 'CapitalizeDecorator'
# require_relative 'TrimmerDecorator'

# class Person < Nameable
#   attr_accessor :name, :age
#   attr_reader :id

#   def initialize(age, parent_permission: true, name: 'Unknown')
#     @id = generate_random_id
#     @name = name
#     @age = age
#     @parent_permission = parent_permission
#   end

#   def correct_name
#     name
#   end

#   def can_use_services?
#     of_age? || @parent_permission
#   end

#   private

#   def generate_random_id
#     rand(1..100)
#   end

#   def of_age?
#     @age >= 18
#   end
# end

# person = Person.new('maximilianus')
#  puts person.correct_name
#   capitalizedPerson = CapitalizeDecorator.new(person)
#   puts capitalizedPerson.correct_name
#   capitalizedTrimmedPerson = TrimmerDecorator.new(capitalizedPerson)
#   puts capitalizedTrimmedPerson.correct_name

require_relative 'nameable'
require_relative 'CapitalizeDecorator'
require_relative 'TrimmerDecorator'

class Person < Nameable
  attr_accessor :name, :age
  attr_reader :id

  def initialize(age, parent_permission: true, name: 'Unknown')
    super()
    @id = generate_random_id
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  def correct_name
    name
  end

  def can_use_services?
    of_age? || @parent_permission
  end

  private

  def generate_random_id
    rand(1..100)
  end

  def of_age?
    @age >= 18
  end
end

person = Person.new(22, name: 'maximilianus')
puts person.correct_name

capitalized_person = CapitalizeDecorator.new(person)
puts capitalized_person.correct_name

capitalized_trimmed_person = TrimmerDecorator.new(capitalizedPerson)
puts capitalized_trimmed_person.correct_name
