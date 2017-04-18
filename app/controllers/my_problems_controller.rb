class MyProblemsController < ApplicationController
  before_action :set_my_problem, only: [:show, :edit, :update, :destroy]
  before_action :authorize
  # GET /my_problems
  # GET /my_problems.json
  def index
    @my_problems = MyProblem.all
  end

  # GET /my_problems/1
  # GET /my_problems/1.json
  def show
  end

  # GET /my_problems/new
  def new
    @my_problem = MyProblem.new
  end

  # GET /my_problems/1/edit
  def edit
  end

  # POST /my_problems
  # POST /my_problems.json
  def create
    @my_problem = MyProblem.new(my_problem_params)

    respond_to do |format|
      if @my_problem.save
        format.html { redirect_to @my_problem, notice: 'My problem was successfully created.' }
        format.json { render :show, status: :created, location: @my_problem }
      else
        format.html { render :new }
        format.json { render json: @my_problem.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /my_problems/1
  # PATCH/PUT /my_problems/1.json
  def update
    respond_to do |format|
      if @my_problem.update(my_problem_params)
        format.html { redirect_to @my_problem, notice: 'My problem was successfully updated.' }
        format.json { render :show, status: :ok, location: @my_problem }
      else
        format.html { render :edit }
        format.json { render json: @my_problem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /my_problems/1
  # DELETE /my_problems/1.json
  def destroy
    @my_problem.destroy
    respond_to do |format|
      format.html { redirect_to my_problems_url, notice: 'My problem was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_my_problem
      @my_problem = MyProblem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def my_problem_params
      params.require(:my_problem).permit(:problem_details, :solution)
    end
end
