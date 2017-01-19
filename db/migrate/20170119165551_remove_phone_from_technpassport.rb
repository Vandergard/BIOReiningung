class RemovePhoneFromTechnpassport < ActiveRecord::Migration
  def change
    remove_column :technpassports, :phone, :integer
  end
end
