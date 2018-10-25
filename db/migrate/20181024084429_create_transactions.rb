class CreateTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :transactions do |t|
      t.integer :user_id
      t.string :mobile
      t.integer :card_id
      t.datetime :transaction_time
      t.string :marchent_name
      t.float :amount
      t.string :status

      t.timestamps
    end
  end
end
