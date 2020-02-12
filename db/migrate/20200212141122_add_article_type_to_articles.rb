class AddArticleTypeToArticles < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :article_type, :text
  end
end
