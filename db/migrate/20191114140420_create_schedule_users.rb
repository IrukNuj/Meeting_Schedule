class CreateScheduleUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :schedule_users do |t|
      t.references :user, null: false, foreign_key: true
      t.references :schedule, null: false, foreign_key: true
      t.integer :status, null: false
      t.text :reason

      t.timestamps
    end
  end
end
