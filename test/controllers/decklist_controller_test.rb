require "test_helper"

class DecklistControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get decklist_index_url
    assert_response :success
  end
end
