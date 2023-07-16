require "test_helper"

class StripeProductsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get stripe_products_index_url
    assert_response :success
  end
end
