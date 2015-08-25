# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Venue.create({name: "Magnaball", city: "New York", state: "New York", family_friendly: true})

Band.create({name: "GA", genre: "Rock", explicit_lyrics: true})

Event.create({date: "08/08/08", alcohol_served: true, venue: Venue.first, band: Band.first})
