class CreateSyllabusLanguages < ActiveRecord::Migration[5.0]
  def change
    create_table :syllabus_languages do |t|
      t.references :language, foreign_key: true
      t.references :syllabus, foreign_key: true

      t.timestamps
    end
  end
end
