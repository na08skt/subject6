require "test_helper"

class RelationshipControllerTest < ActionDispatch::IntegrationTest
  test "should get follower" do
    get relationship_follower_url
    assert_response :success
  end

  test "should get followed" do
    get relationship_followed_url
    assert_response :success
  end
end
