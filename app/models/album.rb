class Album < ApplicationRecord
  # Direct associations

  has_many   :likes,
             :class_name => "Rating",
             :dependent => :destroy

  # Indirect associations

  # Validations

  validates :artist_id, :presence => true

  validates :title, :presence => true

end
