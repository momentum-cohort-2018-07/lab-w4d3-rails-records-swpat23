class Album < ApplicationRecord

  
  validates :title, :artist, :year_released, presence: true,
                    length: { minimum: 2 }

end
