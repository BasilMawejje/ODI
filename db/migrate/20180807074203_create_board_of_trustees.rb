class CreateBoardOfTrustees < ActiveRecord::Migration[5.2]
  def change
    create_table :board_of_trustees do |t|
      t.string :name
      t.text :description
      t.string :image

      t.timestamps
    end
  end
end
