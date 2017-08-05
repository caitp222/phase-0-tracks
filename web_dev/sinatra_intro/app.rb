# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
get '/' do
  "#{params[:name]} is #{params[:age]} years old."
end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end

# write a /contact route that displays an address

get '/contact' do
  p "17 Atalanta Street<br>
  London SW6 6TU<br>
  United Kingdom<br>"
end

# Write a great job route that says great job person if a name is given as a parameter

get '/great_job/' do
  name = params[:name]
  if name
    "Great job #{name}!"
  else
    "Great job!"
  end
end

# Route that uses two numbers, adds them and displays the result

get '/adder/:num1/:num2' do
  num1 = params[:num1].to_i
  num2 = params[:num2].to_i
  "#{num1} + #{num2} = #{num1 + num2}"
end