class CreateHeeros < ActiveRecord::Migration[7.0]
  def change
    create_table :heeros do |t|
      t.string :super_name
      t.string :name

      t.timestamps
    end
  end
end
