class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :first_name
      t.string :last_name
      t.string :telephone
      t.string :mobile
      t.string :email
      t.string :insurance
      t.text :address
      t.string :city
      t.string :postal_code
      t.string :country
      t.integer :project_id
      t.string :license_no
      t.text :notes
      t.integer :user_id
      t.string :status

      t.timestamps
    end
  end
end
