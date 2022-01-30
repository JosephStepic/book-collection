class Book2sController < ApplicationController
  before_action :set_book2, only: %i[ show edit update destroy ]

  # GET /book2s or /book2s.json
  def index
    @book2s = Book2.all
  end

  # GET /book2s/1 or /book2s/1.json
  def show
  end

  # GET /book2s/new
  def new
    @book2 = Book2.new
  end

  # GET /book2s/1/edit
  def edit
  end

  # POST /book2s or /book2s.json
  def create
    @book2 = Book2.new(book2_params)

    respond_to do |format|
      if @book2.save
        format.html { redirect_to book2_url(@book2), notice: "Book2 was successfully created." }
        format.json { render :show, status: :created, location: @book2 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @book2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /book2s/1 or /book2s/1.json
  def update
    respond_to do |format|
      if @book2.update(book2_params)
        format.html { redirect_to book2_url(@book2), notice: "Book2 was successfully updated." }
        format.json { render :show, status: :ok, location: @book2 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @book2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /book2s/1 or /book2s/1.json
  def destroy
    @book2.destroy

    respond_to do |format|
      format.html { redirect_to book2s_url, notice: "Book2 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book2
      @book2 = Book2.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def book2_params
      params.require(:book2).permit(:title, :author, :price, :published_date)
    end
end
