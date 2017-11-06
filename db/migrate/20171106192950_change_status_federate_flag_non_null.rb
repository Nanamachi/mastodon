class ChangeStatusFederateFlagNonNull < ActiveRecord::Migration[5.1]
  def up
    change_column_null :statuses, :federate, null: false, default: true
  end
  def down
    change_column :statuses, :federate, null: true
  end
end
