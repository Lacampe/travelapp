require_relative '../views/sessions_view'

class SessionsController
  def initialize(agent_repository)
    @agent_repository = agent_repository
    @view = SessionsView.new
  end

  def sign_in
    # ask for name
    name = @view.ask_for(:name)
    # ask for password
    password = @view.ask_for(:password)
    # check if there is an agent with this name in my repo
    agent = @agent_repository.find_by_name(name)
    # if yes, check if the password matches
    if agent && (agent.password == password)
      # if yes, return the agent
      return agent
    else
      # if no, sign_in
      sign_in
    end
    sign_in
  end
end
