import { Router } from "express";

const authRouter = new Router();
authRouter.post("/login", authController.login
);

export default authRouter;