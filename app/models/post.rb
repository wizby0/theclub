class Post < ApplicationRecord
	attr_accessor :selected_categories_ids

	belongs_to :user
	belongs_to :season
	has_many :categorizings, :dependent => :destroy  
	has_many :categories, :through => :categorizings
	mount_uploader :photo, PhotoUploader

	serialize :selected_categories_ids, Array
end
