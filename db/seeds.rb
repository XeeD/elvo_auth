# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
clients = if Rails.env.production?
  [
      ["elvo_utils", "06f93dad68d0362cf96a05b51cfd21bf99bf1f5df1d003882011e641eeb402923315fc3be25912410089385a3bfaae2f08bf698ba7823d31106005bc90777615"],
      ["elvo_website", "7341fb71e07981ce64e4744bcf45b1a3fa0a524b8327e3c89998c7485f92a59ed00eb6737f88ffab4a9be82e0c827b68ac9b79972250536ff439ef55148b1a53"]
  ]
else
  [
      ["ELVO", "1234"],
      ["elvo_website", "5678"]
  ]
end
clients.each do |data|
  client = SSOProvider::Client.new
  client.name = data[0]
  client.app_id = data[0]
  client.app_secret = data[1]
  client.save!
end
