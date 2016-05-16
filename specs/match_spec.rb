require("minitest/autorun")
require("minitest/rg")
require_relative("../models/team")

class TestMatch < Minitest::Test

    def setup()
        @match = Match.new({'id'=>'1', 'home_id'=>1, 'away_id'=>2, })
    end
    def test_match_id()
        test_result = @match.id
        expected_result = 1
        assert_equal(expected_result,test_result)
    end
    def test_match_home_team()
        test_result = @match.home_team
        expected_result = 1
        assert_equal(expected_result,test_result)
    end

    def test_match_away_team()
        test_result = @match.away_team
        expected_result = 2
        assert_equal(expected_result,test_result)
    end
end