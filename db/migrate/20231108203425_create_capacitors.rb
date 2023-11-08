class CreateCapacitors < ActiveRecord::Migration[7.1]
  def change
    create_table :capacitors do |t|
      t.string :description
      t.string :price

      t.timestamps
    end
  end
end
