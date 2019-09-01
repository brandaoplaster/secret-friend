class CampaignRaffleJob < ApplicationJob
  queue_as :email

  def perform(campaign)
    results = RaffleService.new(campaign).call

    campaign.members.each {|member| member.set_pixel}
    results.each do |r|
      CampaignMailer.raffle(campaign, r.first, r.last).deliver_now
    end

    campaign.update(status: :finished)
  end
end
