class RemovePictureUrlFromArticles < ActiveRecord::Migration[6.1]
  def change
    remove_column :articles, :picture_url, :string
  end
end
