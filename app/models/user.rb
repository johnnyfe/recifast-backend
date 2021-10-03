class User < ApplicationRecord
    has_many :recipes, dependent: :destroy
    has_many :comments, dependent: :destroy

    has_secure_password
    has_secure_password :recovery_password, validations: false
    validates :username, presence: true, uniqueness: true
    validates :password_digest, length: { in: 6..20 }
end
