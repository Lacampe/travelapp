require_relative 'router'

require_relative 'app/repositories/tickets_repository'
require_relative 'app/controllers/tickets_controller'

require_relative 'app/repositories/travelers_repository'
require_relative 'app/controllers/travelers_controller'

require_relative 'app/repositories/agents_repository'
require_relative 'app/controllers/sessions_controller'

tickets_csv = 'data/tickets.csv'
tickets_repository = TicketsRepository.new(tickets_csv)
tickets_controller = TicketsController.new(tickets_repository)

travelers_csv = 'data/travelers.csv'
travelers_repository = TravelersRepository.new(travelers_csv)
travelers_controller = TravelersController.new(travelers_repository)

agents_csv = 'data/agents.csv'
agents_repository = AgentsRepository.new(agents_csv)
sessions_controller = SessionsController.new(agents_repository)

router = Router.new(tickets_controller, travelers_controller, sessions_controller)
router.run
