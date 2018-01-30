class Router
  def initialize(tickets_controller, travelers_controller)
    @tickets_controller = tickets_controller
    @travelers_controller = travelers_controller
  end

  def run
    loop do
      # 1. Print the menu
      print_action
      # 2. Ask the user what he/she wants to do next?
      puts 'What do you want to do next?'
      print '> '
      action = gets.chomp.to_i
      # 3. Call the right controller method
      case action
      when 1 then @tickets_controller.create
      when 2 then @tickets_controller.list
      when 3 then @travelers_controller.create
      when 4 then @travelers_controller.list
      else
        puts 'Wrong action'
      end
    end
  end

  private

  def print_action
    puts '1. Create a ticket'
    puts '2. List tickets'
    puts '3. Create a traveler'
    puts '4. List travelers'
  end
end
