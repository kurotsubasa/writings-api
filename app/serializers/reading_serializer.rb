class ReadingSerializer < ActiveModel::Serializer
  attributes :id, :status, :editable
  has_one :reader
  has_many :material

  def editable
    scope == object.reader
  end

end
