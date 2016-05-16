require_relative('match.rb')

class League

  attr_accessor(:matches)

  def initialize( matches )
    @matches = matches
  end

  def total_num_of_matches()
    return @matches.length
  end

  def total_points_scored()
    total = 0
    @matches.each { |match| total += ( match.home_score + match.away_score ) }
    return total
  end
end