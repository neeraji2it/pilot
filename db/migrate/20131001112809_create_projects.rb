class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.date :start_date
      t.date :due_date
      t.integer :client_id
      t.text :description
      t.integer :estimate_id
      t.integer :user_id

      t.timestamps
    end
  end
end
