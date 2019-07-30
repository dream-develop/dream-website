class CreateMeetingEntries < ActiveRecord::Migration[5.2]
  def change
    create_table :meeting_entries do |t|
      t.references :meeting, foreign_key: true
      t.string :family_name
      t.string :first_name
      t.string :family_kana
      t.string :first_kana
      t.string :phone
      t.string :email
      t.text :purpose
      t.text :note
      t.boolean :agreement

      t.timestamps
    end
  end
end
