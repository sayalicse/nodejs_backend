const express = require('express');
const router = express.Router();
const Userdata=require('../models/usersdata.model');
const bcrypt=require('bcryptjs');
const jwt=require('jsonwebtoken');
const dotenv=require('dotenv');
const { login } = require('./auth.controller');
dotenv.config();
const registeruser=async(req,res)=>{
    try{
          const {userdataname,userdataemail,userdatapass}=req.body;
          const existinguser=await Userdata.findOne({
            $or:[
                {userdataemail},
                {userdataname}
            ]
          });
          if(existinguser){
            return res.status(400).json({
                msg:"User already exists"
            })
          }else{
            const hashedpass=await bcrypt.hash(userdatapass,10);
            const newuser=new Userdata({
                userdataname,
                userdataemail,
                userdatapass:hashedpass
            })
            const saveduser=await newuser.save();
        //          const result=await Userdata.create({
        //     userdataname:userdataname,
        //     userdataemail:userdataemail,
        //     userdatapass:hashedpass
        //   });
          return res.status(201).json({
            msg:"User registered sucessfully",
            saveduser
          });
          }
          
    }catch(err){
         return res.status(500).json({
            msg:"Interner server error",
            error:err.msg
         });
    }
};
const loginuser=async(req,res)=>{
    const {userdataname,userdatapass}=req.body;
    try{
        const user=await Userdata.findOne({userdataname});
        if(!user)return res.status(400).json({msg:"Inavlid credentials"});
        const ismatch=await bcrypt.compare(userdatapass,user.userdatapass);
        if(!ismatch)return res.status(400).json({msg:"Invalid credentials"});
        const token=jwt.sign(
            {id:user._id,userdataname:user.userdataname,userdatapass:user.userdatapass}
            ,process.env.JWT_SECRET,
            {expiresIn:'1h'}
        
        );
        res.json({token});

    }catch(err){
        return res.status(500).json({
            msg:"Internal server error",
            error:err.message
        })
    }
}
module.exports={registeruser,loginuser};