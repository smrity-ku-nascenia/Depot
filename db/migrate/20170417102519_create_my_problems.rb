class CreateMyProblems < ActiveRecord::Migration
  def change
    create_table :my_problems do |t|
      t.string :problem_details
      t.string :solution

      t.timestamps null: false
    end
  end
end
