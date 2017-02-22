class Organization < ApplicationRecord
  belongs_to :user
  has_many :scholarships
end
