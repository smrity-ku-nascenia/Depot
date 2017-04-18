require 'test_helper'

class MyProblemsControllerTest < ActionController::TestCase
  setup do
    @my_problem = my_problems(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:my_problems)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create my_problem" do
    assert_difference('MyProblem.count') do
      post :create, my_problem: { problem_details: @my_problem.problem_details, solution: @my_problem.solution }
    end

    assert_redirected_to my_problem_path(assigns(:my_problem))
  end

  test "should show my_problem" do
    get :show, id: @my_problem
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @my_problem
    assert_response :success
  end

  test "should update my_problem" do
    patch :update, id: @my_problem, my_problem: { problem_details: @my_problem.problem_details, solution: @my_problem.solution }
    assert_redirected_to my_problem_path(assigns(:my_problem))
  end

  test "should destroy my_problem" do
    assert_difference('MyProblem.count', -1) do
      delete :destroy, id: @my_problem
    end

    assert_redirected_to my_problems_path
  end
end
