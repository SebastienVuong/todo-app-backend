const express = require('express');

module.exports = (dataLoader) => {
  const usersController = express.Router();
  
  // Retrieve all users
  usersController.get('/', (req, res) => {
    dataLoader.getAllUsers()
    .then(data => res.json({users: data}))
    .catch(err => res.status(400).json(err));
  });

  usersController.get('/me', (req, res) => {
    dataLoader.getUserFromSession(username)
    .then(data => res.json({users: data}))
    .catch(err => res.status(400).json(err));
  });
  
  return usersController;
};