class Article < ApplicationRecord
    validates :title, presence: true, length: {minimium: 5}
end
