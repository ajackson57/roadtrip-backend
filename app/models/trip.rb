class Trip < ApplicationRecord
  belongs_to :user
  validates :user, presence: true
  validates :name, presence: true
  has_many :markers, dependent: :destroy
end
