const { Createuser, getUsers  , getUser , updateUser} = require("../controllers/Usercontroller"); 




const express = require("express");
const router = express.Router() ;



router.get("/addusers" , Createuser); 
router.get("/users" , getUsers); 
router.get("/user" , getUser); 
router.get("/updateuser" , updateUser); 



module.exports = router;