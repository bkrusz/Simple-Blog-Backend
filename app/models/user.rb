class User < ApplicationRecord
    has_many :posts
    has_many :comments

    validates :username, presence: true, length: { within: 4..20 }, uniqueness: true
    validates :password, presence: true, length: { minimum: 8 }
end
