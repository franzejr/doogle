class WordSerializer < ActiveModel::Serializer
  attributes :name
  has_many :definitions
end
