class CreateRecipients < ActiveRecord::Migration
  def change
    create_table :recipients do |t|
      t.references :present
      t.string :name

      t.timestamps
    end
    add_index :recipients, :present_id
  end
end
