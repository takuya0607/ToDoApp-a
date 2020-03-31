class CreateUserinfos < ActiveRecord::Migration[5.2]
  def change
    create_table :userinfos do |t|
      t.string :name, null: false
      t.text :profile, null: false

      t.timestamps
    end
  end
end
