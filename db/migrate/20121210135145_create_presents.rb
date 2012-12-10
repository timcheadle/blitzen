class CreatePresents < ActiveRecord::Migration
  def change
    create_table :presents do |t|
      t.references :user
      t.references :recipient
      t.string :product
      t.float :cost
      t.string :store
      t.boolean :purchased
      t.boolean :delivered
      t.boolean :given
      t.boolean :split

      t.timestamps
    end
    add_index :presents, :user_id
    add_index :presents, :recipient_id
  end
end
