class CreateActivities < ActiveRecord::Migration[8.0]
  def change
    create_table :activities do |t|
      t.uuid :user_id
      t.uuid :persona_id
      t.uuid :session_id
      t.text :description

      t.timestamps
    end
  end
end
