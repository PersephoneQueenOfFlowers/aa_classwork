import { $CombineState } from 'redux'

export const fetchAllPokemon = () => {
    return $CombineState.ajax({
        method: "GET",
        url: "/api/pokemon"
    })
}