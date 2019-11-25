class Album < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :artist_id, :presence => true

  validates :title, :presence => true

end
