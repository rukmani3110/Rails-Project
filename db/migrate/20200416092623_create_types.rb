class CreateTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :types do |t|
      t.string :categoryName

      t.timestamps
    end
  end
end
