class Album < ApplicationRecord
  # Direct associations

  belongs_to :director,
             :class_name => "Artist",
             :foreign_key => "artist_id",
             :counter_cache => :filmography_count

  has_many   :likes,
             :class_name => "Rating",
             :dependent => :destroy

  # Indirect associations

  # Validations

  validates :artist_id, :presence => true

  validates :title, :presence => true

end
