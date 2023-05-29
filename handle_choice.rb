require_relative 'app'

class MenuChoice
def initialize(app)
    @app = app
  end

def handle_choice(menu)
  choices = {
    1 => :list_books,
    2 => :list_people,
    3 => :create_person,
    4 => :create_book,
    5 => :create_rental,
    6 => :list_rentals_by_person_id,
    7 => :quit
  }

  action = choices[menu]

    if action
        if action == :exit
          puts 'Thank you for using this app!'
          exit
        else
          @app.send(action)
        end
      else
        puts 'Invalid choice. Please try again.'
    end
end
end