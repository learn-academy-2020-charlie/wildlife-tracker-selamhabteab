class CreateWildlives < ActiveRecord::Migration[6.0]
  def change
    create_table :wildlives do |t|
      t.string :common_name
      t.string :latin_name
      t.string :kingdom

      t.timestamps
    end
  end
end
