class Product < ActiveRecord::Base
  belongs_to :product_owner
  has_many :personas, through: :assignments
end
