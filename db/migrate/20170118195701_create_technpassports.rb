class CreateTechnpassports < ActiveRecord::Migration
  def change
    create_table :technpassports do |t|
      t.string :customer
      t.integer :phone
      t.date :date_in
      t.date :date_out
      t.string :product

      t.timestamps null: false
    end
  end
end
