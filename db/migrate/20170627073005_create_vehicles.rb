class CreateVehicles < ActiveRecord::Migration[5.0]
  def change
    create_table :vehicles do |t|
      t.string :vrn

      t.timestamps
    end
  end
end
