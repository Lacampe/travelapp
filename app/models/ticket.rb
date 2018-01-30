class Ticket
  attr_reader :destination, :price
  attr_accessor :id

  def initialize(attributes = {})
    @id = attributes[:id]
    @destination = attributes[:destination]
    @price = attributes[:price]
  end


  def to_csv_row
    [@id, @destination, @address]
  end

  def self.headers
    %w(id destination address)
  end
end
