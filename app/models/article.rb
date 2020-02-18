class Article < ApplicationRecord
    has_many :comments
    validates :title, presence: true, length: { minimium: 5 }
end
