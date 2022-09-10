class User < ApplicationRecord
    has_secure_password #password setter/encrypter 
end
