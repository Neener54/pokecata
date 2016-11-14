class Pokedex
  def list
    pokelist = HTTParty.get("http://pokeapi.co/api/v2/pokemon/")["results"]
    pokelist.map do |pokemon|
      {
          id: id(pokemon['url']),
          name: pokemon['name']
      }
    end
  end
  
  def id(url)
    url.split('/')[-1]
  end
end