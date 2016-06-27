
# seed statuses
array_of_statuses = ["Grand", "Needs Other Assistance", "Needs Medical Assistance", "Needs New Home", "Deceased"]

array_of_statuses.each do |status|
  Status.create(status: status)
end

# seed users
array_of_users = [{first_name: "Christel", last_name: "Trutmann", email: "ctrutmann@gmail.com", zip_code: 14850, password: "*Wr1gh7!"}, {first_name: "Olivia", last_name: "Vebt", email: "ohv1@cornell.edu", zip_code: 14850, password: "ohv1"}, {first_name: "Ben", last_name: "Blakeley", email: "brblakeley@gmail.com", zip_code: 14850, password: "forsweetsmouse"}]

array_of_users.each do |info|
  User.create(info)
end

# seed animals
array_of_animals = [{name: "Sparky", species: "Horse", breed: "Arab", age: 35, zip_code: 14850, guardian_id: 1, status_id: 1}, {name: "Canto General", species: "Horse", breed: "Throughbred", age: 22, zip_code: 14850, guardian_id: 1, status_id: 1}, {name: "Maggie", species: "Horse", breed: "Pony", age: 23, zip_code: 14850, guardian_id: 1, status_id: 1}, {name: "Syrian Empress", species: "Horse", breed: "Thoroughbred", age: 21, zip_code: 14850, guardian_id: 1, status_id: 1}, {name: "Bella", species: "Horse", breed: "Miniature", age: 15, zip_code: 14850, guardian_id: 1, status_id: 1}, {name: "Margaretha", species: "Horse", breed: "Thoroughbred", age: 4, zip_code: 14850, guardian_id: 1, status_id: 1}, {name: "Boomer", species: "Sheep", age: 10, zip_code: 14850, guardian_id: 1, status_id: 1}, {name: "Rosie", species: "Sheep", age: 10, zip_code: 14850, guardian_id: 1, status_id: 1}, {name: "Spooky", species: "Goat", breed: "Pygmy", age: 8, zip_code: 14850, guardian_id: 2, status_id: 1}, {name: "Sabrina", species: "Goat", breed: "Saanen", age: 3, zip_code: 14850, guardian_id: 1, status_id: 1}, {name: "Huckleberry", species: "Dog", breed: "Mutt", age: 11, zip_code: 14850, guardian_id: 1, status_id: 1}, {name: "Felix", species: "Cat", age: 6, zip_code: 14850, guardian_id: 2, status_id: 1}, {name: "Sammy", species: "Cat", age: 15, zip_code: 14850, guardian_id: 2, status_id: 1}, {name: "Lumi", species: "Cat", age: 3, zip_code: 14850, guardian_id: 3, status_id: 1}]

array_of_animals.each do |info|
  Animal.create(info)
end

# seed of follower_animals
array_of_followers = [{follower_id: 1, animal_id: 14}, {follower_id: 1, animal_id: 15}, {follower_id: 1, animal_id: 16}, {follower_id: 2, animal_id: 1}, {follower_id: 2, animal_id: 2}, {follower_id: 2, animal_id: 3}, {follower_id: 2, animal_id: 4}, {follower_id: 2, animal_id: 5}, {follower_id: 2, animal_id: 6}, {follower_id: 2, animal_id: 7}, {follower_id: 2, animal_id: 8}, {follower_id: 2, animal_id: 9}, {follower_id: 2, animal_id: 10}, {follower_id: 2, animal_id: 11}, {follower_id: 2, animal_id: 12}, {follower_id: 2, animal_id: 13}, {follower_id: 2, animal_id: 16}, {follower_id: 3, animal_id: 1}, {follower_id: 3, animal_id: 2}, {follower_id: 3, animal_id: 3}, {follower_id: 3, animal_id: 4}, {follower_id: 3, animal_id: 5}, {follower_id: 3, animal_id: 6}, {follower_id: 3, animal_id: 7}, {follower_id: 3, animal_id: 8}, {follower_id: 3, animal_id: 9}, {follower_id: 3, animal_id: 10}, {follower_id: 3, animal_id: 11}, {follower_id: 3, animal_id: 12}, {follower_id: 3, animal_id: 13}, {follower_id: 3, animal_id: 14}, {follower_id: 3, animal_id: 15},]

array_of_followers.each do |info|
  FollowerAnimal.create(info)
end