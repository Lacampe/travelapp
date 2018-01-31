require_relative 'base_repository'
require_relative '../models/agent'

class AgentsRepository < BaseRepository
  def find_by_name(name)
    @elements.find { |element| element.name == name }
  end

  def build_element(row)
    row[:id]    = row[:id].to_i     # Convert column to Fixnum
    Agent.new(row)
  end
end
