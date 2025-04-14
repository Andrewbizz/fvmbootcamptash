// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract TodoList {
    address public owner;

    struct Todo {
        string task;
        bool completed;
    }

    Todo[] public todos;

    modifier onlyOwner() {
        require(msg.sender == owner, "Not authorized");
        _;
    }

    constructor(string[] memory initialTasks) {
        require(initialTasks.length >= 5, "Must provide at least 5 tasks");
        owner = msg.sender;
        for (uint i = 0; i < initialTasks.length; i++) {
            todos.push(Todo({
                task: initialTasks[i],
                completed: false
            }));
        }
    }

    function addTodo(string memory _task) public onlyOwner {
        todos.push(Todo({
            task: _task,
            completed: false
        }));
    }

    function markCompleted(uint index) public onlyOwner {
        require(index < todos.length, "Invalid index");
        todos[index].completed = true;
    }

    function getTodo(uint index) public view returns (string memory task, bool completed) {
        require(index < todos.length, "Invalid index");
        Todo memory todo = todos[index];
        return (todo.task, todo.completed);
    }

    function getAllTodos() public view returns (Todo[] memory) {
        return todos;
    }

    function getTodoCount() public view returns (uint) {
        return todos.length;
    }
}
