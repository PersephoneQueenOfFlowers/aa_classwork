import React from 'react';
import PokemonIndexItem from './pokemon_index_item';



class PokemonIndex extends React.Component{
  constructor(props){
  super(props)
  }

  // let pokemon = this.props.pokemon

  
  componentDidMount(){
  this.props.requestAllPokemon()
  }
  
  
  render(){
    const pokemon = this.props.pokemon;
    const pokemonItems = pokemon.map(poke => (
      <PokemonIndexItem key={poke.id} pokemon={poke} />

    ));
    return (
      <section className="pokedex">
        <ul>{pokemonItems}</ul>
      </section>
    // <section className="pokedex">
    //   <ul>
    //   {this.props.pokemon.map((poke) => (
    //     <PokemonIndexItem key={poke.id} pokemon={poke} />
    //     // <li className="pokemon-index-item">
    //     //   <span>{poke.id}</span>
    //     //   <img src={poke.imageUrl}/>
    //     //   <span>{poke.name}</span>
    //     // </li>
    //   ))}
    //   </ul>
    // </section>
    )
  }
  }
  
  
  
  export default PokemonIndex;