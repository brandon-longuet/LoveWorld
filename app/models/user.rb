class User < ApplicationRecord
    has_many :group_members
    has_many :event_members
    has_many :posts
    has_many :replies
end
