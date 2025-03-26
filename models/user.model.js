const userModel = {
    getByEmail: async (email) => {
        const [results, fields] = await connection.query(
            `SELECT * FROM tokyohotel.collaborators WHERE email = ?`,
            [email]
        )
        return results;
    },
    create: async (data) => {
        const [results, fields] = await connection.query(
            `INSERT INTO users (email, password) VALUES (?, ?)`,
            [data.email, data.password]
        )
        return results;
    }
}

export default authController;