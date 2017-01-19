class AddPhoneToTechnpassport < ActiveRecord::Migration
  def change
    add_column :technpassports, :phone, :string
  end
end
