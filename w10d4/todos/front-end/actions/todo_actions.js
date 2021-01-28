export const RECEIVE_TODOS = "RECEIVE_TODOS";
export const RECEIVE_TODO = "RECEIVE_TODO";

export const receiveToDo = (toDo)=> { 
    return{
        type: RECEIVE_TODO,
         toDo
    };
};

export const receiveToDos = (toDos) => {
    return {
        type: RECEIVE_TODOS,
        toDos
    };
};

