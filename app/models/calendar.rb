class Calendar < ApplicationRecord

  belongs_to :user, optional: true
  belongs_to :construction, optional: true
end
