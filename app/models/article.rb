class Article < ActiveRecord::Base
	belongs_to :user
	has_many :comments
	def to_param
		title
	end
end
