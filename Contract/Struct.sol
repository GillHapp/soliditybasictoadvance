// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Struct {


    struct Todo {
        string text;
        bool completed;
    }

    // An array of 'Todo' structs
    Todo[] public todos;

    // [] hello,true,text,completed, text,completed
    // [] 0,1,2


    function create(string calldata _text) public {
        // 3 ways to initialize a struct
        // - calling it like a function

        todos.push(Todo(_text, false));

        // key value mapping
        todos.push(Todo({ completed: false,text: _text}));

        // initialize an empty struct and then update it
        Todo memory todo;
        todo.text = _text;
        todo.completed = true;
        // todo.completed initialized to false

        todos.push(todo);
    }





    








    // update text
    function updateText(uint256 _index, string memory _text) public{
        Todo storage todo = todos[_index];
        todo.text = _text;
    }

    // update completed
    function toggleCompleted(uint256 _index) public {
        Todo storage todo = todos[_index];
        todo.completed = !todo.completed;
    }
}
