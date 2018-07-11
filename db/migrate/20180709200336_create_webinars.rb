class CreateWebinars < ActiveRecord::Migration[5.2]
  def change
    create_table :webinars do |t|
      t.string :title

      t.timestamps
    end
  end
end
