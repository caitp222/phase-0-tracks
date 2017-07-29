# CREATE A TO DO LIST APP
# create a new to_do database
# create table with primary key, user name, date due and task columns
# create an interface so user can add a task to the database
# allow user to retrieve tasks by due date or by their name

# Install and require SQLite gem
require 'sqlite3'

# Create database
db = SQLite3::Database.new("to_do_list.db")
db.results_as_hash = true

# create new table if it doesn't exist already
create_new_table = <<-SQL
  CREATE TABLE IF NOT EXISTS prentke_to_do_list(
    id INTEGER PRIMARY KEY,
    user_name VARCHAR(255),
    due_date DATE,
    task VARCHAR(500)
  )
SQL

db.execute(create_new_table)




# USER INTERFACE