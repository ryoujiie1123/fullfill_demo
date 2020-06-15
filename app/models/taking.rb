class Taking < ApplicationRecord
    def client
      return Client.find_by(id: self.client_id)
    end
    
    def user
      return User.find_by(id: self.user_id)
    end
end
