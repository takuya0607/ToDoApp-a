class CreateTodos < ActiveRecord::Migration[5.2]
  def change
    create_table :todos do |t|
      t.string :Title
      t.text :Detail

      t.timestamps
    end
  end
end
