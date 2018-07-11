class RemoveIndexfromSubscriptions < ActiveRecord::Migration[5.2]
  def change
  	remove_index :subscriptions, :email
  end
end
