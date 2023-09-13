class CreateActivities < ActiveRecord::Migration[7.0]
  def change
    create_table :activities do |t|
      t.string :title
      t.text :description
      t.date :date
      t.bigint :user_id
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
