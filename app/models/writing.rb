class Writing < ApplicationRecord
  belongs_to :user
  has_many :readings, dependent: :destroy
  has_many :readers, through: :readings
end
