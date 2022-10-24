class Category < ApplicationRecord
    has_many :cars
    validates :name, presence: { message: 'The name is required !' }
    #validates :name, format: { with: /\A[a-zA-Z]+\z/ }
    #validates :name, uniqueness: tru e
end
