class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name
      t.integer :phone
      t.integer :sum
      t.integer :percent
      t.date :birth_date

      t.timestamps null: false
    end
  end
end
