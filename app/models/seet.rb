class Seet < ApplicationRecord
    def client
      return Client.find_by(id: self.client_id)
    end
end