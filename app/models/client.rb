class Client < ActiveRecord::Base
  has_many :technpassports, foreign_key: "phone"

  validates :name,  presence: true, length: { maximum: 50 }
  validates :phone, presence: true, uniqueness: true
end
