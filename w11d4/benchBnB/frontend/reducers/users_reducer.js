import { postUser, postSession, deleteSession } from '../util/session_api_util';
import { RECEIVE_CURRENT_USER } from '../actions/session_actions';

const usersReducer = (state = {}, action) => {
  Object.freeze(state);
  const newState = Object.assign({}, state);
  switch (action.type) {
    case "RECEIVE_CURRENT_USER":
      return Object.assign({}, newState, { [action.user.id]: action.user }) // sets ID to the action's user id. 
    default:
      return state;
  }
};

export default usersReducer;

