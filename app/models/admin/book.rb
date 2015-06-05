class Admin::Book < ActiveRecord::Base
	 belongs_to :subject
	has_many :issues 
  has_many :users, through: :issues
  validates :book_name,:author_name , presence: true
	

	has_attached_file :picture, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "dafault.jpg"
  	validates_attachment_content_type :picture, :content_type => /\Aimage\/.*\Z/
end
