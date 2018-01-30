class Traveler
  attr_reader :name
  attr_accessor :id

  def initialize(attributes = {})
    @id = attributes[:id]
    @name = attributes[:name]
  end


  def to_csv_row
    [@id, @name]
  end

  def self.headers
    %w(id name)
  end
end
