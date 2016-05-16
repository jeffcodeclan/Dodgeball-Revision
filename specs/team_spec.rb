require("minitest/autorun")
require_relative("../models/team")

class TestTeam < Minitest::Test

    def setup()
        @team = Team.new({'name'=>'Lloyd Llamas', 'location'=>'Welsh place', 'id'=>'1'})
    end
    def test_team_id()
        test_result = @team.id
        expected_result = 1
        assert_equal(expected_result,test_result)
    end
    def test_team_name()
        test_result = @team.name
        expected_result = "Lloyd Llamas"
        assert_equal(expected_result,test_result)
    end
    def test_team_location()
        test_result = @team.location
        expected_result = "Welsh Place"
        assert_equal(expected_result,test_result)
    end

end