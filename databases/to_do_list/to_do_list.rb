# CREATE A TO DO LIST APP
# create a new to_do database
# create table with primary key, user name, date due and task columns
# create an interface so user can add a task to the database
# allow user to retrieve tasks by due date or by their name

# Install and require SQLite gem and dates
require 'sqlite3'

# Create database
db = SQLite3::Database.new("to_do_list.db")
db.results_as_hash = true

# create new table if it doesn't exist already
create_new_table = <<-SQL
  CREATE TABLE IF NOT EXISTS prentke_list(
    id INTEGER PRIMARY KEY,
    user_name VARCHAR(255),
    task VARCHAR(500)
  )
SQL

# create new row in table using user entered data
def create_new_task (db, names, tasks)
  db.execute("INSERT INTO prentke_list (user_name, task)
    VALUES (?, ?)", [names, tasks])
end

def display_tasks(db, name)
  db.execute("SELECT * FROM prentke_list WHERE user_name=#{name}")
end

db.execute(create_new_table)

# DRIVER CODE

# Create new tasks
create_new_task(db, "Nancy", "Do the dishes")
create_new_task(db, "Brian", "Make dinner")
create_new_task(db, "Nancy", "Get the car cleaned")
create_new_task(db, "Walker", "Go grocery shopping")
create_new_task(db, "Caitlin", "Take the cats to the vet")

# Display only Nancy's tasks
# display_tasks(db, "Nancy")

