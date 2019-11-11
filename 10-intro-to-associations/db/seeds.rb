Teacher.destroy_all
Student.destroy_all
Classroom.destroy_all

#One to Many
# Teacher.create(name: "Soundarya", mod: 1)
# Teacher.create(name: "Ix", mod: 1)

# Student.create(name: "Taylor", mod: 1, teacher_id: Teacher.all.sample.id)
# Student.create(name: "Robinson", mod: 1, teacher_id: Teacher.all.sample.id)
# Student.create(name: "Andrew", mod: 1, teacher_id: Teacher.all.sample.id)

# MAny to many
Teacher.create(name: "Soundarya", mod: 1)
Teacher.create(name: "Ix", mod: 1)

Student.create(name: "Taylor", mod: 1)
Student.create(name: "Robinson", mod: 1)
Student.create(name: "Andrew", mod: 1)

Classroom.create(student_id: Student.all.sample.id, teacher_id: Teacher.all.sample.id, subject: "Ruby")
Classroom.create(student_id: Student.all.sample.id, teacher_id: Teacher.all.sample.id, subject: "Ruby")
Classroom.create(student_id: Student.all.sample.id, teacher_id: Teacher.all.sample.id, subject: "Rails")
Classroom.create(student_id: Student.all.sample.id, teacher_id: Teacher.all.sample.id, subject: "Rails")
Classroom.create(student_id: Student.all.sample.id, teacher_id: Teacher.all.sample.id, subject: "Sinatra")