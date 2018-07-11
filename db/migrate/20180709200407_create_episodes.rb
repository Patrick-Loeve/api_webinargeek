class CreateEpisodes < ActiveRecord::Migration[5.2]
  def change
    create_table :episodes do |t|
      t.string :title
      t.integer :webinar_id

      t.timestamps
    end
    add_index :episodes, :webinar_id
  end
end
