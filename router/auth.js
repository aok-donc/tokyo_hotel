import { Router } from "express";

const authRouter = new Router();
authRouter.post("/login", authController.login
);
authRouter.post("/register", authController.register
);

export default authRouter;