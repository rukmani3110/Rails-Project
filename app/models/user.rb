class User < ApplicationRecord
  has_secure_password
  has_many :assignments
  validates_presence_of :username, :password, :email
  validates :password, :format => {:with => /(?=.*[a-zA-Z])(?=.*[0-9]).{6,}/i, message: "must be at least 6 characters and include one number and one letter."}
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create, message: "Enter a valid email, Example: abc@abc.com"
end
