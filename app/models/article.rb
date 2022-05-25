class Article < ApplicationRecord
  belongs_to :user
  delegate :owner_name, to: :user
end
