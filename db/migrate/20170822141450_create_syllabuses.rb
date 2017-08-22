class CreateSyllabuses < ActiveRecord::Migration[5.0]
  def change
    create_table :syllabuses do |t|
      t.string :syllabus_name
      t.references :trade, foreign_key: true
      t.references :level, foreign_key: true
      t.string :manager
      t.string :development_officer
      t.date :active_date
      t.string :upload_syllabus
      t.string :upload_test_plan

      t.timestamps
    end
  end
end
