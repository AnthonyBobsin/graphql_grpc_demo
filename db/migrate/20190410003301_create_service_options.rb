class CreateServiceOptions < ActiveRecord::Migration[5.1]
  def change
    create_table :service_options do |t|
      t.integer :warehouse_location_id
      t.string :start_at
      t.string :end_at
      t.string :window_description

      t.timestamps
    end
  end
end
