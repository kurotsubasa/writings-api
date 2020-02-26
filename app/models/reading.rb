# frozen_string_literal: true

class Reading < ApplicationRecord
  belongs_to :reader, class_name: 'User',
                      foreign_key: 'user_id',
                      inverse_of: :readings
  belongs_to :material, class_name: 'Writing',
                        foreign_key: 'writing_id',
                        inverse_of: :readings
end
