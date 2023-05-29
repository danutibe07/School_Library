require_relative 'app'
require_relative 'display_menu'
require_relative 'handle_choice'

class Main
  attr_reader :app

  def initialize(app)
    @app = app
    @display_menu = DisplayMenu.new
    @handle_choice = MenuChoice.new(@app)
  end

  def start
    puts 'Welcome to the School Library App!'
    loop do
      @display_menu.display_menu
      choice = gets.chomp.to_i
      @handle_choice.handle_choice(choice)
      break if choice == 7
    end
  end
end

app = App.new
myapp = Main.new(app)
myapp.start
