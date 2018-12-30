h1 Show Pet
p = pet.name
p = pet.breed
p = pet.age
p
  == link_to("Back", "/pets", class: "btn btn-light btn-sm")
  == link_to("Edit", "/pets/#{pet.id}/edit", class: "btn btn-success btn-sm")
  == link_to("Delete", "/pets/#{pet.id}?_csrf=#{csrf_token}", "data-method": "delete", "data-confirm": "Are you sure?", class: "btn btn-danger btn-sm")
