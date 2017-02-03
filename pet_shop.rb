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
return nil
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





