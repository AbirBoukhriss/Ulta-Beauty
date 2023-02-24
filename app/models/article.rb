class Article < ApplicationRecord
    include Visible
    has_one_attached :image
   
  
    has_many :comments, dependent: :destroy
  
    validates :title, presence: true, allow_blank: false
    validates :body, presence: true, length: { minimum: 10 }
   
  end