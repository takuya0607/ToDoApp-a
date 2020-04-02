class CreateTodos < ActiveRecord::Migration[5.2]
  def change
    create_table :todos do |t|
      t.string :Title, null: false
      t.text :Detail, null: false
      t.timestamps
    end
  end
end
