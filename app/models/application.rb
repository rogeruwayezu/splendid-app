class Application < ApplicationRecord
  mount_uploader :personal_statement, PersonalStatementUploader
  belongs_to :user
  belongs_to :scholarship
  has_many :answers
end
