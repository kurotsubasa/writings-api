class WritingSerializer < ActiveModel::Serializer
  attributes :id, :type, :completion_date, :country_of_origin, :recommend, :author
  has_one :user
  belongs_to :user
end
