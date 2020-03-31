class Userinfo < ApplicationRecord
  belongs_to :user,optional: true

  validates :name, :profile, presence: true
end