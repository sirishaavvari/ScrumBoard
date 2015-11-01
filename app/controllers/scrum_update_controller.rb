class ScrumUpdateController < ApplicationController
  def new
  end

  def create
    @scrum_update = ScrumUpdate.new(scrum_update_params)
    @scrum_update.save!
  end

  def edit
  end

  def list
    @scrum_updates = ScrumUpdate.all
  end

  def show
  end

  def delete
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_scrum_update
      @scrum_update = ScrumUpdate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def scrum_update_params
      params.require(:scrum_update).permit(:all)
    end
end
