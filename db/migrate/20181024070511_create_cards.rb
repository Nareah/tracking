class CreateCards < ActiveRecord::Migration[5.2]
  def change
    create_table :cards do |t|
      t.integer :card_number, limit: 8
      t.string :card_type
      t.integer :user_id

      t.timestamps
    end
  end
end
