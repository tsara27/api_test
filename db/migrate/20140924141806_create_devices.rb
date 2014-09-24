class CreateDevices < ActiveRecord::Migration
  def change
    create_table :devices, :id => false do |t|
      t.string :os
      t.timestamps null: false
    end
  end
end
