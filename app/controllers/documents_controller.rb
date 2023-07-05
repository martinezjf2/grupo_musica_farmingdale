# app/controllers/documents_controller.rb
class DocumentsController < ApplicationController

  def index 
    @document = Document.all.first
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
    @document = Document.all.first
  end

  def update
    @document = Document.all.first
    if @document.update(document_params)
      redirect_to virtus_path, success: 'Document was successfully updated.'
    else
      render :edit, danger: "Document was NOT SAVED"
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
