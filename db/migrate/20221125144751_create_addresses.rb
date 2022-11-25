class CreateAddresses < ActiveRecord::Migration[7.0]
  def change
    create_table :addresses do |t|
      t.string :zip_code, null: false
      t.string :street_name, null: false
      t.string :extra_info
      t.string :neighborhood, null: false
      t.string :city, null: false
      t.string :state_code, null: false
      t.string :ibge_code, null: false
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
