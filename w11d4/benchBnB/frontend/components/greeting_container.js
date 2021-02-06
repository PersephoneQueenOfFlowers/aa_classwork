import { connect } from 'react-redux';

import { logout } from '../actions/session_actions';
import Greeting from './greeting';

const mapStateToProps = ({ sessions, entities: { users } }) => {
  return {
    currentUser: users[sessions.id]
  };
};

const mapDispatchToProps = dispatch => ({
  logout: () => dispatch(logout())
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(Greeting);
