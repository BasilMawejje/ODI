class AddTitleToLatestNews < ActiveRecord::Migration[5.2]
  def change
    add_column :latest_news, :title, :string
  end
end
