class Todo < ApplicationRecord
  belongs_to :user,optional: true

  validates :Title, :Detail, presence: true
end