class Task < ApplicationRecord
  belongs_to :user

  enum status: { not_started: 0, in_start: 1, completed: 2 }

  validates :title, presence: true
end
