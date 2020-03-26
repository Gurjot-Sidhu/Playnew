class SongSerializer < ActiveModel::Serializer
  attributes :id, :title, :artist, :genre, :cover
  belongs_to :playlist
end
