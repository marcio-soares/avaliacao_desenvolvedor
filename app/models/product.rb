class Product < ActiveRecord::Base
  belongs_to :provider
  has_many :orders
end
