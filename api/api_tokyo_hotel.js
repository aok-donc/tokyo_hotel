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


//récupère les donnés 
app.get('/posts', async (req, res) => {
    if (req.query.search != null) {
        //récupère 1 donné précise 
        try {
            const [results, fields] =
                await connection.query("SELECT * FROM post.posts JOIN post.users ON posts.userId = users.id JOIN post.comments on posts.id = postId Where posts.id = ?;",
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
            const posts = await connection.query("SELECT * FROM post.posts JOIN post.users on posts.userId = users.id;")
            res.send(posts)
        }
        catch (error) {
            console.log("error");
        }
    }
})

app.listen(3000, () => {
    console.log('API READY');
})
//prie fort pour que ça marche et vraiment fort faut croire en l'âme de la machine