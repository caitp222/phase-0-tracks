#FIBONACCI NUMBERS

def fib(num)

#create empty Array as local variable
fib_arr = []

#set first two numbers as variables and assign to Array
first_number = 0
second_number = 1
  fib_arr.push(first_number,second_number)

#Set index to two below the desired number to account for previously added variables
i = num - 2
#create loop adding each number to the one before it
  i.times do
    third_number = first_number + second_number
    fib_arr.push(third_number)
    first_number = second_number
    second_number = third_number
  end

#define return value as array
return fib_arr

end

p fib(6)

if fib(100).last == 218922995834555169026
  puts "I made it!"
end


#SORT AN ARRAY
#bubble sort

def bubble_sort(arr)

  sorted = false
  swaps = 0
  i = 0

    until sorted == true

#Create a loop that iterates through the array in pairs of elements, swapping them when an element is smaller than the one preceeding it

        while i < arr.length - 1
          if arr[i] > arr[i+1]
            arr[i], arr[i+1] = arr[i+1], arr[i]
            #check progress/debugging:
            #p arr
#track how many times elements have been swapped
            swaps += 1
            #check progress/debugging:
            #p swaps
          end
          i += 1
        end

#create a conditional that resets index counter and swap counter so that process can be repeated if any swaps have been made
       if swaps > 0
        sorted = false
        swaps = 0
        i = 0
#when no swaps have been made, bubble sort is finished and the loops stops
        elsif swaps == 0
        sorted = true
        end
    end
end

#create an empty array and populate with some amount of random numbers between 1 and 1,000, ensuring no duplicates (just for the purposes of my own education - I ensured the method also worked when there were duplicates!)

bubble_array = []

#pick desired length of array

desired_length = 12

until
    bubble_array.length == desired_length
    bubble_array.push(rand(1..1000))
    bubble_array.uniq!
end

p bubble_array

bubble_sort(bubble_array)

p bubble_array




