class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.text :event_title
      t.text :event_text
      t.datetime :event_start
      t.datetime :event_end
      t.timestamps

      t.boolean :note_id, default:false
    end

    add_index :events, :created_at
  end
end
