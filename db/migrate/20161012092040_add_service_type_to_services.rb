class AddServiceTypeToServices < ActiveRecord::Migration[5.0]
  def change
    add_column :services, :service_type, :string
  end
end
