# app/controllers/documents_controller.rb
class DocumentsController < ApplicationController
  before_action :require_login, only: [:new, :edit, :update, :destroy]

  def index 
    @english_document = Document.where(language: 'en').first
    @spanish_document = Document.where(language: 'es').first
    response.headers.delete('Content-Disposition')
  end

  def new
    @english_document = Document.new
    @spanish_document = Document.new
  end


def create
  # Check if the English form was submitted
  if params[:document][:language] == 'en'
    @english_document = Document.new(document_params)
    @english_document.language = 'en' # Set the language to English

    if @english_document.save
      redirect_to virtus_path, success: 'English Document was successfully created.'
    else
      render :new, danger: "English Document was NOT SAVED"
    end
  # Check if the Spanish form was submitted
  elsif params[:document][:language] == 'es'
    @spanish_document = Document.new(document_params)
    @spanish_document.language = 'es' # Set the language to Spanish

    if @spanish_document.save
      redirect_to virtus_path, success: 'Spanish Document was successfully created.'
    else
      render :new, danger: "Spanish Document was NOT SAVED"
    end
  else
    # If no form was submitted or the language was not specified, redirect to the appropriate page
    redirect_to virtus_path, alert: 'No valid form was submitted.'
  end
end


  def destroy
    @document = Document.find(params[:id])
    @document.file.purge if @document.file.attached?
    @document.destroy
    redirect_to virtus_path, success: 'Document was successfully deleted.'
  end

  private

  def document_params
    params.require(:document).permit(:file, :language)
  end
end
