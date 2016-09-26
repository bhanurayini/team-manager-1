require 'test_helper'

class StatRecordsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @stat_record = stat_records(:one)
  end

  test "should get index" do
    get stat_records_url
    assert_response :success
  end

  test "should get new" do
    get new_stat_record_url
    assert_response :success
  end

  test "should create stat_record" do
    assert_difference('StatRecord.count') do
      post stat_records_url, params: { stat_record: { record_date: @stat_record.record_date, record_type: @stat_record.record_type, record_value: @stat_record.record_value, references: @stat_record.references } }
    end

    assert_redirected_to stat_record_url(StatRecord.last)
  end

  test "should show stat_record" do
    get stat_record_url(@stat_record)
    assert_response :success
  end

  test "should get edit" do
    get edit_stat_record_url(@stat_record)
    assert_response :success
  end

  test "should update stat_record" do
    patch stat_record_url(@stat_record), params: { stat_record: { record_date: @stat_record.record_date, record_type: @stat_record.record_type, record_value: @stat_record.record_value, references: @stat_record.references } }
    assert_redirected_to stat_record_url(@stat_record)
  end

  test "should destroy stat_record" do
    assert_difference('StatRecord.count', -1) do
      delete stat_record_url(@stat_record)
    end

    assert_redirected_to stat_records_url
  end
end
