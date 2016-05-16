require('pry-byebug')
require_relative('db/sql_runner')
require_relative('models/team')
require_relative('models/match')

Team.delete_all()
Match.delete_all()


  team1 = Team.new( { 'team_name' => 'lloyd', 'location' => 'Wales' } )
  team2 = Team.new( { 'team_name' => 'stirling', 'location' => 'Stirling' } )

  t1 = team1.save
  t2 = team2.save


  match1 = Match.new( { 'home_score' => 3, 'away_score' => 1, 'home_id' => t1.id, 'away_id' => t2.id } )
  match2 = Match.new( { 'home_score' => 1, 'away_score' => 1, 'home_id' => t2.id, 'away_id' => t1.id } )
  match3 = Match.new( { 'home_score' => 2, 'away_score' => 1, 'home_id' => t1.id, 'away_id' => t2.id } )
  match4 = Match.new( { 'home_score' => 4, 'away_score' => 2, 'home_id' => t1.id, 'away_id' => t2.id } )

  m1 = match1.save
  m2 = match2.save
  m3 = match3.save
  m4 = match4.save

binding.pry
nil