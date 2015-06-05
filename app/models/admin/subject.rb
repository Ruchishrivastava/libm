class Admin::Subject < ActiveRecord::Base
	 has_many :books
	validates :subject_name , presence: { message: "is required" }
end
