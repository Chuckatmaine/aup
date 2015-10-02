class AddStudentidToUser < ActiveRecord::Migration
  def change
    add_column :users, :studentid, :string
  end
end
