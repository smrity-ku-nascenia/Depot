class CreateUsers < ActiveRecord::Migration

  def up
    drop_table :users

    create_table :users do |t|
      t.string :name
      t.string :password_digest

      t.timestamps null: false
    end
  end
end
