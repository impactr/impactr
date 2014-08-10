namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do

    a = Donor.create name: 'Alice Alibaster', email: 'gat.tester+Alice@gmail.com'
    b = Donor.create name: 'Bert Brown', email: 'gat.tester+Bert@gmail.com'
    c = Donor.create name: 'Clive Costa', email: 'gat.tester+Clive@gmail.com'
    d = Donor.create name: 'Diana Doa', email: 'gat.tester+Diana@gmail.com'
    e = Donor.create name: 'Ebolin Echo', email: 'gat.tester+Ebolin@gmail.com'
    f = Donor.create name: 'Franz Ferdinand', email: 'gat.tester+Franz@gmail.com'

    mspca = Organization.create name: 'MSPCA'
    water = Organization.create name: 'Water.org'

    puppies = Campaign.create organization: mspca, name: 'Spay the Puppies', unit: 'pups have been spayed', total_impact: rand(10..120)
    kittens = Campaign.create organization: mspca, name: 'Spay the Kitties', unit: 'kitties haven been spayed', total_impact: rand(10..120)
    peru = Campaign.create organization: water, name: 'Rural Peru', unit: 'gallons of water have been provided', total_impact: rand(10..120)

    Donation.create donor: a, campaign: puppies, amount: 250
    Donation.create donor: b, campaign: puppies, amount: 150
    Donation.create donor: c, campaign: puppies, amount: 400
    Donation.create donor: d, campaign: puppies, amount: 1000
    Donation.create donor: e, campaign: puppies, amount: 400
    Donation.create donor: f, campaign: puppies, amount: 500

    Donation.create donor: a, campaign: kittens, amount: 250
    Donation.create donor: b, campaign: kittens, amount: 150
    Donation.create donor: c, campaign: kittens, amount: 400
    Donation.create donor: d, campaign: kittens, amount: 1000
    Donation.create donor: e, campaign: kittens, amount: 400
    Donation.create donor: f, campaign: kittens, amount: 500

    Donation.create donor: a, campaign: peru, amount: 250
    Donation.create donor: b, campaign: peru, amount: 150
    Donation.create donor: c, campaign: peru, amount: 400
    Donation.create donor: d, campaign: peru, amount: 1000
    Donation.create donor: e, campaign: peru, amount: 400
    Donation.create donor: f, campaign: peru, amount: 500

  end
end