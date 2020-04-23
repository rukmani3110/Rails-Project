class CreateAssignments < ActiveRecord::Migration[6.0]
  def change
    create_table :assignments do |t|
      t.string :name
      t.integer :user_id
      t.integer :type_id

      t.timestamps
    end
  end
end
