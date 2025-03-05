class AdminUser < ApplicationRecord
  # Include Devise modules for authentication
  devise :database_authenticatable, :recoverable, :rememberable, :validatable

  # Allow Ransack to search only these attributes
  def self.ransackable_attributes(auth_object = nil)
    ["id", "email", "created_at", "updated_at"]
  end
end
