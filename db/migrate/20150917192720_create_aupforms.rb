class CreateAupforms < ActiveRecord::Migration
  def change
    create_table :aupforms do |t|
      t.integer :userid
      t.boolean :aupaccept
      t.datetime :acceptdate

      t.timestamps null: false
    end
  end
end
