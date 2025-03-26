const userModel = {
    getByEmail: async (email) => {
        const [results, fields] = await connection.query(
            `SELECT * FROM tokyohotel.collaborators WHERE email = ?`,
            [email]
        )
        return results;
    }
}

export default authController;