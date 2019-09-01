class CampaignsController < ApplicationController

  before_action :authenticate_user!
  before_action :set_campaign, only: [:show, :destroy, :update, :raffle]
  before_action :is_owner?, only: [:show, :destroy, :update, :raffle]

  def show
  end

  def index
    @campaigns = current_user.campaigns
  end

  def create
  end

  def update
  end

  def destroy
  end

  def raffle
  end

  private

  def camapaign_params
    params.require(:campaign).permit(:title, :description).merge(user: current_user)
  end

  def set_campaign
    @campaign = Campaign.find(params[:id])
  end

  def is_owner?
    unless curent_user == @campaign.user
      respond_to do |format|
        format.json { render json: false, status: :forbidden }
        format.html { redirect_to main_app.root_url }
      end
    end
  end
end
