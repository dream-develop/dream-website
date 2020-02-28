class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.string :family_name
      t.string :first_name
      t.string :family_kana
      t.string :first_kana
      t.string :phone
      t.string :email
      t.text :content
      t.boolean :agreement

      t.timestamps
    end
  end
end
