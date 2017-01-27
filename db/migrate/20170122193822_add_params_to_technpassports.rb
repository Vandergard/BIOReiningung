class AddParamsToTechnpassports < ActiveRecord::Migration
  def change
    add_column :technpassports, :name, :string
    add_column :technpassports, :vorname, :string
    add_column :technpassports, :patronymic, :string
    add_column :technpassports, :condition, :string
    add_column :technpassports, :wear, :integer
    add_column :technpassports, :guarantee, :string
    add_column :technpassports, :damage, :string
    add_column :technpassports, :manipulation1, :string
    add_column :technpassports, :manipulation2, :string
    add_column :technpassports, :manipulation3, :string
    add_column :technpassports, :manipulation4, :string
    add_column :technpassports, :price1, :integer
    add_column :technpassports, :price2, :integer
    add_column :technpassports, :price3, :integer
    add_column :technpassports, :price4, :integer
    add_column :technpassports, :amount, :integer
    add_column :technpassports, :discount, :integer
    add_column :technpassports, :payment, :integer
    add_column :technpassports, :debt, :integer
  end
end
