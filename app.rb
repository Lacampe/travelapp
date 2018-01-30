require_relative 'router'

require_relative 'app/repositories/tickets_repository'
require_relative 'app/controllers/tickets_controller'

require_relative 'app/repositories/travelers_repository'
require_relative 'app/controllers/travelers_controller'

tickets_csv = 'data/tickets.csv'
tickets_repository = TicketsRepository.new(tickets_csv)
tickets_controller = TicketsController.new(tickets_repository)

travelers_csv = 'data/travelers.csv'
travelers_repository = TravelersRepository.new(travelers_csv)
travelers_controller = TravelersController.new(travelers_repository)


router = Router.new(tickets_controller, travelers_controller)
router.run
