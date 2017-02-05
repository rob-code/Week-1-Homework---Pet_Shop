def pet_shop_name(pet_shop)
  return pet_shop[:name]
end

def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end

def  add_or_remove_cash(pet_shop, amount)
  pet_shop[:admin][:total_cash] += amount
  #assigning the amount to a variable, updating the variable and then returning it so not correct because we do not update the hash with the new variable! We have to operate on the hash.
end

def pets_sold(pet_shop)
  return pet_shop[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop, number)
  pet_shop[:admin][:pets_sold] += number
end

def stock_count(pet_shop)
  pet_shop[:pets].count   #length too but count offers more options
end

def pets_by_breed(pet_shop, breed)

  breed_array = []

#this is in all languages - under the hood it just returns the number of items in the array

for pet in pet_shop[:pets]
  if pet[:breed] == breed
    breed_array.push(pet[:breed])
  end
end

return breed_array

end

def find_pet_by_name(pet_shop, name)
  for pet in pet_shop[:pets]
    if pet[:name] == name
      return pet
    end
  end
  return false
end

def remove_pet_by_name(pet_shop, name)
  for pet in pet_shop[:pets]
    if pet[:name] == name
      pet_shop[:pets].delete(pet)
    end
  end
end

def add_pet_to_stock(pet_shop, new_pet)
  pet_shop[:pets].push(new_pet)
end

def customer_pet_count(customers)
  return customers[:pets].count
end

def add_pet_to_customer(customer, new_pet)
  customer[:pets].push(new_pet)
end

def customer_can_afford_pet(customer, pet)
  if customer[:cash] >= pet[:price]
    return true
  else
    return false
  end
end

def sell_pet_to_customer(pet_shop, pet, customer)
  if pet && customer_can_afford_pet(customer, pet)
    puts "Pet #{pet[:name]} exists"
    puts "customer has funds #{customer[:cash]} and #{pet[:name]} costs #{pet[:price]}"
    add_pet_to_customer(customer, pet)
    remove_pet_by_name(pet_shop, pet[:name])
    increase_pets_sold(pet_shop, 1)
    add_or_remove_cash(pet_shop, pet[:price])
  else
    if pet == false
     puts "that pet does not exist"
    else
      puts "The customer does not have sufficient funds to buy the pet"
    end
  end
end

def enumeration_test(pet_shop)

puts " "
puts " "
puts "*************************"
puts "enumeration tests"
puts " "

# iterates over the comeplete hash
puts " "
puts "for pet in pet_shop"
for pet in pet_shop
  puts pet
end 

puts " "
puts "for pet in pet_shop[:pets]"
# iterates over pets
for pet in pet_shop[:pets]
  puts pet
end 

puts " "
puts " "
puts "*************************"
puts "Of course! we can only enumerate keys! \nOnce we have the key, we can then operate on the arrays attached to that key"
puts "*************************"
puts " "
puts " "


end





