class Article < ActiveRecord::Base
	belongs_to :user
	has_many :comments
	has_friendly_id :title, :use_slug => true
	has_attached_file :picture, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :storage => :s3, :s3_credentials => "#{RAILS_ROOT}/config/s3.yml", :path => "/rohini/images/:style/:id/:filename"
   	validates_attachment_presence :picture
   	validates_attachment_size :picture, :less_than => 5.megabytes  
   	validates_attachment_content_type :picture, :content_type => ['image/jpeg', 'image/png'] 
	has_attached_file :document, :storage => :s3, :s3_credentials => "#{RAILS_ROOT}/config/s3.yml", :path => "/rohini/documents/:style/:id/:filename"
   	validates_attachment_presence :document
   	validates_attachment_size :document, :less_than => 5.megabytes  
   	
end
