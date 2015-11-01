class ScrumBoardController < ApplicationController
  def index
    @scrumboard  = Board.find_by_id(1)
    @scrum_updates_for_today = ScrumUpdate.where(:date => Time.now, :board_id => 1)
    @scrum_updates_for_the_team = ScrumUpdate.where(:board_id => 1)
  end
end
