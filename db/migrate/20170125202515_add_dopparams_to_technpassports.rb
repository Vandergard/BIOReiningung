class AddDopparamsToTechnpassports < ActiveRecord::Migration
  def change
    add_column :technpassports, :time_weared, :string
    add_column :technpassports, :care_symbols, :string
    add_column :technpassports, :undergo, :string
    add_column :technpassports, :effects, :string
    add_column :technpassports, :spots, :string
    add_column :technpassports, :origin_spots, :string
    add_column :technpassports, :other_defects, :string
    add_column :technpassports, :pr_scin_color, :string
    add_column :technpassports, :pr_fur_color, :string
    add_column :technpassports, :f_mechanical_damage, :string
    add_column :technpassports, :worn_pl, :string
  end
end
