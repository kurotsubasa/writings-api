class WritingSerializer < ActiveModel::Serializer
  attributes :id, :name, :genre, :completion_date, :country_of_origin, :recommend, :author, :editable

  def editable
    scope == object.user
  end
end
