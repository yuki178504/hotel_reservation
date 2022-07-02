class Register < ApplicationRecord
    has_many :reserves
    belongs_to :user
    mount_uploader :avatar_path, AvatarUploader
    mount_uploader :image, ImagesUploader
    validates :name, presence: true
    validates :introduction, length: {in: 1..50 }
    validates :price, numericality: true
    validates :address, presence: true
    validates :avatar_path, presence: true
end
