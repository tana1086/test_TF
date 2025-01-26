class CreateProfiles < ActiveRecord::Migration[7.2]
  def change
    create_table :profiles do |t|
      t.string :name, :null => false
      t.integer :target

      t.timestamps
    end
  end
end
