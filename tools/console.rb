require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


#artists
sarah = Artist.new('sarah', 5)
sam= Artist.new('sam', 4)
lucy = Artist.new('lucy', 3)

#galleries
gallery1 = Gallery.new('gallery1', 'london')
gallery2 = Gallery.new('gallery2', 'paris')
gallery3 = Gallery.new('gallery3', 'rome')
gallery4 = Gallery.new('gallery4', 'sydney')

#paintings
painting1 = Painting.new('painting1', 'impressionist', sarah, gallery1)
painting2 = Painting.new('painting2', 'contemporary', sarah, gallery2)
painting3 = Painting.new('painting3', 'abstract', sam, gallery2)
painting4 = Painting.new('painting4', 'modern', lucy, gallery4)
painting5 = Painting.new('painting5', 'abstract', sam, gallery3)



binding.pry
