class User < ApplicationRecord
  self.table_name = 'stripe_users'
  pay_customer default_payment_processor: :stripe
  # include Pay::Billable
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
