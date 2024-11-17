require "test_helper"

class CatagoriesControllerTest < ActionDispatch::IntegrationTest
  test "should get select" do
    get catagories_select_url
    assert_response :success
  end

  test "should get index" do
    get catagories_index_url
    assert_response :success
  end
end
