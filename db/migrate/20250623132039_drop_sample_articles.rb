class DropSampleArticles < ActiveRecord::Migration[6.1]
  def change
    drop_table :sample_articles, if_exists: true
  end
end
