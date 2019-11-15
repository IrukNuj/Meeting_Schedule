class RenameScheduleUsersToAbsentees < ActiveRecord::Migration[6.0]
  def change
    rename_table :schedule_users, :absentees
  end
end
