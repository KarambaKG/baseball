# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)




t1 = Team.create(name: 'Spartak')
t2 = Team.create(name: 'Lokomotiv')
p 'Teams has been created'

p1 = Player.create(name: 'AJ', team_id: 1)
p2 = Player.create(name: 'Bill', team_id: 1)
p3 = Player.create(name: 'Bob', team_id: 1)
p4 = Player.create(name: 'Max', team_id: 1)
p5 = Player.create(name: 'Ash', team_id: 1)
p6 = Player.create(name: 'Tom', team_id: 2)
p 'Players has been created'

ma1 = Match.create(name: 'Stone')
ma2 = Match.create(name: 'Iron')
ma3 = Match.create(name: 'Bronze')
ma4 = Match.create(name: 'Silver')
ma5 = Match.create(name: 'Gold')
ma6 = Match.create(name: 'Platinum')
p 'Matches has been created'

me1 = Metric.create(name: 'best runner')
me2 = Metric.create(name: 'best goalkeeper')
p 'Metrics has been created'