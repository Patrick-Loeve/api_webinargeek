class ChangeColumnToBroadcasts < ActiveRecord::Migration[5.2]
   def change
  	change_column  :broadcasts, :subscriptions_count, :integer, default: 0, null: false
  end
end
