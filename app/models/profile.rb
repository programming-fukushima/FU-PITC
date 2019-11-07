class Profile < ApplicationRecord
    class << self
        def search(query)
            rel = order("id")
            if query.present?
                rel = rel.where("family LIKE ? OR first LIKE ? OR affiliation LIKE ?","%#{query}%","%#{query}%","%#{query}%")
            end
            rel
        end
    end

    def fullname
        "#{family}" + "#{first}"
    end
end
