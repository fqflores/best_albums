class Artist < ApplicationRecord
  # Direct associations

  has_many   :filmography,
             :class_name => "Album",
             :dependent => :nullify

  # Indirect associations

  # Validations

  validates :name, :presence => true

end
