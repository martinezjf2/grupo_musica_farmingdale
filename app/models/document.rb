class Document < ApplicationRecord
  has_one_attached :file
  

  validate :validate_file_and_language_presence
  validates :language, presence: true


  private

  def validate_file_and_language_presence
    unless file.attached? && language.present?
      errors.add(:base, "File and language must be present")
    end
  end

end
