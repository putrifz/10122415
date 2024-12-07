const express = require("express");
const bodyParser = require("body-parser");
const koneksi = require("./config/database");
const app = express();
const PORT = process.env.PORT || 5000;

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: false }));


// Create Khodam
app.post("/api/khodam", (req, res) => {
  const { name } = req.body; // Ubah dari namakhodam menjadi name
  if (!name) {
    return res.status(400).json({ message: "Nama khodam harus diisi" });
  }

  const queryInsert = "INSERT INTO khodam (name) VALUES (?)"; // Ubah kolom ke 'name'
  koneksi.query(queryInsert, [name], (err, result) => {
    if (err) {
      console.error("Error on POST:", err);
      return res.status(500).json({ message: "Insert data gagal!", error: err });
    }
    res.status(201).json({ success: true, message: "Khodam berhasil ditambahkan!", id: result.insertId });
  });
});

// Read data Khodam
app.get("/api/khodam", (req, res) => {
  const querySql = "SELECT * FROM khodam";

  koneksi.query(querySql, (err, rows, field) => {
    if (err) {
      return res.status(500).json({ message: " Ada Kesalahan ", error: err });
    }
    res.status(200).json({ success: true, data: rows });
  });
});

// Update Khodam
app.put("/api/khodam/:id", (req, res) => {
  const data = { ...req.body };
  const querySearch = "SELECT * FROM khodam WHERE id = ?";
  const queryUpdate = "UPDATE khodam SET ? WHERE id = ?";

  koneksi.query(querySearch, req.params.id, (err, rows, field) => {
    if (err) {
      return res.status(500).json({ message: " Ada Kesalahan ", error: err });
    }
    if (rows.length) {
      koneksi.query(queryUpdate, [data, req.params.id], (err, result, field) => {
        if (err) {
          return res.status(500).json({ message: " Ada Kesalahan ", error: err });
        }
        res.status(200).json({ success: true, message: "Update berhasil!" });
      });
    } else {
      res.status(404).json({ message: "Khodam tidak ditemukan" });
    }
  });
});

// Delete Khodam
app.delete("/api/khodam/:id", (req, res) => {
  const querySearch = "SELECT * FROM khodam WHERE id = ?";
  const queryDelete = "DELETE FROM khodam WHERE id = ?";

  koneksi.query(querySearch, req.params.id, (err, rows, field) => {
    if (err) {
      return res.status(500).json({ message: "Ada kesalahan", error: err });
    }
    if (rows.length) {
      koneksi.query(queryDelete, req.params.id, (err, result, field) => {
        if (err) {
          return res.status(500).json({ message: " Ada Kesalahan ", error: err });
        }
        res.status(200).json({ success: true, message: "Khodam berhasil dihapus" });
      });
    } else {
      res.status(404).json({ message: "Khodam tidak ditemukan" });
    }
  });
});

// Feature Dapatkan Khodam
app.post("/api/khodam/combine", (req, res) => {
  const { name } = req.body; 
  if (!name) {
    return res.status(400).json({ message: "Nama harus diisi" });
  }

  const queryRandom = "SELECT name FROM khodam ORDER BY RAND() LIMIT 1";

  koneksi.query(queryRandom, (err, rows) => {
    if (err) {
      return res.status(500).json({ message: "Ada kesalahan saat mengambil nama random", error: err });
    }

    if (rows.length === 0) {
      return res.status(404).json({ message: "Tidak ada nama khodam tersedia di database" });
    }

    const randomName = rows[0].name;

    const combinedName = `${name} ${randomName}`;

    res.status(200).json({
      success: true,
      message: "Kombinasi nama berhasil dibuat",
      data: {
        Nama: name,
        Khodam: randomName,
        Saya_Adalah: combinedName,
      },
    });
  });
});


app.listen(PORT, () => console.log(`Server running at port: ${PORT}`));


