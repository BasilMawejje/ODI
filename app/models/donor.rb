class Donor < ApplicationRecord
   mount_uploader :image, ImageUploader
   scoped_search on: [:name]
end
