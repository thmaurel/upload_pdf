class DocumentsController < ApplicationController
  def show
    @document = Document.find(params[:id])
  end

  def new
    @document = Document.new
  end

  def create
    @document = Document.new(document_params)
    @document.save
    redirect_to document_path(@document)
  end

  private

  def document_params
    params.require(:document).permit(:name, :attachment)
  end
end
