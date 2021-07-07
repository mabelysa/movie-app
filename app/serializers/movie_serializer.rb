class MovieSerializer < ActiveModel::Serializer
  attributes :id, :title, :year, :plot, :english,
             :genres, :genre_names
end
