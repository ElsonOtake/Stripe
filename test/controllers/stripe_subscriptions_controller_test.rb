require "test_helper"

class StripeSubscriptionsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get stripe_subscriptions_index_url
    assert_response :success
  end
end
