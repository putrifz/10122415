const mysql = require("mysql");

const koneksi = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "",
  database: "db_restapi_if09",
  multipleStatements: true,
});

koneksi.connect((err) => {
  if (err) throw err;
  console.log("MYSQL terkoneksi...");
});

module.exports = koneksi;
