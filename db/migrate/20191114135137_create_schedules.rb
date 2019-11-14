class CreateSchedules < ActiveRecord::Migration[6.0]
  def change
    create_table :schedules do |t|
      t.date :date
      t.text :agenda

      t.timestamps
    end
  end
end
