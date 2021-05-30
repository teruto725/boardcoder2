class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  mount_uploader :image, ImageUploader
  has_many :codes, dependent: :destroy; # dependent destroyでuser消えたらcodeも消えるようになる
  validates :name,
            presence: true, #追記
            uniqueness: true,
            length: {maximum: 10}

end
