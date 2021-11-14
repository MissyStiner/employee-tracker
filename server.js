const express = require('express');
const mysql = require('mysql2');

const PORT = process.env.PORT || 3001;
const app = express();

// Express middleware
app.use(express.urlencoded({ extended: false }));
app.use(express.json());

// Connect to database
const db = mysql.createConnection(
    {
      host: 'localhost',
      // Your MySQL username,
      user: 'root',
      // Your MySQL password
      password: 'password',
      database: 'employees'
    },
    console.log('Connected to the employees database.')
  );

// Get all employees
app.get('/api/employees', (req, res) => {
    const sql = `SELECT * FROM employee`;
  
    db.query(sql, (err, rows) => {
      if (err) {
        res.status(500).json({ error: err.message });
        return;
      }
      res.json({
        message: 'success',
        data: rows
      });
    });
  });

// Get a single employee
app.get('/api/employees/:id', (req, res) => {
    const sql = `SELECT * FROM employee WHERE id = ?`;
    const params = [req.params.id];
  
    db.query(sql, params, (err, row) => {
      if (err) {
        res.status(400).json({ error: err.message });
        return;
      }
      res.json({
        message: 'success',
        data: row
      });
    });
  });

// Delete an employee
app.delete('/api/employees/:id', (req, res) => {
    const sql = `DELETE FROM employee WHERE id = ?`;
    const params = [req.params.id];
  
    db.query(sql, params, (err, result) => {
      if (err) {
        res.statusMessage(400).json({ error: res.message });
      } else if (!result.affectedRows) {
        res.json({
          message: 'Employee not found'
        });
      } else {
        res.json({
          message: 'deleted',
          changes: result.affectedRows,
          id: req.params.id
        });
      }
    });
  });

// //   // Delete an employee
// // db.query(`DELETE FROM employee WHERE id = ?`, 1, (err, result) => {
// //     if (err) {
// //       console.log(err);
// //     }
// //     console.log(result);
// //   });

// // Create an employee
// const sql = `INSERT INTO employee (id, first_name, last_name, role_id, manager_id) 
//               VALUES (?,?,?,?,?)`;
// const params = [1, 'Paul', 'Clarke', 1, 1];

// db.query(sql, params, (err, result) => {
//   if (err) {
//     console.log(err);
//   }
//   console.log(result);
// });
  
// Default response for any other request (Not Found)
app.use((req, res) => {
    res.status(404).end();
});

app.listen(PORT, () => {
    console.log(`Server running on port ${PORT}`);
});