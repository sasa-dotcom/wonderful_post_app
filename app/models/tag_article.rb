class TagArticle < ApplicationRecord
  belongs_to :tag
  belongs_to :articles
end
