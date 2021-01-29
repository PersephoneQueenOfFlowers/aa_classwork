import { connect } from 'react-redux';
import todo_list from './todo_list';
import { allTodos } from '../../reducers/selectors';
import { receiveTodos, receiveTodo } from '../../actions/todo_actions';

const mapStateToProps = (state) => {
  toDos: allTodos(state),
  state
}

const mapDispatchToProps = (dispatch) => {
  receiveTodo: (todo) => dispatch(receiveTodo(todo))
}

export default connect(mapStateToProps, mapDispatchToProps)(todo_list);




