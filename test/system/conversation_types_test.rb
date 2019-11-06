require "application_system_test_case"

class ConversationTypesTest < ApplicationSystemTestCase
  setup do
    @conversation_type = conversation_types(:one)
  end

  test "visiting the index" do
    visit conversation_types_url
    assert_selector "h1", text: "Conversation Types"
  end

  test "creating a Conversation type" do
    visit conversation_types_url
    click_on "New Conversation Type"

    fill_in "Name", with: @conversation_type.name
    click_on "Create Conversation type"

    assert_text "Conversation type was successfully created"
    click_on "Back"
  end

  test "updating a Conversation type" do
    visit conversation_types_url
    click_on "Edit", match: :first

    fill_in "Name", with: @conversation_type.name
    click_on "Update Conversation type"

    assert_text "Conversation type was successfully updated"
    click_on "Back"
  end

  test "destroying a Conversation type" do
    visit conversation_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Conversation type was successfully destroyed"
  end
end
