const express=require('express');
const postmodel=require('../models/post.model')
//const usersmodel=require('./models/user.model');
const { uploadImage, uploadVideo } = require('../middleware/upload.middleware');
const uploadFile = require('../services/storage.services');
// const { create } = require('../models/post.model');
const router=express.Router();
const createpost=async(req,res)=>{
  const post= req.body;
  console.log(req.body);
  console.log(req.file);
  const result=await uploadFile(
    req.file.buffer,
    req.file.originalname
  );
  const posts=await postmodel.create({
    image:result.url,
    caption:req.body.caption
  });
  return res.status(201).json({
    msg:"post craeted",
    posts
  })
 
}
const posts=async(req,res)=>{
  const posts=await postmodel.find();
  return res.status(200).json({
    msg:"posts fetched sucessfully",
    posts
  })
}
const uploadvid= async(req,res)=>{
  try{
      
     if(!req.file){
      return res.status(400).json({msg:"No video uploaded"})
     }
     const result = await uploadFile(req.file.buffer, req.file.originalname)
     return res.status(200).json({
      msg:"video uploaded",
      url:result.url
     })
  }catch(err){
         console.error("Error during video upload:", err);
    return res.status(500).json({ msg: "Upload failed" });
  }


}
module.exports={createpost,uploadvid,posts};