class AddUserIdToUsrBuyers < ActiveRecord::Migration[5.0]
  def change
    add_reference :usr_buyers, :users, on_delete: :cascade
  end
end
