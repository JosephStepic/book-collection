class Book3sController < ApplicationController
  before_action :set_book3, only: %i[ show edit update destroy ]

  # GET /book3s or /book3s.json
  def index
    @book3s = Book3.all
  end

  # GET /book3s/1 or /book3s/1.json
  def show
  end

  # GET /book3s/new
  def new
    @book3 = Book3.new
  end

  # GET /book3s/1/edit
  def edit
  end

  # POST /book3s or /book3s.json
  def create
    @book3 = Book3.new(book3_params)

    respond_to do |format|
      if @book3.save
        format.html { redirect_to book3_url(@book3), notice: "Book3 was successfully created." }
        format.json { render :show, status: :created, location: @book3 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @book3.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /book3s/1 or /book3s/1.json
  def update
    respond_to do |format|
      if @book3.update(book3_params)
        format.html { redirect_to book3_url(@book3), notice: "Book3 was successfully updated." }
        format.json { render :show, status: :ok, location: @book3 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @book3.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /book3s/1 or /book3s/1.json
  def destroy
    @book3.destroy

    respond_to do |format|
      format.html { redirect_to book3s_url, notice: "Book3 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book3
      @book3 = Book3.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def book3_params
      params.require(:book3).permit(:title, :author, :price, :published_date)
    end
end
