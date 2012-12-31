# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
client = SSOProvider::Client.new
if Rails.env.production?
  client.name = "elvo_utils"
  client.app_id = "elvo_utils"
  client.app_secret = "06f93dad68d0362cf96a05b51cfd21bf99bf1f5df1d003882011e641eeb402923315fc3be25912410089385a3bfaae2f08bf698ba7823d31106005bc90777615"
else
  client.name = "elvo_utils"
  client.app_id = "ELVO"
  client.app_secret = "1234"
end
client.save
