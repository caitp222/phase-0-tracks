# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # Take input and put into an array
  # Split array into separate strings
  # Iterate through array putting each element into a hash as a key with a value of 1
  # print the list to the console [can you use one of your other methods here?]
# output: method to print

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps: Add new item name as key to existing hash with the quantity as its value
# output: Hash including new item

# Method to remove an item from the list
# input: list, item name
# steps: Find the item name and delete key/value pair using item name
# output: Hash without item name that was removed

# Method to update the quantity of an item
# input: list, item name, and quantity
# steps: Find the item as the key in the hash and update the value of the quantity
# output: Hash with an updated value for the item

# Method to print a list and make it look pretty
# input: list
# steps: Iterate through the hash to print out each key/value pair
# output: Each key/value pair would be printed as strings


def list_creator(str)
  list = str.split(" ")
  grocery_list = {}
  list.each do |item|
    grocery_list[item] = 1
  end
  grocery_list
end

def add_item(list, item, quantity=1)
  list[item] = quantity
  list
end

def remove_item(list, item)
  list.delete(item)
  list
end

def update_quantity(list, item, quantity)
  list[item] = quantity
  list
end

def print_list(list)
  list.each do |item, quantity|
    puts "#{item}: #{quantity}"
  end
end


# str = "carrots apples cereal pizza"
# remove_item(grocery, "pizza")
# update_quantity(grocery, "milk", 2)

shopping_items = "bananas grapefruit watermelon pasta tomatoes"

grocery = list_creator(shopping_items)

add_item(grocery, "lemonade", 2)
add_item(grocery, "tomatoes", 3)
add_item(grocery, "onions", 1)
add_item(grocery, "ice_cream", 4)
add_item(grocery)

remove_item(grocery, "lemonade")

update_quantity(grocery, "ice_cream", 1)

print_list(grocery)

# REFELCTION

# What did you learn about pseudocode from working on this challenge?
    # It really helps!! From this challenge and the solo challenge I've learned that working through a challenge first with pseudocode clarifies the aims of the code in my mind and that helps me more easily realize what is the most appropriate method(s) to use
# What are the tradeoffs of using arrays and hashes for this challenge?
    # I don't really see how arrays would be useful for creating the shopping list itself as it needs items and assigned quantities. We used an array only for initially breaking down a string and for iterating over the words within that string.
# What does a method return?
    # Whatever you tell it to return in the last line. The pseudocode helped us figure out what type of item our return value should be, which was really useful in writing the code.
# What kind of things can you pass into methods as arguments?
    # We used arrays, hashes, strings and integers
# How can you pass information between methods?
    # Declaring a variable that is the outcome of method 1, and passing it into method 2. You can also use global variables but you shouldn't unless absolutely necessary.
# What concepts were solidified in this challenge, and what concepts are still confusing?
    # Don't use global variables, and how to get around using them. The ideas of iteration and working with hashes were solidified for me. I also got some more practice using the Ruby documentation while I'm working, which was really useful.