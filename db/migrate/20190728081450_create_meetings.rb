class CreateMeetings < ActiveRecord::Migration[5.2]
  def change
    create_table :meetings do |t|
      t.datetime :datetime
      t.integer :status
      t.timestamps
    end
  end
end
