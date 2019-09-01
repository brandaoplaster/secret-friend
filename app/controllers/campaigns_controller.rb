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
end
