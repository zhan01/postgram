class User < ApplicationRecord
	# ----- add these lines here: -----
	
	has_secure_password
	has_many :publishes
	has_many :conversations
	# Verify that email field is not blank and that it doesn't already exist in the db (prevents duplicates):
	validates :email, presence: true, uniqueness: true
	validates :first_name, presence: true
	validates :last_name, presence: true

	has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, :default_url => "https://cdn1.vectorstock.com/i/thumb-large/82/55/anonymous-user-circle-icon-vector-18958255.jpg"
    validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

end

