const express=require('express');

const usersmodel=require('../models/user.model');
const { uploadImage, uploadVideo } = require('../middleware/upload.middleware');
const uploadFile = require('../services/storage.services');
const { create } = require('../models/post.model');
const router=express.Router();
const jwttoken=require('jsonwebtoken');



const register=async(req,res)=>{
   const userimgresult=await uploadFile(
    req.file.buffer,
    req.file.originalname
   );
   const user=await usersmodel.create({
       userfullname:req.body.userfullname,
       username:req.body.username,
       useremail:req.body.useremail,
       userdob:req.body.userdob,
       userimg:userimgresult.url,
       userpass:req.body.userpass
   });
   const token = jwttoken.sign({
    id:user._id

   },process.env.JWT_SECRET)
   return res.status(201).json({
    msg:"user registered sucessfully",
    user,
    token
   })
};
const login=async(req,res)=>{
  const useremail=req.body.useremail;
  const userpass=req.body.userpass;
  const result = await usersmodel.find({
    useremail:useremail,
    userpass:userpass
  });
  res.status(200).json({
    msg:"Log in Sucessfull",
    result
  });
};
module.exports={register,login};