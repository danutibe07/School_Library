require_relative 'app'

def main
  app = App.new

  loop do
    puts "Welcome to the School Library App!"
    puts "Please select an option:"
    puts "1. List all books"
    puts "2. List all people"
    puts "3. Create a person"
    puts "4. Create a book"
    puts "5. Create a rental"
    puts "6. List rentals for a person by ID"
    puts "0. Quit"

    option = gets.chomp.to_i

    case option
    when 1
      app.list_books
    when 2
      app.list_people
    when 3
        app.create_person
    when 4
      app.create_book 
    when 5
      app.create_rental
    when 6
      puts "Enter person ID:"
      person_id = gets.chomp.to_i
      app.list_rentals_by_person_id(person_id)
    when 0
      puts "Thank you for using the School Library App. Goodbye!"
      break
    else
      puts "Invalid option. Please try again."
    end

    puts "\n"
  end
end

main
