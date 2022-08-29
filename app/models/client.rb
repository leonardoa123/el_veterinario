class Client < ApplicationRecord
    has_many :pets

    def registered_pets
        pets.count
    end
end
