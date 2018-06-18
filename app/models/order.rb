class Order < ActiveRecord::Base
  belongs_to :customer
  belongs_to :product

  def self.sum
    Order.all.sum(:total)
  end
end
