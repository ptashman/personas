class ProductOwner < ActiveRecord::Base
  has_many :products
  has_many :personas
end
