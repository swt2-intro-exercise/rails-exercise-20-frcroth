class Author < ApplicationRecord
    validates :last_name, presence: true

    def new
    end

    def name
        "#{first_name} #{last_name}"
    end
end
