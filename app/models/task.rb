class Task < ApplicationRecord
  enum status: { not_started: 0, in_start: 1, completed: 2 }

  validates :title, presence: true
end
