class Router
  def initialize(tickets_controller, travelers_controller, sessions_controller)
    @tickets_controller = tickets_controller
    @travelers_controller = travelers_controller
    @sessions_controller = sessions_controller
  end

  def run
    agent = @sessions_controller.sign_in
    loop do
      agent.manager? ? print_action_manager : print_action_intern
      puts 'What do you want to do next?'
      print '> '
      action = gets.chomp.to_i
      agent.manager? ? actions_manager(action) : action_intern(action)
    end
  end

  private

  def actions_manager(action)
    case action
    when 1 then @tickets_controller.create
    when 2 then @tickets_controller.list
    when 3 then @travelers_controller.create
    when 4 then @travelers_controller.list
    else
      puts 'Wrong action'
    end
  end

  def action_intern(action)
    case action
    when 1 then @travelers_controller.get_coffee
    else
      puts 'Wrong action'
    end
  end

  def print_action_manager
    puts '1. Create a ticket'
    puts '2. List tickets'
    puts '3. Create a traveler'
    puts '4. List travelers'
  end

  def print_action_intern
    puts '1. Get coffee'
  end
end
