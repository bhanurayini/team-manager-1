require 'test_helper'

class TeamHasCoachesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @team_has_coach = team_has_coaches(:one)
  end

  test "should get index" do
    get team_has_coaches_url
    assert_response :success
  end

  test "should get new" do
    get new_team_has_coach_url
    assert_response :success
  end

  test "should create team_has_coach" do
    assert_difference('TeamHasCoach.count') do
      post team_has_coaches_url, params: { team_has_coach: { coach_type: @team_has_coach.coach_type, person_id: @team_has_coach.person_id, team_id: @team_has_coach.team_id } }
    end

    assert_redirected_to team_has_coach_url(TeamHasCoach.last)
  end

  test "should show team_has_coach" do
    get team_has_coach_url(@team_has_coach)
    assert_response :success
  end

  test "should get edit" do
    get edit_team_has_coach_url(@team_has_coach)
    assert_response :success
  end

  test "should update team_has_coach" do
    patch team_has_coach_url(@team_has_coach), params: { team_has_coach: { coach_type: @team_has_coach.coach_type, person_id: @team_has_coach.person_id, team_id: @team_has_coach.team_id } }
    assert_redirected_to team_has_coach_url(@team_has_coach)
  end

  test "should destroy team_has_coach" do
    assert_difference('TeamHasCoach.count', -1) do
      delete team_has_coach_url(@team_has_coach)
    end

    assert_redirected_to team_has_coaches_url
  end
end
