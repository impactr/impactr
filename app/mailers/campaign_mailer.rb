class CampaignMailer < ActionMailer::Base
  include SendGrid
  default from: "yay@impactr.herokuapp.com"

  def campaign_done(donation)
  	mail(to: donation.donor.email, subject: 'Campaign Done')
  end
end
