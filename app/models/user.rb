class User < ApplicationRecord
    has_secure_password
    # VALID_PASSWORD_REGEX =/\A(?=.*?[a-z])(?=.*?[A-Z])(?=.*?[\d])\w{6,12}\z/
    # validates :password, presence: true, format: { with: VALID_PASSWORD_REGEX}
    validates :name, presence: true
    validates :email, presence: true, uniqueness: true
end
