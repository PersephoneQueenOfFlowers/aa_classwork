// import { postUser, postSession, deleteSession } from '../util/session';
import { RECEIVE_CURRENT_USER, LOGOUT_CURRENT_USER } from '../actions/session_actions';

const sessionReducer = (state = {id: null}, action) => {
  Object.freeze(state);
  const newState = Object.assign({}, state);
  switch (action.type) {
    case RECEIVE_CURRENT_USER:
      debugger
      return {id: action.user.id}; // sets ID to the action's user id. 
    case LOGOUT_CURRENT_USER:
      return {id: null}; // return id as null in object.
    default:
      return state;
  }
};

export default sessionReducer;

// import into root reducer so the slice of state exists. 
// depending on action written, 