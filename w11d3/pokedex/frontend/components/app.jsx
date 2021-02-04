import React from 'react';
import { Route } from "react-router-dom";
import PokemonIndexContainer from './pokemon/pokemon_index_container';
import PokemonDetailContainer from './pokemon/pokemon_detail_container';

const App = () => {
  // Our app will contain our component hierarchy
  return (
    <>
      <h1>Welcome to the pokemonz</h1>
      <Route path="/" component={PokemonIndexContainer} />
      <Route path="/pokemon/:pokemonId" component={PokemonDetailContainer} />
    </>
  )
}

export default App;