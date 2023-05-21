class Student < Person
  attr_accessor :classroom

  def initialize(age, classroom, parent_permission: true, name: 'Unknown', id_limit: 100)
    super(age, parent_permission: parent_permission, name: name, id_limit: id_limit)
    @classroom = classroom
  end

  def play_hooky
    '¯\\(ツ)/¯'
  end
end
