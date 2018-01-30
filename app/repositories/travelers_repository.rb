require_relative 'base_repository'
require_relative '../models/traveler'

class TravelersRepository < BaseRepository
  private

  def build_element(row)
    row[:id]    = row[:id].to_i     # Convert column to Fixnum
    Traveler.new(row)
  end
end
