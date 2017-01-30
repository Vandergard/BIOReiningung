class AddParamsToClients < ActiveRecord::Migration
  def change
    add_column :clients, :vorname, :string
    add_column :clients, :patronymic, :string
    add_column :clients, :date_in, :date
    add_column :clients, :email, :string
    add_column :clients, :status, :integer
    add_column :clients, :comment, :string
  end
end
