class User < ApplicationRecord
    
    has_many :entries, dependent: :destroy
    has_many :jobs, through: :entries
    has_secure_password
end
