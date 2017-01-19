class Technpassport < ActiveRecord::Base
  validates :customer,  presence: true, length: { maximum: 50 }
  validates :phone, presence: true
  validates :product, presence: true
  validates :date_in, presence: true

end
