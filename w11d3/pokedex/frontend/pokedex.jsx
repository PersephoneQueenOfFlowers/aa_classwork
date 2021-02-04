import React from 'react';
import ReactDOM from 'react-dom';
import configureStore from './store/store';
import Root from './components/root';
import {selectAllPokemon, selectPokemonMovesNames} from './reducers/selectors';


document.addEventListener("DOMContentLoaded", () => {
  const rootEl = document.getElementById("root");
  const store = configureStore();
  window.store = store;
  window.selectPokemonMovesNames = selectPokemonMovesNames;
  window.selectAllPokemon = selectAllPokemon;
  ReactDOM.render(<Root store={store} />, rootEl)
})