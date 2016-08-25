class Category < ApplicationRecord
	has_many :categorizings, :dependent => :destroy
	has_many :posts, :through => :categorizings
end
