require "application_system_test_case"

class QuestionsTest < ApplicationSystemTestCase
  setup do
    @question = questions(:one)
  end

  test "visiting the index" do
    visit questions_url
    assert_selector "h1", text: "Questions"
  end

  test "creating a Question" do
    visit questions_url
    click_on "New Question"

    check "Agreement" if @question.agreement
    fill_in "Content", with: @question.content
    fill_in "Email", with: @question.email
    fill_in "Family kana", with: @question.family_kana
    fill_in "Family name", with: @question.family_name
    fill_in "First kana", with: @question.first_kana
    fill_in "First name", with: @question.first_name
    fill_in "Phone", with: @question.phone
    click_on "Create Question"

    assert_text "Question was successfully created"
    click_on "Back"
  end

  test "updating a Question" do
    visit questions_url
    click_on "Edit", match: :first

    check "Agreement" if @question.agreement
    fill_in "Content", with: @question.content
    fill_in "Email", with: @question.email
    fill_in "Family kana", with: @question.family_kana
    fill_in "Family name", with: @question.family_name
    fill_in "First kana", with: @question.first_kana
    fill_in "First name", with: @question.first_name
    fill_in "Phone", with: @question.phone
    click_on "Update Question"

    assert_text "Question was successfully updated"
    click_on "Back"
  end

  test "destroying a Question" do
    visit questions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Question was successfully destroyed"
  end
end
