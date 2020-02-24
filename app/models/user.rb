# frozen_string_literal: true

class User < ApplicationRecord
  include Authentication
  has_many :examples
  has_many :writings
  has_many :readings, dependent: :destroy
  has_many :material, through: :readings
end
