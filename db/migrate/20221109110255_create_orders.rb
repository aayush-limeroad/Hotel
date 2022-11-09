class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.string :food
      t.integer :amount
      t.text :description
      t.text :review
      t.references :Customer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
