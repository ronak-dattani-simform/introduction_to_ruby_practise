arr = Array(1..10)
p arr.length        # The .length method tallies the number of elements in your array and returns the count
p arr.first         # The .first method accesses the first element of the array, the element at index 0
p arr.last          # The .last method accesses the last element of the array
p arr.take(5)       # The .take method returns the first n elements of the array
p arr.drop(8)       # The .drop method returns the elements after n elements of the array
p arr[6]            # The index of array returns the indexth element of the array
p arr.pop           # The .pop method will permantently remove the last element of an array and returns the existing array
p arr.shift         # The .shift method will permantently remove the first element of an array and return this element
p arr.push(10)      # The .push method will allow you to add an element to the end of an array
p arr.unshift(0)    # The .unshift method will allow you to add an element to the beginning of an array
p arr.delete(5)     # The .delete method removes a specified element from an array permanently
p arr.concat([11, 12, 13])
#The .concat method appends the elements from an array to the original array. The .concat method can take in multiple arrays as an argument, which will in turn append multiple arrays to the original array.

puts "-----------------------------------------------------------"

sarr = ["Red", "Yellow", "Blue"]
p sarr
sarr << "Green"
p sarr

p sarr.include?("Green")

puts "-----------------------------------------------------------"

arr.each do |i|
  puts i
end
puts "------------------"

for i in 0...sarr.size
  puts arr[i]
end
puts "------------------"

for item in sarr
  puts item
end
puts "------------------"

p arr.map { |i| i * 2 }

puts "-----------------------------------------------------------"

require "date"

date = DateTime.now
p date.strftime("%d/%m/%y %H:%M")

date = (DateTime.now) + 30
p date.strftime("%d/%m/%y %H:%M")

puts "-----------------------------------------------------------"

dictionary = Hash[:one => "uno", :two => "dos", :three => "tres"]

dictionary.each do |key, value|
  puts "#{key} : #{value}"
end

puts "Value of one is : #{dictionary[:one]}"

puts "-----------------------------------------------------------"

my_lambda = -> { puts "Lambda called" }
my_lambda.call
my_lambda.()
my_lambda[]
my_lambda.===

my_proc = Proc.new { puts "Proc called" }
my_proc.call

def call_proc
  puts "Before proc"
  my_proc = Proc.new { return 2 }
  my_proc.call
  #proc will return method
end

p call_proc
