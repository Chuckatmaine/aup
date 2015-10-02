class CreateActiveDirectoryUsers < ActiveRecord::Migration
  def change
    create_table :active_directory_users do |t|

      t.timestamps null: false
    end
  end
end
