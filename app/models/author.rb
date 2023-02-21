class Author < ApplicationRecord
    has_many :books

    
    validates :a_name, presence: true
    validates :a_age, presence: true
    validates :a_country, presence: true
    validates :a_email, presence: true
    validates :a_contact, presence: true

end
