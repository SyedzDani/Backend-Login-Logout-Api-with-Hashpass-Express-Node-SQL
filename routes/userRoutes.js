const express = require("express");
const router = express.Router();
const userController = require("./../controllers/userController")

router.post("/signUp", userController.signup);
router.post("/signIn", userController.signIn);





module.exports = router;