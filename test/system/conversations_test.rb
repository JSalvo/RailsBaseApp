require "application_system_test_case"

class ConversationsTest < ApplicationSystemTestCase
  setup do
    @conversation = conversations(:one)
  end

  test "visiting the index" do
    visit conversations_url
    assert_selector "h1", text: "Conversations"
  end

  test "creating a Conversation" do
    visit conversations_url
    click_on "New Conversation"

    fill_in "Conversation type", with: @conversation.conversation_type_id
    fill_in "Datetime closing conversation", with: @conversation.datetime_closing_conversation
    fill_in "Datetime conversation", with: @conversation.datetime_conversation
    fill_in "Title", with: @conversation.title
    click_on "Create Conversation"

    assert_text "Conversation was successfully created"
    click_on "Back"
  end

  test "updating a Conversation" do
    visit conversations_url
    click_on "Edit", match: :first

    fill_in "Conversation type", with: @conversation.conversation_type_id
    fill_in "Datetime closing conversation", with: @conversation.datetime_closing_conversation
    fill_in "Datetime conversation", with: @conversation.datetime_conversation
    fill_in "Title", with: @conversation.title
    click_on "Update Conversation"

    assert_text "Conversation was successfully updated"
    click_on "Back"
  end

  test "destroying a Conversation" do
    visit conversations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Conversation was successfully destroyed"
  end
end
