  footballers =[ "samuel eto" "yohan cabaye" "stephen taylor" "tim krul" ]
  pets = ["dog", "cat", "goldfish"] 
  colours = ["colours" "blue" "green" "red"]



def print_header
	puts "These are the first four footballers i could think of"
end


# def print_all_items_of_an_array(array_being_passed_in) #(can be called anything)
# 	array_being_passed_in.each do |item_in_array| #line before do selects each item of whatever we want to go through #text beetween pipes is the name of each individual item of hte array
# 		puts "#{item_in_array.upcase}"
# 		end
# end


def print_each_item_in_array(list)
	list.each_with_index do|item|
		puts"#{item}"
	end
end



print_header
print_each_item_in_array(pets)


# print_all_items_of_an_array(colours)
# print_each_thing_in_an_array(pets)





# # def select(array)
# # 	new.array=[]
# # 	array.each do |element|

# # 		new.array<<element if yield(element) == true



# 	new.array
# end	