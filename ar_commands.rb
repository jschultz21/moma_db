require "active_record"

require_relative "db/connection"
require_relative "models/artist"
require_relative "models/painting"

# 1. Create a new Artist (Vincent Van Gogh) and save him to your database
Artist.create(name: "vincent Van Gough", nationality: "Dutch")
# 2. Create a new Painting (Starry Night) and save it to your database
Painting.new(title: "other starry night", artist_id: 13)
# 3. Return all Artists
Artist.all
# 4. Return all Paintings
Painting.all
# 5. Return the artist with an id of 2
Artist.find(2)
# 6. Return the artist with a name of "Vincent Van Gogh"
Artist.find_by(name: "Vincent van Gogh")
# 7. Return all the artists from Spain
Artist.find_by(nationality: "Spanish")
# 8. Return the painting with an id of 1
Painting.find(1)
# 9. Return the painting with a name of "Guernica"
Painting.find_by(title: "Guernica")
# 10. Return all the paintings that "Pablo Picasso" painted
Painting.where(artist_id: 14)
# 11. Return the artist of "Guernica"
Painting.find_by(title: "Guernica").artist
# 12. Change Vincent Van Gogh's nationality to USA
Artist.find_by(name: "Vincent van Gogh").update(nationality: "American")
# 13. Change "Starry Night" to be one of Pablo Picasso's paintings
Painting.find_by(title: "Starry Night").update(artist_id: 14)
