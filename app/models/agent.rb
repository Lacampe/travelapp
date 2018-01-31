class Agent
  attr_reader :name, :password, :role
  attr_accessor :id

  def initialize(attributes = {})
    @id = attributes[:id]
    @name = attributes[:name]
    @password = attributes[:password]
    @role = attributes[:role]
  end

  def manager?
    @role == 'manager'
  end

  def intern?
    @role == 'intern'
  end

  def to_csv_row
    [@id, @name, @password, @role]
  end

  def self.headers
    %w(id name password role)
  end
end
