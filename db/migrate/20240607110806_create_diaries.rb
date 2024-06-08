class CreateDiaries < ActiveRecord::Migration[7.0]
  def change
    create_table :diaries do |t|
      t.date :date, null: false
      t.string :title, null: false, unique: true
      t.string :content, null: false
      t.text :image
      # t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
