require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

#artists
sarah = Artist.new("sarah", 1)
maduri = Artist.new("maduri", 2)
ritz= Artist.new("ritz", 3)
casey = Artist.new("casey", 4)


#galleries
gallery1 = Gallery.new("gallery1", "sydney")
gallery2 = Gallery.new("gallery2", "london")
gallery3 = Gallery.new("gallery3", "bangkok")
gallery4 = Gallery.new("gallery4", "nyc")


#paintings
painting1 = Painting.new("painting1", "impressionist", sarah, gallery1)
painting2 = Painting.new("painting2", "renaissance", maduri, gallery2)
painting3 = Painting.new("painting3", "contemporary", ritz, gallery3)
painting4 = Painting.new("painting4", "egyptian", casey, gallery4)
painting5 = Painting.new("painting5", "roman", sarah, gallery1)



binding.pry
