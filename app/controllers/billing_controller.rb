class BillingController < ApplicationController
  def show
    return unless current_user

    return if current_user.payment_processor.nil?

    @portal_session = current_user.payment_processor.billing_portal
  end
end