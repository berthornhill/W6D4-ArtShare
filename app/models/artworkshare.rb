class ArtworkShare < ApplicationRecord
    validates presence: true

    belongs_to :artwork,
    primary_key: :id,
    foreign_key: :artwork_id,
    class_name: :Artwork

    belongs_to :viewer,
    primary_key: :id,
    foreign_key: :viewer_id,
    class_name: :User
    
end