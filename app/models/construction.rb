class Construction < ApplicationRecord
  belongs_to :user
  has_one    :calendar,dependent: :destroy
 
  with_options presence: true do
    validates :name
    validates :price        
   end
  


end
