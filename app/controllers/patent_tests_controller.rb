class PatentTestsController < ApplicationController
  before_action :set_patent_test, only: %i[ show edit update destroy ]

  # GET /patent_tests or /patent_tests.json
  def index
    @patent_tests = PatentTest.all
  end

  # GET /patent_tests/1 or /patent_tests/1.json
  def show
  end

  # GET /patent_tests/new
  def new
    @patent_test = PatentTest.new
  end

  # GET /patent_tests/1/edit
  def edit
  end

  # POST /patent_tests or /patent_tests.json
  def create
    @patent_test = PatentTest.new(patent_test_params)

    respond_to do |format|
      if @patent_test.save
        format.html { redirect_to patent_test_url(@patent_test), notice: "Patent test was successfully created." }
        format.json { render :show, status: :created, location: @patent_test }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @patent_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /patent_tests/1 or /patent_tests/1.json
  def update
    respond_to do |format|
      if @patent_test.update(patent_test_params)
        format.html { redirect_to patent_test_url(@patent_test), notice: "Patent test was successfully updated." }
        format.json { render :show, status: :ok, location: @patent_test }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @patent_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /patent_tests/1 or /patent_tests/1.json
  def destroy
    @patent_test.destroy

    respond_to do |format|
      format.html { redirect_to patent_tests_url, notice: "Patent test was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_patent_test
      @patent_test = PatentTest.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def patent_test_params
      params.require(:patent_test).permit(:patient_id, :test_id, :rate, :date)
    end
end
