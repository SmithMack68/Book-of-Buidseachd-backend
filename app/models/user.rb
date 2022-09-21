class User < ApplicationRecord
    has_secure_password #password setter/encrypter 

    has_many :spells
end
