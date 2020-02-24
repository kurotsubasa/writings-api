class WritingSerializer < ActiveModel::Serializer
  attributes :id, :name, :genre, :author, :editable
  has_one :user
  has_many :readings

  def editable
    scope == object.user
  end
end
