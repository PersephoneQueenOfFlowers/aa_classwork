import React from 'react';
import ReactDOM from 'react-dom';
import { receiveTodo, receiveTodos, removeTodo } from './actions/todo_actions';
import configureStore from './store/store'; // exported default 

document.addEventListener("DOMContentLoaded", () => {
  console.log("Welcome to the todos");
  const reactRoot = document.getElementById('root');
  window.store = configureStore();
  window.receiveTodo = receiveTodo;
  window.receiveTodos = receiveTodos;
  window.removeTodo = removeTodo;

  ReactDOM.render(<h1>welcome to todo app</h1>, reactRoot);
})