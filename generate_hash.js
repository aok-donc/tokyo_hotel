import bcrypt from "bcryptjs";

const hash =bcrypt.hashSync("password", 10);


console.log(hash);