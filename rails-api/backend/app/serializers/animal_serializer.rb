


class AnimalSerializer < ActiveModel::Serializer
  attributes :id, :name, :gender, :species


  def gender
    @object.gender.capitalize
  end

  def species
    @object.species.name
  end
end
