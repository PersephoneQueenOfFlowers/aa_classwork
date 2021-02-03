# json.pokemon do 
#     json.extract! @pokemon, :name, :attack, :defense, :poke_type
# end
# json.array! @pokemons do |pokemon|
@pokemons.each do |pokemon|
    json.set! pokemon.id do
        json.extract! pokemon, :id, :name
        # json.image_url asset_path("pokemon_snaps/#{poke.image_url}")
    end
end




