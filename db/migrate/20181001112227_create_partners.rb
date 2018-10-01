class CreatePartners < ActiveRecord::Migration[5.2]
  def change
    create_table :partners do |t|
      t.string :name
      t.text :description
      t.string :image
      t.integer :amount

      t.timestamps
    end
  end
end
