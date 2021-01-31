import { connect } from 'react-redux';
import todoIndex  from './todo_list';
import { allTodos } from '../../reducers/selectors';
import { receiveTodos, receiveTodo, removeTodo } from '../../actions/todo_actions';

const mapStateToProps = state => ({
  todos: allTodos(state), 
  state
});

const mapDispatchToProps = dispatch => ({
  receiveTodo: todo => dispatch(receiveTodo(todo)),
  removeTodo: todo => dispatch(removeTodo(todo)),

  // receiveTodos: todo => dispatch(receiveTodos(todo)),
});

export default connect(mapStateToProps, mapDispatchToProps)(todoIndex);




