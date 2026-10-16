# frozen_string_literal: true

class Product < ApplicationRecord
  validates :name, :price, presence: true

  monetize :price, as: :price_cents

  def to_s
    name
  end
end
