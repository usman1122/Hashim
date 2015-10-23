class CreateAuditReports < ActiveRecord::Migration
  def change
    create_table :audit_reports do |t|
      t.text :fire_alarm_system
      t.text :fire_pump
      t.text :fire_extenguisher
      t.text :fire_hose_cabin
      t.text :automatic_sprinkle_system
      t.text :fire_susspension_system
      t.text :restaurant_fire_susspension
      t.text :fire_hybrands

      t.timestamps null: false
    end
  end
end
