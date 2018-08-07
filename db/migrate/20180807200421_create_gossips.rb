class CreateGossips < ActiveRecord::Migration[5.2]
  def change
    create_table :gossips do |t|
      t.text :content
      t.references :moussaillon, foreign_key: true

      t.timestamps
    end
  end
end
