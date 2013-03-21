class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :name
      t.string :firstname
      t.string :adress
      t.string :zip_code
      t.string :city
      t.string :phone
      t.date :birth_date

      t.timestamps
    end
  end
end
