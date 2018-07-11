class CreateSubscriptions < ActiveRecord::Migration[5.2]
  def change
    create_table :subscriptions do |t|
      t.integer :broadcast_id
      t.boolean :watched
      t.string :email
      t.string :firstname
      t.string :surname
      t.string :registration_ip

      t.timestamps
    end
    add_index :subscriptions, :broadcast_id
    add_index :subscriptions, :email, unique: true
  end
end
