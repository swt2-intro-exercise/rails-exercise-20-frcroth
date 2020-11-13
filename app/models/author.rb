class Author < ApplicationRecord
    def new
    end

    def name
        "#{first_name} #{last_name}"
    end
end
