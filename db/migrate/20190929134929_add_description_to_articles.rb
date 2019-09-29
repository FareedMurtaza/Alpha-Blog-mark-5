class AddDescriptionToArticles < ActiveRecord::Migration[6.0]
  def change
    add_column :articles, :description, :text
    add_column :articles, :created_at, :detetime
    add_column :articles, :updated_at, :detetime
  end
end
