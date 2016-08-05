// var mysql      = require('mysql');
// var connection = mysql.createConnection({
//   host     : 'localhost',
//   user     : 'root',
//   password : '',
//   database : 'phone'
// });
//
// connection.connect();
//
// connection.query('SELECT * FROM phone.phone_list', function(err, rows, fields) {
//   if (err) throw err;
//
//   return rows;
// });
//
// connection.end();

var express = require('express');
var app = express();

app.get('/phone', function (req, res) {
   res.send('Hello World');
})
