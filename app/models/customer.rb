class Customer < ApplicationRecord
  has_one_attached :image
  validates :full_name, presence: true

  # Allow Ransack to search these associations
  def self.ransackable_associations(auth_object = nil)
    super + ["image_attachment", "image_blob"]
  end

  # Allow Ransack to search these attributes
  def self.ransackable_attributes(auth_object = nil)
    ["id", "full_name", "phone_number", "email", "notes", "created_at", "updated_at"]
  end
end
