require 'test_helper'

class MeetingEntriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @meeting_entry = meeting_entries(:one)
  end

  test "should get index" do
    get meeting_entries_url
    assert_response :success
  end

  test "should get new" do
    get new_meeting_entry_url
    assert_response :success
  end

  test "should create meeting_entry" do
    assert_difference('MeetingEntry.count') do
      post meeting_entries_url, params: { meeting_entry: { agreement: @meeting_entry.agreement, email: @meeting_entry.email, family_kana: @meeting_entry.family_kana, family_name: @meeting_entry.family_name, first_kana: @meeting_entry.first_kana, first_name: @meeting_entry.first_name, meeting_date_id: @meeting_entry.meeting_date_id, note: @meeting_entry.note, phone: @meeting_entry.phone, purpose: @meeting_entry.purpose } }
    end

    assert_redirected_to meeting_entry_url(MeetingEntry.last)
  end

  test "should show meeting_entry" do
    get meeting_entry_url(@meeting_entry)
    assert_response :success
  end

  test "should get edit" do
    get edit_meeting_entry_url(@meeting_entry)
    assert_response :success
  end

  test "should update meeting_entry" do
    patch meeting_entry_url(@meeting_entry), params: { meeting_entry: { agreement: @meeting_entry.agreement, email: @meeting_entry.email, family_kana: @meeting_entry.family_kana, family_name: @meeting_entry.family_name, first_kana: @meeting_entry.first_kana, first_name: @meeting_entry.first_name, meeting_date_id: @meeting_entry.meeting_date_id, note: @meeting_entry.note, phone: @meeting_entry.phone, purpose: @meeting_entry.purpose } }
    assert_redirected_to meeting_entry_url(@meeting_entry)
  end

  test "should destroy meeting_entry" do
    assert_difference('MeetingEntry.count', -1) do
      delete meeting_entry_url(@meeting_entry)
    end

    assert_redirected_to meeting_entries_url
  end
end
