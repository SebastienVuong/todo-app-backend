const knex = require('knex')({ client: 'mysql', debug: ['ComQueryPacket'] });
const util = require('./util');

const USER_FIELDS = ['id', 'username', 'name', 'email'];
const TASK_FIELDS = ['id', 'userId', 'title', 'description', 'status', 'dueDate', 'starred'];
const TASK_WRITE_FIELDS = ['userId', 'title', 'description', 'status', 'dueDate', 'starred'];
const SUBTASK_FIELDS = ['id', 'taskId', 'title', 'url', 'description', 'status'];
const SUBTASK_WRITE_FIELD = ['taskId', 'title', 'url', 'description', 'status'];

class TodoAppDataLoader {
  constructor(conn) {
    this.conn = conn;
  }

  query(sql) {
    return this.conn.query(sql);
  }
  
  // User methods
  getUserFromSession(username) {
    return this.query(
      knex
      .select(USER_FIELDS)
      .from('users')
      .where({
        'username': username
      })
      .toString()
    )
    .then((result) => {
      if (result.length === 1) {
        return result[0];
      }

      return null;
    });
  }
    
  // Task methods
  getAllTasksForUser(options) {
    const userId = options.userId;
    const page = Number(options.page) || 1;
    const limit = Number(options.limit) || 5;
    const offset = (page - 1) * limit;

    return this.query(
      knex
      .select(TASK_FIELDS)
      .from('tasks')
      .where({
        'userId': userId
      })
      .limit(limit)
      .offset(offset)
      .toString()
    );
  }
  
  createTask(taskData) {
    return this.query(
      knex
      .insert(util.filterKeys(TASK_WRITE_FIELDS, taskData))
      .into('tasks')
      .toString()
    )
    .then((result) => {
      return this.query(
        knex
        .select(TASK_FIELDS)
        .from('tasks')
        .where('id', result.insertId)
        .toString()
      );
    });
  }
  
  updateTask(taskId, taskData) {
    return this.query(
      knex('tasks')
      .update(util.filterKeys(TASK_WRITE_FIELDS, taskData))
      .where('id', taskId)
      .toString()
    )
    .then(() => {
      return this.query(
        knex
        .select(TASK_FIELDS)
        .from('tasks')
        .where('id', taskId)
        .toString()
      );
    });
  }
  
  deleteTask(taskId) {
    return this.query(
      knex
      .delete()
      .from('tasks')
      .where('id', taskId)
      .toString()
    );
  }
  
  // Subtask methods
  getAllSubtasksForTask(taskId) {
    return this.query(
      knex
      .select(SUBTASK_FIELDS)
      .from('subtasks')
      .where('taskId', taskId)
      .toString()
    );
  }
  
  createSubtask(subtaskData) {
    return this.query(
      knex
      .insert(util.filterKeys(SUBTASK_WRITE_FIELD, subtaskData))
      .into('subtasks')
      .toString()
    );
  }
  
  updateSubtask(subtaskId, subtaskData) {
    return this.query(
      knex('subtasks')
      .update(util.filterKeys(SUBTASK_WRITE_FIELD, subtaskData))
      .where('id', subtaskId)
      .toString()
      )
      .then(() => {
        return this.query(
          knex
          .select(SUBTASK_FIELDS)
          .from('subtask')
          .where('id', subtaskId)
          .toString()
          );
      });
  }

  deleteBookmark(subtaskId) {
    return this.query(
      knex
      .delete()
      .from('subtasks')
      .where('id', subtaskId)
      .toString()
    );
  }
}

module.exports = TodoAppDataLoader;