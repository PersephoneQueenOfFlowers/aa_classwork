import * as BENCHAPIUtil from '../util/session_api_util';
// import { postUser, postSession, deleteSession } from '../util/session';

export const RECEIVE_CURRENT_USER = 'RECEIVE_CURRENT_USER';
export const LOGOUT_CURRENT_USER = 'LOGOUT_CURRENT_USER';
export const RECEIVE_ERRORS = 'RECEIVE_ERRORS';

const receiveCurrentUser = user => ({
  type: RECEIVE_CURRENT_USER,
  user,
});

const logoutCurrentUser = () => ({
  type: LOGOUT_CURRENT_USER,
})

const receiveErrors = (errors) => ({
  type: RECEIVE_ERRORS,
  errors,
})


export const createNewUser = formUser => dispatch => {
  debugger
  return BENCHAPIUtil.signup(formUser)
  .then(user => dispatch(receiveCurrentUser(user)));
}

export const login = formUser => dispatch => { 
  return BENCHAPIUtil.login(formUser)
  .then(user => dispatch(receiveCurrentUser(user)));
}

export const logout = () => dispatch => {
  return BENCHAPIUtil.logout()
  .then(() => dispatch(logoutCurrentUser()));}

  // putting these on the window 
  // see if they hit debuggers in the session reducer. 
  // put the debbuggers in the session reducer. 
  // and then I'll know if reducer is responding to the correct action type. 
