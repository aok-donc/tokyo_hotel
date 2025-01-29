//importation des modules
import express from 'express';
import mysql from 'mysql2/promise';
import cors from 'cors'

// Connection to the database
const connection = await mysql.createConnection({
    host: '127.0.0.1',
    database: 'post',
    user: 'root',
    password: 'root'
});

const app = express()
app.use(express.json());
app.use(cors());


//récupère les donnés de hotel ou recherche un hotel
app.get('/hotel', async (req, res) => {
    if (req.query.search != null) {
        //récupère 1 donné précise  
        try {
            const [results, fields] =
                await connection.query(`SELECT * FROM tokyohotel.holets WHERE holets.code LIKE ? OR holets.city LIKE ? OR holets.adress LIKE ? OR holets.reference LIKE ? OR holets.created_at LIKE ? OR holets.updated_at LIKE ?;`,
                    [`%${req.query.search}%`, `%${req.query.search}%`, `%${req.query.search}%`, `%${req.query.search}%`, `%${req.query.search}%`, `%${req.query.search}%`])
            res.send(results)
        }
        catch (error) {
            console.log('error')
        }
    }
    else {
        //récupère toutes les donners 
        try {
            const posts = await connection.query("SELECT * FROM tokyohotel.holets ;")
            res.send(posts)
        }
        catch (error) {
            console.log("error");
        }
    }
})

//récupère les donnés des collaborators ou recherche un collaborators
app.get('/collaborators', async (req, res) => {
    if (req.query.search != null) {
        //récupère 1 donné précise  
        try {
            const [results, fields] =
                await connection.query(`SELECT * FROM tokyohotel.collaborators;`,
                [req.query.search])
            res.send(results)
        }
        catch (error) {
            console.log('error')
        }
    }
    else {
        //récupère toutes les donners 
        try {
            const posts = await connection.query("SELECT * FROM tokyohotel.collaborators ;")
            res.send(posts)
        }
        catch (error) {
            console.log("error");
        }
    }
})

//récupère les donnés des options_booking ou recherche une options_booking
app.get('/options_booking', async (req, res) => {
    if (req.query.search != null) {
        //récupère 1 donné précise  
        try {
            const [results, fields] =
                await connection.query(`SELECT * FROM tokyohotel.options_booking;`,
                [req.query.search])
            res.send(results)
        }
        catch (error) {
            console.log('error')
        }
    }
    else {
        //récupère toutes les donners 
        try {
            const posts = await connection.query("SELECT * FROM tokyohotel.options_booking ;")
            res.send(posts)
        }
        catch (error) {
            console.log("error");
        }
    }
})

//récupère les donnés des room_options ou recherche une room_options
app.get('/room_options', async (req, res) => {
    if (req.query.search != null) {
        //récupère 1 donné précise  
        try {
            const [results, fields] =
                await connection.query(`SELECT * FROM tokyohotel.room_options;`,
                [req.query.search])
            res.send(results)
        }
        catch (error) {
            console.log('error')
        }
    }
    else {
        //récupère toutes les donners 
        try {
            const posts = await connection.query("SELECT * FROM tokyohotel.room_options ;")
            res.send(posts)
        }
        catch (error) {
            console.log("error");
        }
    }
})

//récupère les donnés des room_types ou recherche une room_types
app.get('/room_types', async (req, res) => {
    if (req.query.search != null) {
        //récupère 1 donné précise  
        try {
            const [results, fields] =
                await connection.query(`SELECT * FROM tokyohotel.room_types;`,
                [req.query.search])
            res.send(results)
        }
        catch (error) {
            console.log('error')
        }
    }
    else {
        //récupère toutes les donners 
        try {
            const posts = await connection.query("SELECT * FROM tokyohotel.room_types ;")
            res.send(posts)
        }
        catch (error) {
            console.log("error");
        }
    }
})

//récupère les donnés des room_types_booking ou recherche une room_types_booking
app.get('/room_types_booking', async (req, res) => {
    if (req.query.search != null) {
        //récupère 1 donné précise  
        try {
            const [results, fields] =
                await connection.query(`SELECT * FROM tokyohotel.room_types_booking;`,
                [req.query.search])
            res.send(results)
        }
        catch (error) {
            console.log('error')
        }
    }
    else {
        //récupère toutes les donners 
        try {
            const posts = await connection.query("SELECT * FROM tokyohotel.room_types_booking;")
            res.send(posts)
        }
        catch (error) {
            console.log("error");
        }
    }
})

//récupère les donnés des rooms ou recherche une rooms
app.get('/rooms', async (req, res) => {
    if (req.query.search != null) {
        //récupère 1 donné précise  
        try {
            const [results, fields] =
                await connection.query(`SELECT * FROM tokyohotel.rooms;`,
                [req.query.search])
            res.send(results)
        }
        catch (error) {
            console.log('error')
        }
    }
    else {
        //récupère toutes les donners 
        try {
            const posts = await connection.query("SELECT * FROM tokyohotel.rooms;")
            res.send(posts)
        }
        catch (error) {
            console.log("error");
        }
    }
})



//récupère les donnés de hotel ou recherche un hotel
app.get('/tokyohotel', async (req, res) => {
    if (req.query.search != null) {
        //récupère 1 donné précise  
        try {
            const [results, fields] =
                await connection.query(`SELECT * FROM tokyohotel.holets;`,
                [req.query.search])
            res.send(results)
        }
        catch (error) {
            console.log('error')
        }
    }
    else {
        //récupère toutes les donners 
        try {
            const posts = await connection.query("SELECT * FROM tokyohotel.holets ;")
            res.send(posts)
        }
        catch (error) {
            console.log("error");
        }
    }
})

app.post('/tokyohotel', async (req, res) => {
    try {
        const [results, fields] = await connection.query('INSERT INTO tokyohotel.holets (code, city, adress, reference) VALUES (?, ?, ?, ?)',
                [req.body.name, JSON.stringify(req.body.ingredients), JSON.stringify(req.body.instructions), req.body.prepTimeMinute])
        res.send(results)
    }
    catch (error) {
        console.log(error)
    }
})

app.listen(3000, () => {
    console.log('API READY');
})
//prie fort pour que ça marche et vraiment fort faut croire en l'âme de la machine