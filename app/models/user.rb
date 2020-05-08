class User < ApplicationRecord
    validates :user_name, presence: true, length: { minimum: 3, maximum: 10}
    validates_uniqueness_of :user_name
    validates :password, presence: true, length: { minimum: 5, maximum: 20}
    has_many :comments
    has_many :posts
end
