class CreateUsrBuyers < ActiveRecord::Migration[5.0]
  def change
    create_table :usr_buyers do |t|
      t.string :adressLine1
      t.string :adressLine2
      t.string :addressLine3
      t.string :city
      t.integer :zipCode
      t.string :country
      t.date :dob
      t.date :anniversary

      t.timestamps
    end
  end
end
