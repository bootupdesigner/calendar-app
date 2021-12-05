class CreateAppointments < ActiveRecord::Migration[6.1]
  def change
    create_table :appointments do |t|
      t.references :user, null: false, foreign_key: true
      t.datetime :start_date
      t.datetime :end_date
      t.string :description, default: "SEO Consultation"

      t.timestamps
    end
  end
end
