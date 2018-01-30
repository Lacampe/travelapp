require_relative '../models/ticket'
require_relative '../views/tickets_view'

class TicketsController
  def initialize(tickets_repository)
    @tickets_repository = tickets_repository
    @view = TicketsView.new
  end

  def create
    # 1. Ask the user about the meal name
    destination = @view.ask_for(:destination)
    # 2. Ask the user about the price
    price = @view.ask_for_price
    # 3. Build a meal instance
    new_ticket = Ticket.new(destination: destination, price: price)
    # 4. Give the meal to the MealRepository
    @tickets_repository.add(new_ticket)
  end

  def list
    # 1. Ask the repo for meals list
    tickets = @tickets_repository.all
    # 2. Ask the view to print meals
    @view.display(tickets)
  end
end
