const authMiddleware = async (req, res, next) => {
    const headers = req.headers;
    console.log(headers);
}
export default authMiddleware;