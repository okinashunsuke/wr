class Construction < ApplicationRecord
  belongs_to :user
  has_many   :calendars,dependent: :destroy
 
  with_options presence: true do
    validates :name
    validates :place
    validates :price
    validates :schedule
    validates :doing
  end
end
