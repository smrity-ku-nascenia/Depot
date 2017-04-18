json.extract! my_problem, :id, :problem_details, :solution, :created_at, :updated_at
json.url my_problem_url(my_problem, format: :json)
