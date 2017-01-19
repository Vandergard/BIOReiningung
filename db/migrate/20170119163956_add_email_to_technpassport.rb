class AddEmailToTechnpassport < ActiveRecord::Migration
  def change
    add_column :technpassports, :email, :string
  end
end
