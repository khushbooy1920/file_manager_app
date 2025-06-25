class CreateFileItems < ActiveRecord::Migration[7.1]
  def change
    create_table :file_items do |t|
      t.string :name
      t.references :folder, null: false, foreign_key: true

      t.timestamps
    end
  end
end
