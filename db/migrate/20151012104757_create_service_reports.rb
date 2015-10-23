class CreateServiceReports < ActiveRecord::Migration
  def change
    create_table :service_reports do |t|
      t.text :ITM
      t.text :comissining_reports

      t.timestamps null: false
    end
  end
end
