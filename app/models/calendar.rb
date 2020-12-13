class Calendar < ApplicationRecord

  belongs_to :user, optional: true
  belongs_to :construction, optional: true

  with_options presence: true do
    validates :construction_id
    validates :user_id
    validates :const_type 
    validates :company 
    validates :n_o_p
    validates :day
  end
end