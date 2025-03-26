import bcrypt from "bcryptjs";
import jwt from "jsonwebtoken";

const authController = {
    login: async (req, res) => {
        const user = userModel.getByEmail(req.body.email);

        if (user.length == 0) {
            return res.json({
                message: 'connection echoué'
            });
        }

        if (!bcrypt.compareSync(req.body.password, user[0].password)) {
            return res.json({
                message: 'connection echoué'
            });
        }

        const token = jwt.sign({ userId: user[0].id }, 'azertyuiop');



        return res.json({
            token: token,
            message: "ok"
        });
    },
    register: async (req, res) => {
        const data = req.body;
        const user = await userModel.getByEmail(data.email);
        if (user.length > 0) {
            return res.json({
                message: 'email déjà utilisé'
            });
        }

        data.passwordhash = bcrypt.hashSync(data.password, 10);

        const result = await userModel.create(data)

        return res.json({
            message: "ok"
        });

    }
}
export default authController;
