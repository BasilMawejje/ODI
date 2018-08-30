class CreateNewsletters < ActiveRecord::Migration[5.2]
  def change
    create_table :newsletters do |t|
      t.string :name
      t.string :email
      t.string :source
      t.string :country

      t.timestamps
    end
  end
end
