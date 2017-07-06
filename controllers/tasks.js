const express = require('express');

// const onlyLoggedIn = require('../lib/only-logged-in'); // SESSIONS NOT IMPLEMENTED

module.exports = (dataLoader) => {
  const tasksController = express.Router();
  
  // Retrieve a list of tasks [VALIDATED THROUGH POSTMAN]
  tasksController.get('/', (req, res) => {
    dataLoader.getUserFromSession(req.query.username)
    .then(userData => {
      dataLoader.getAllTasksForUser({
        userId: userData.id,
        page: req.query.page,
        limit: req.query.count
      })
      .then(data => res.json({tasks: data}))
      .catch(err => res.status(400).json(err));
    })
  });

  // Create a new task [VALIDATED THROUGH POSTMAN]
  tasksController.post('/', (req, res) => {
    dataLoader.getUserFromSession(req.body.username)
    .then(userData => {
      dataLoader.createTask({
        userId: userData.id,
        title: req.body.title,
        description: req.body.description,
        status: "Pending",
        dueDate: req.body.dueDate,
        starred: req.body.starred
      })
      .then(data => res.status(201).json(data))
      .catch(err => res.status(400).json(err));
    })
  })


  // Modify a task [VALIDATED THROUGH POSTMAN]
  tasksController.patch('/', (req, res) => {
    dataLoader.updateTask(req.body.taskId, {
        title: req.body.title,
        description: req.body.description,
        status: req.body.status,
        dueDate: req.body.dueDate,
        starred: req.body.starred
      })
    .then(data => res.json(data))
    .catch(err => res.status(400).json(err));
  });


  // Delete a task [VALIDATED THROUGH POSTMAN]
  tasksController.delete('/', (req, res) => {
    dataLoader.deleteTask(req.body.taskId)
    .then(data => res.json(data))
    .catch(err => res.status(400).json(err));
  });

  return tasksController;
};