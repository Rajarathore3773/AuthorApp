class Publish < ApplicationRecord
    belongs_to :book

    
    validates :p_date, presence: true
    validates :p_country, presence: true

    validates :book_id, presence: true
   

end
