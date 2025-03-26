import { connection } from "../database.js";

const todoModel = {
    all: async () => {
        const [results] = await connection.query("SELECT * FROM todos");
    
        return results;
    },
    one: async (id) => {
        const [results] = await connection.query(
            "SELECT * FROM todos WHERE id = ?",
            [id]
        );

        return results;
    },
    getAllCompleted: async (value) => {
        const [results] = await connection.query(
            "SELECT * FROM todos WHERE completed = ?",
            [value]
        );

        return results;
    },
    create: async (data) => {
        const [results] = await connection.query(
            "INSERT INTO todos (todo, completed, user_id) VALUES (?, ?, ?)",
            [data.todo, data.completed, data.user_id]
        );

        return results;
    },
    update: async (id, data) => {
        const [results] = await connection.query(
            "UPDATE todos SET todo = ?, completed = ?, user_id = ? WHERE id = ?",
            [data.todo, data.completed, data.user_id, id]
        );

        return results;
    },
    delete: async (id) => {
        const [results] = await connection.query(
            "DELETE FROM todos WHERE id = ?",
            [id]
        );

        return results;
    }
};

export default todoModel;
