class Article < ApplicationRecord
  include Deleteable
  
  belongs_to :user
  delegate :owner_name, to: :user
end
