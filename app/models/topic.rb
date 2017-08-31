class Topic < ApplicationRecord
    has_many :sponsoredPost
    has_many :posts, dependent: :destroy
end
