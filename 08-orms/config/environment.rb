require 'bundler'
Bundler.require

require_all 'app'
# require_relative '../app/.....'

DB = {
  conn: SQLite3::Database.new('school.db')
}

DB[:conn].results_as_hash = true
