class MembersController < ApplicationController
  before_action :authenticate_user!, except: [:opened]

  before_action :set_member, only: [:show, :destroy, :update]
  before_action :is_owner?, only: [:destroy, :update]
  before_action :set_member_by_token, only: [:opened]

  def create
  end

  def destroy
  end

  def update
  end

  private

  def member_params
    params.require(:member).permit(:name, :email, :campaign_id)
  end

  def set_member
    @member = Member.find(params[:id])
  end

  def set_member_by_token
    @member = Member.find_by!(token: params[:token])
  end

  def is_owner?
    unless current_user == @member.campaign.user
      respond_to do |format|
        format.json { render json: false, status: :forbidden}
      end
    end
  end
end
