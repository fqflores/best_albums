class Rating < ApplicationRecord
  # Direct associations

  belongs_to :user

  belongs_to :album

  # Indirect associations

  # Validations

end
