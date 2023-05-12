class Conseilparfum < ApplicationRecord
    has_one_attached :image

    validates :title, presence: true, allow_blank: false
    validates :body, presence: true, length: { minimum: 10 }
end
