# app/controllers/documents_controller.rb
class DocumentsController < ApplicationController
  before_action :require_login, only: [:new, :edit, :update, :destroy]

  def index 
    @document = Document.all.first
    response.headers.delete('Content-Disposition')
  end

  def new
    @document = Document.new
  end


  def create
    @document = Document.new(document_params)
    
  
    if @document.save
      redirect_to virtus_path, success: 'Document was successfully created.'
    else
      render :new, danger: "Document was NOT SAVED"
    end
  end


  def edit
    @document = Document.first
  end


  def update
    @document = Document.first
    @document.file.purge if @document.file.attached?  # Remove existing file
    @document.assign_attributes(document_params)
   
  
    if @document.save
      redirect_to virtus_path, success: 'Document was successfully updated.'
    else
      redirect_to edit_virtu_path, danger: "Document was NOT SAVED"
    end
  end

  def destroy
    @document = Document.find(params[:id])
    @document.destroy
    redirect_to virtus_path, success: 'Document was successfully deleted.'
  end

  private

  def document_params
    params.require(:document).permit(:file)
  end
end
