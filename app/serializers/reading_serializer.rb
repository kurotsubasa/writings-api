class ReadingSerializer < ActiveModel::Serializer
  attributes :id
  has_one :reader
  has_many :material
end
