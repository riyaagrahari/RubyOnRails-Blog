class Article < ApplicationRecord
    has_many :comments, dependent: :destroy
    validates :title, presence: true, length: { minimium: 5 }
end
