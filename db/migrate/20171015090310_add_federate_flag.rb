class AddFederateFlag < ActiveRecord::Migration[5.1]
  def change
    add_column :statuses, :federate, :boolean, null: false, default: false
  end
end
