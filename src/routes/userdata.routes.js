const express = require('express');
const router = express.Router();
const {registeruser,loginuser}=require('../controller/userdata.controller');
router.post('/registeruser',registeruser);
router.post('/loginuser',loginuser);

// router.post('/login',async(req,res)=>{

// });
// router.post('/logout',async(req,res)=>{

// })
module.exports=router;