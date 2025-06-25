class FileItemsController < ApplicationController
  before_action :set_file_item, only: %i[ show edit update destroy ]
  before_action :require_admin, except: [:index, :show]

  # GET /file_items or /file_items.json
  def index
    @file_items = FileItem.all
  end

  # GET /file_items/1 or /file_items/1.json
  def show
  end

  # GET /file_items/new
  def new
    @file_item = FileItem.new
  end

  # GET /file_items/1/edit
  def edit
  end

  # POST /file_items or /file_items.json
  def create
    @file_item = FileItem.new(file_item_params)

    respond_to do |format|
      if @file_item.save
        format.html { redirect_to @file_item, notice: "File item was successfully created." }
        format.json { render :show, status: :created, location: @file_item }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @file_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /file_items/1 or /file_items/1.json
  def update
    respond_to do |format|
      if @file_item.update(file_item_params)
        format.html { redirect_to @file_item, notice: "File item was successfully updated." }
        format.json { render :show, status: :ok, location: @file_item }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @file_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /file_items/1 or /file_items/1.json
  def destroy
    @file_item.destroy!

    respond_to do |format|
      format.html { redirect_to file_items_path, status: :see_other, notice: "File item was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_file_item
      @file_item = FileItem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def file_item_params
      params.require(:file_item).permit(:name, :folder_id)
    end
end
