class Book < ApplicationRecord
  belongs_to :author
  has_one :publish

  
  validates :b_name, presence: true
  validates :b_desc, presence: true
  validates :b_price, presence: true
  validates :author_id, presence: true
  

end
