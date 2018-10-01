class CreateGoverningBoards < ActiveRecord::Migration[5.2]
  def change
    create_table :governing_boards do |t|
      t.string :name
      t.text :description
      t.string :image

      t.timestamps
    end
  end
end
