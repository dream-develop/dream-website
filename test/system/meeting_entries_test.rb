require "application_system_test_case"

class MeetingEntriesTest < ApplicationSystemTestCase
  setup do
    @meeting_entry = meeting_entries(:one)
  end

  test "visiting the index" do
    visit meeting_entries_url
    assert_selector "h1", text: "Meeting Entries"
  end

  test "creating a Meeting entry" do
    visit meeting_entries_url
    click_on "New Meeting Entry"

    check "Agreement" if @meeting_entry.agreement
    fill_in "Email", with: @meeting_entry.email
    fill_in "Family kana", with: @meeting_entry.family_kana
    fill_in "Family name", with: @meeting_entry.family_name
    fill_in "First kana", with: @meeting_entry.first_kana
    fill_in "First name", with: @meeting_entry.first_name
    fill_in "Meeting", with: @meeting_entry.meeting_id
    fill_in "Note", with: @meeting_entry.note
    fill_in "Phone", with: @meeting_entry.phone
    fill_in "Purpose", with: @meeting_entry.purpose
    click_on "Create Meeting entry"

    assert_text "Meeting entry was successfully created"
    click_on "Back"
  end

  test "updating a Meeting entry" do
    visit meeting_entries_url
    click_on "Edit", match: :first

    check "Agreement" if @meeting_entry.agreement
    fill_in "Email", with: @meeting_entry.email
    fill_in "Family kana", with: @meeting_entry.family_kana
    fill_in "Family name", with: @meeting_entry.family_name
    fill_in "First kana", with: @meeting_entry.first_kana
    fill_in "First name", with: @meeting_entry.first_name
    fill_in "Meeting", with: @meeting_entry.meeting_id
    fill_in "Note", with: @meeting_entry.note
    fill_in "Phone", with: @meeting_entry.phone
    fill_in "Purpose", with: @meeting_entry.purpose
    click_on "Update Meeting entry"

    assert_text "Meeting entry was successfully updated"
    click_on "Back"
  end

  test "destroying a Meeting entry" do
    visit meeting_entries_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Meeting entry was successfully destroyed"
  end
end
