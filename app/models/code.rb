# name:string file:string user_id:integer
class Code < ApplicationRecord
  belongs_to :user
  validates :user_id, presence: true
  validates :name, presence: true,length:{maximum: 20}
  validates :file, presence: true
  mount_uploader :file, CodeUploader
end
