require 'test_helper'

class PlayerStatsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @player_stat = player_stats(:one)
  end

  test "should get index" do
    get player_stats_url
    assert_response :success
  end

  test "should get new" do
    get new_player_stat_url
    assert_response :success
  end

  test "should create player_stat" do
    assert_difference('PlayerStat.count') do
      post player_stats_url, params: { player_stat: { height: @player_stat.height, jersey_number: @player_stat.jersey_number, person_id: @player_stat.person_id, player_bio: @player_stat.player_bio, team_id: @player_stat.team_id, weight: @player_stat.weight } }
    end

    assert_redirected_to player_stat_url(PlayerStat.last)
  end

  test "should show player_stat" do
    get player_stat_url(@player_stat)
    assert_response :success
  end

  test "should get edit" do
    get edit_player_stat_url(@player_stat)
    assert_response :success
  end

  test "should update player_stat" do
    patch player_stat_url(@player_stat), params: { player_stat: { height: @player_stat.height, jersey_number: @player_stat.jersey_number, person_id: @player_stat.person_id, player_bio: @player_stat.player_bio, team_id: @player_stat.team_id, weight: @player_stat.weight } }
    assert_redirected_to player_stat_url(@player_stat)
  end

  test "should destroy player_stat" do
    assert_difference('PlayerStat.count', -1) do
      delete player_stat_url(@player_stat)
    end

    assert_redirected_to player_stats_url
  end
end
