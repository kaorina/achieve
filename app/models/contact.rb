class Contact < ActiveRecord::Base
    validates :name, presence: true, length: { minimum: 2 }
    VALID_EMAIL_REGEX =  /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, uniqueness: true, format: { with: VALID_EMAIL_REGEX }
    validates :content, presence: true, length: { minimum: 5 }
end
