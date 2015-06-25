class Persona < ActiveRecord::Base
  belongs_to :product_owner
  has_many :products, through: :assignments
end
