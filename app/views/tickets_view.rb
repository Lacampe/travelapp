require_relative 'base_view'

class TicketsView < BaseView
  def ask_for_price
    puts 'price?'
    print '> '
    gets.chomp.to_i
  end

  def display(tickets)
    tickets.each do |ticket|
      puts "#{ticket.id} - #{ticket.destination}, #{ticket.price}£"
    end
  end
end
