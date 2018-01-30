require_relative 'base_repository'
require_relative '../models/ticket'

class TicketsRepository < BaseRepository
  private

  def build_element(row)
    row[:id]    = row[:id].to_i     # Convert column to Fixnum
    row[:price] = row[:price].to_i  # Convert column to Fixnum
    Ticket.new(row)
  end
end
