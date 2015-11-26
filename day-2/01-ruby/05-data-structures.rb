# 5. Data structures

# todo:
# add more fruit to array_of_fruits
# change the order of the array
# add yourself to the hash_of_favorite_fruits

array_of_fruits = ["Apple", "Banana", "Strawberry", "Mango"]

hash_of_favorite_fruits = {
  "hartley" => "Kiwi",

}

if ARGV[0] then # if there's input

  # print out that person's favorite food
  puts hash_of_favorite_fruits[ ARGV[0] ]

else # if there is no input

  # print out every food in the array_of_fruits
  array_of_fruits.each do |fruit|
    puts fruit
  end

end