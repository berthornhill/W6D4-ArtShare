# == Schema Information
#
# Table name: artworks
#
#  id        :bigint           not null, primary key
#  title     :string           not null
#  image_url :string           not null
#  artist_id :integer          not null
#
class Artwork < ApplicationRecord
    validates :artist_id, uniqueness: {scope: :title, 
        message: 'This title is taken'}

    has_many :shares,
    primary_key: :id,
    foreign_key: :artwork_id,
    class_name: :ArtworkShare

    belongs_to :user,
    primary_key: :id,
    foreign_key: :artist_id,
    class_name: :User

    has_many :shared_viewers,
    through: :shares,
    source: :viewer
end
