class CreateLatestNews < ActiveRecord::Migration[5.2]
  def change
    create_table :latest_news do |t|
      t.text :article
      t.string :image

      t.timestamps
    end
  end
end
