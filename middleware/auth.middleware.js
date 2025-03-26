const authMiddleware = async (req, res, next) => {
    try {
        const headers = req.headers;
        const token = headers.authorization.split(' ')[1];

        if (headers.authorization && jwt.verify(headers.authorization, 'azertyuiop')) {
            return next();
        }


    } catch (error) {
        return res.status(403).json({
            message: "Unauthorized"
        });
    }
}
export default authMiddleware;