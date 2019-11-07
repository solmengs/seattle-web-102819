#ORM : What does it mean?
- Object Relational Mapping
  Taking a ruby object and mapping it to a table in a database.
  - Students, teachers, and parents.
  -> `Models` are always to the `table`
      `<singular>.rb` to `<plural>`
      `teacher.rb` to `teachers`
    - Many to Many model (3-> base models) + (3-> join models)
    - One to Many model (2 models [ Teacher + Student])
  -> Columns -> attributes in the table
    - `name` and `mod`
  -> Instances -> rows

#CRUD
- Create
- Read
- Update
- Delete


## References
```Ruby
# These are the gems you need to use for Sqlite3 in your project "rails"
gem 'pry'
gem 'rake'
gem 'sqlite3'
gem 'require_all'
```
