class Technpassport < ActiveRecord::Base
  belongs_to :client, foreign_key: "phone"

  #validates :customer,  presence: true, length: { maximum: 50 }
  validates :phone, presence: true
#  validates :product, presence: true
#  validates :date_in, presence: true

end
