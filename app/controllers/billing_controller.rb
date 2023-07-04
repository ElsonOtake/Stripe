class BillingController < ApplicationController
  def show
    @portal_session = current_user.payment_processor.billing_portal
  end
end