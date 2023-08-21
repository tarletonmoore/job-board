class Job < ApplicationRecord
  belongs_to :company
  has_many :liked_jobs

end
