class CreateBroadcasts < ActiveRecord::Migration[5.2]
  def change
    create_table :broadcasts do |t|
      t.datetime :broadcast_date
      t.integer :episode_id
      t.integer :subscriptions_count

      t.timestamps
    end
    add_index :broadcasts, :episode_id
  end
end
