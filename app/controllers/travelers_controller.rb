require_relative '../models/traveler'
require_relative '../views/travelers_view'

class TravelersController
  def initialize(travelers_repository)
    @travelers_repository = travelers_repository
    @view = TravelersView.new
  end

  def create
    # 1. Ask for the name
    name = @view.ask_for(:name)
    # 3. Create the traveler
    new_traveler = Traveler.new(name: name)
    # 4. Store in the repo
    @travelers_repository.add(new_traveler)
  end

  def list
    travelers = @travelers_repository.all
    @view.display(travelers)
  end

  def get_coffee
    puts "here is your coffee!"
  end
end
