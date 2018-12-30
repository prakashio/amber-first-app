- if pet.errors
  ul.errors
    - pet.errors.each do |error|
      li = error.to_s

== form(action: "/pets/#{pet.id.to_s}", method: pet.id ? :patch : :post) do
  == csrf_tag
  .form-group
    == text_field(name: "name", value: pet.name, placeholder: "Name", class: "form-control")
  .form-group
    == text_field(name: "breed", value: pet.breed, placeholder: "Breed", class: "form-control")
  .form-group
    == text_field(name: "age", value: pet.age, placeholder: "Age", class: "form-control")
  == submit("Submit", class: "btn btn-primary btn-sm")
  == link_to("Back", "/pets", class: "btn btn-light btn-sm")
