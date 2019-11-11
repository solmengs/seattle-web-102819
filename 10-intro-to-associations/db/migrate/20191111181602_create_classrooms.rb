class CreateClassrooms < ActiveRecord::Migration[5.2]
  def change
    create_table :classrooms do |t|
      t.integer :teacher_id
      t.integer :student_id
      t.string :subject
    end
  end
end