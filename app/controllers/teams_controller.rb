class TeamsController < ApplicationController
  def index
    @user =
    @teams = Team.all
  end

  def validate_and_redirect_to_team_board
    user = User.find_by_login(params[:login])
    team = Team.find_by_id(params[:team].to_i)
    if(user.team_id != team.id)
      raise "You are not allowed to access the scrum board of #{team.name}. You should be a part of that team to do so"
    end
    redirect_to :controller => 'scrum_boards', :action => 'show', :team => team
  end
end
