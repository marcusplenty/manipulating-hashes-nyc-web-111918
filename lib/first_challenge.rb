def first_challenge
  contacts = {
    "Jon Snow" => {
      name: "Jon",
      email: "jon_snow@thewall.we", 
      favorite_icecream_flavors: ["chocolate", "vanilla", "mint chip"],
      knows: nil
    },
    "Freddy Mercury" => {
      name: "Freddy",
      email: "freddy@mercury.com",
      favorite_icecream_flavors: ["strawberry", "cookie dough", "mint chip"]
    }
  }

  #your code here
  contacts.each do |keys, values|
    if keys == "Freddy Mercury"
      values.each do |attribs, v2|
        if attribs == :favorite_icecream_flavors
          contacts[keys][attribs].delete_at(0)
        end
      end
    end
  end

  #remember to return your newly altered contacts hash!
  contacts
end

