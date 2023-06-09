class Document < ApplicationRecord
  has_one_attached :file
  

  validate :validate_file_presence
  after_save :persist_file_to_storage, if: -> { file.attached? }

  private

  def validate_file_presence
    unless file.attached?
      errors.add(:file, "must be attached")
    end
  end

  def persist_file_to_storage
    return if file.attachment.persisted?

    file.attachment.record = self
    file.attachment.save(expires_in: 30.days)
  end
end
