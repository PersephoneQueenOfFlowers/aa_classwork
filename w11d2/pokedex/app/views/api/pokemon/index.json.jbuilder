# json.pokemon do 
#     json.extract! @pokemon, :name, :attack, :defense, :poke_type
# end
# json.array! @pokemons do |pokemon|
@pokemons.each do |pokemon|
    json.set! pokemon.id do
        json.extract! pokemon, :id, :name, :image_url
    end
end