class AddColumnToUserinfo < ActiveRecord::Migration[5.2]
  def change
    add_reference :userinfos, :User, foreign_key: true
  end
end
