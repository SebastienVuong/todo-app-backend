const express = require('express');
const cors = require('cors');
const mysql = require('promise-mysql');



// Express middleware
const bodyParser = require('body-parser');
const morgan = require('morgan');
// const checkLoginToken = require('./lib/check-login-token.js'); // SESSIONS NOT IMPLEMENTED



// Data loader
const TodoAppDataLoader = require('./lib/todo-app.js');



// Controllers
// const authController = require('./controllers/auth.js'); // AUTHENTICATION NOT IMPLEMENTED
const tasksController = require('./controllers/tasks.js');
const subtasksController = require('./controllers/subtasks.js');



// Database / data loader initialization
// mysql://j8bdh8u0ny9pgsbs:ounkmyo4zuounho1@hngomrlb3vfq3jcr.cbetxkdyhwsb.us-east-1.rds.amazonaws.com:3306/zpb4mn0cwerf1flt
// const connection = mysql.createPool(process.env.JAWSDB_URL)
const connection = mysql.createPool({
  user: 'root',
  database: 'todo_app'
});
const dataLoader = new TodoAppDataLoader(connection);



// Express initialization
const app = express();
app.use(cors());
app.use(morgan('dev'));
app.use(bodyParser.json());
// app.use(checkLoginToken(dataLoader)); // SESSIONS NOT IMPLEMENTED

// app.use('/auth', authController(dataLoader)); // AUTHENTICATION NOT IMPLEMENTED
app.use('/tasks', tasksController(dataLoader));
// app.use('/subtasks', subtasksController(dataLoader)); // VIEWING A SUBTASK IS NOT IMPLEMENTED



// Start the server
const port = process.env.PORT || 3000;
app.listen(port, () => {
  if (process.env.C9_HOSTNAME) {
    console.log(`Web server is listening on https://${process.env.C9_HOSTNAME}`);
  } else {
    console.log(`Web server is listening on http://localhost:${port}`);
  }
});
