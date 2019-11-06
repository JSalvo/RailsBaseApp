require 'test_helper'

class ConversationTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @conversation_type = conversation_types(:one)
  end

  test "should get index" do
    get conversation_types_url
    assert_response :success
  end

  test "should get new" do
    get new_conversation_type_url
    assert_response :success
  end

  test "should create conversation_type" do
    assert_difference('ConversationType.count') do
      post conversation_types_url, params: { conversation_type: { name: @conversation_type.name } }
    end

    assert_redirected_to conversation_type_url(ConversationType.last)
  end

  test "should show conversation_type" do
    get conversation_type_url(@conversation_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_conversation_type_url(@conversation_type)
    assert_response :success
  end

  test "should update conversation_type" do
    patch conversation_type_url(@conversation_type), params: { conversation_type: { name: @conversation_type.name } }
    assert_redirected_to conversation_type_url(@conversation_type)
  end

  test "should destroy conversation_type" do
    assert_difference('ConversationType.count', -1) do
      delete conversation_type_url(@conversation_type)
    end

    assert_redirected_to conversation_types_url
  end
end
