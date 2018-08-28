class Album < ApplicationRecord

  
  validates :title, :artist, presence: true,
                    length: { minimum: 2 }

end
