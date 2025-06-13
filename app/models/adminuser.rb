class Adminuser < ApplicationRecord
    validates :name, presence: true, uniqueness: true
    has_secure_password # To use user.authenticate to check password

end
