class LineItem < ActiveRecord::Base
	attr_accessible :product_id, :cart_id, :product
  belongs_to :product
  belongs_to :cart
end
