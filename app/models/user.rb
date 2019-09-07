class User < ApplicationRecord
  
    def authenticate(password)
   
    salt = password_digest[0..28]
    hashed = BCrypt::Engine::hash_secret(password, salt)
    return nil unless (salt + hashed) == self.password_digest
  end
end
end
