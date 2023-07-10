class Document < ApplicationRecord
  has_one_attached :file
  attr_accessor :persist_file  # Add the attribute accessor for persist_file

  validate :validate_file_presence
  after_save :persist_file_to_storage, if: -> { persist_file.present? && persist_file }

  private

  def validate_file_presence
    unless file.attached?
      errors.add(:file, "must be attached")
    end
  end

  def persist_file_to_storage
    return if file.attached? && file.attachment.present? && file.attachment.persisted?

    file.attachment.record = self
    file.attachment.save
  end
end
