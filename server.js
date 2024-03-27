const express = require('express');
const mysql = require('mysql');
const app = express();

const con = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "",
    database: "studenti_tbl"
});

con.connect(function (err) {
    if (err) throw err;
    console.log('MySQL povezan...');
});

app.get('/dodaj_studenta/:ime/:prezime/:god_rodj/:prosjek_ocj',(req, res) =>{
    let ime = req.params.ime;
    let prezime = req.params.prezime;
    let god_rodj = req.params.god_rodj;
    let prosjek_ocj = req.params.prosjek_ocj;

    var sql = "INSERT INTO studenti_pod(ime, prezime, god_rodj, prosjek_ocj) VALUES ('" + ime + "', '" + prezime + "', '" + god_rodj + "', '" + prosjek_ocj + "') ";
    con.query(sql, function (err, result) {
        if (err) res.send('Greška u dodavanju novog studenta!' + err);
        res.send('Dodan novi student!');
});
});
const port = 3000;
app.listen(port, () => {
    console.log(`Web aplikacija pokrenuta na portu ${port}`);
});