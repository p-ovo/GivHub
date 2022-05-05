# seed below is jsut for testing activities_index page purpose
organisation1 = Organisation.create(name: "Organisation1")
activity1 = Activity.create(name: "dog sitter", description:"look after dogs for rich people", organisation: organisation1)
activity2 = Activity.create(name: "life saver", description:"watch people swimming between flags", organisation: organisation1)

# *****************************************************************
