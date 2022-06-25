class TestPerametersController < ApplicationController
  before_action :set_test_perameter, only: %i[ show edit update destroy ]

  # GET /test_perameters or /test_perameters.json
  def index
    @test_perameters = TestPerameter.all
  end

  # GET /test_perameters/1 or /test_perameters/1.json
  def show
  end

  # GET /test_perameters/new
  def new
    @test_perameter = TestPerameter.new
  end

  # GET /test_perameters/1/edit
  def edit
  end

  # POST /test_perameters or /test_perameters.json
  def create
    @test_perameter = TestPerameter.new(test_perameter_params)

    respond_to do |format|
      if @test_perameter.save
        format.html { redirect_to test_perameter_url(@test_perameter), notice: "Test perameter was successfully created." }
        format.json { render :show, status: :created, location: @test_perameter }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @test_perameter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /test_perameters/1 or /test_perameters/1.json
  def update
    respond_to do |format|
      if @test_perameter.update(test_perameter_params)
        format.html { redirect_to test_perameter_url(@test_perameter), notice: "Test perameter was successfully updated." }
        format.json { render :show, status: :ok, location: @test_perameter }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @test_perameter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /test_perameters/1 or /test_perameters/1.json
  def destroy
    @test_perameter.destroy

    respond_to do |format|
      format.html { redirect_to test_perameters_url, notice: "Test perameter was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_test_perameter
      @test_perameter = TestPerameter.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def test_perameter_params
      params.require(:test_perameter).permit(:name, :range, :unit, :test_id, :category_id)
    end
end
