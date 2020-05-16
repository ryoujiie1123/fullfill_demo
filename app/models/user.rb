class User < ApplicationRecord
    validates :last_name, presence: true
    validates :first_name, presence: true    
    validates :email, presence: true
    validates :sex, presence: true
    validates :adress, presence: true
end
