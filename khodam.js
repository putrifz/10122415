const express = require('express');
const bodyParser = require('body-parser');
const koneksi = require('./config/database');
const app = express();
const PORT = process.env.PORT || 5000;

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({extended: false}));

app.post('/api/khodam', (req, res) => {

    const data = {...req.body };
    const querySql = 'INSERT INTO khodam SET ?';

    koneksi.query(querySql, data, (err, rows, field)=> {
        if (err) {
            return res.status(500).json({ pesan: 'Insert data gagal!', error: err });
        }

        res.status(201).json({success: true, pesan: 'Insert data berhasil! '});
    });
});

app.listen(PORT, () => console.log(`Server running at port: ${PORT}`));