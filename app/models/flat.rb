class Flat < ApplicationRecord
  belongs_to :user

  has_many_attached :fotos

end
