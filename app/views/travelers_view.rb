require_relative 'base_view'

class TravelersView < BaseView
  def display(travelers)
    travelers.each do |traveler|
      puts "#{traveler.id} - #{traveler.name}"
    end
  end
end
