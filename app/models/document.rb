# app/models/document.rb
class Document < ApplicationRecord
    has_one_attached :file
    # validates :document, presence: {message: "can't be empty"}

    validate :validate_file_presence

  private

  def validate_file_presence
    unless file.attached?
      errors.add(:file, "must be attached")
    end
  end
end

  