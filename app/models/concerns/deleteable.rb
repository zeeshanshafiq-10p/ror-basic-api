module Deleteable
  extend ActiveSupport::Concern

  included do
    default_scope { where(deleted: false) }
    scope :existing, -> { where(deleted: false) }
    scope :trashed, -> { where(deleted: true) }
  end

  def trash
    update_attribute :deleted, true
  end

  def delete
    trash
  end

  def destroy
    trash
  end

end