class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.datetime :appointment_datetime
      t.belongs_to :patient, index: true, foreign_key: true
      t.belongs :doctor
      t.string :to

      t.timestamps null: false
    end
  end
end
