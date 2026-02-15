const express=require('express');
// const postmodel=require('./models/post.model')
// const usersmodel=require('./models/user.model');
// const { uploadImage, uploadVideo } = require('./middleware/upload.middleware');
// const uploadFile = require('./services/storage.services');
// const router=express.Router();
const {register,login}=require('../controller/auth.controller');
const { uploadImage } = require('../middleware/upload.middleware');

const authrouter=express.Router();

// authrouter.get('/posts',authcontroller.posts);
authrouter.post('/register',uploadImage.single('userimg'),register);
authrouter.get('/login',login);
// router.post('/createpost',uploadImage.single("image"),async(req,res)=>{
//   const post= req.body;
//   console.log(req.body);
//   console.log(req.file);
//   const result=await uploadFile(
//     req.file.buffer,
//     req.file.originalname
//   );
//   const posts=await postmodel.create({
//     image:result.url,
//     caption:req.body.caption
//   });
//   return res.status(201).json({
//     msg:"post craeted",
//     posts
//   })
 
// });
// router.post('/uploadvid',uploadVideo.single('video'),async(req,res)=>{
//   try{
      
//      if(!req.file){
//       return res.status(400).json({msg:"No video uploaded"})
//      }
//      const result = await uploadFile(req.file.buffer, req.file.originalname)
//      return res.status(200).json({
//       msg:"video uploaded",
//       url:result.url
//      })
//   }catch(err){
//          console.error("Error during video upload:", err);
//     return res.status(500).json({ msg: "Upload failed" });
//   }


// })


// router.get('/posts',async(req,res)=>{
//   const posts=await postmodel.find();
//   return res.status(200).json({
//     msg:"posts fetched sucessfully",
//     posts
//   })
// })
// router.post('/register',uploadImage.single('userimg'),async(req,res)=>{
//    const userimgresult=await uploadFile(
//     req.file.buffer,
//     req.file.originalname
//    );
//    const user=await usersmodel.create({
//        userfullname:req.body.userfullname,
//        username:req.body.username,
//        useremail:req.body.useremail,
//        userdob:req.body.userdob,
//        userimg:userimgresult.url,
//        userpass:req.body.userpass
//    });
//    return res.status(201).json({
//     msg:"user registered sucessfully",
//     user
//    })
// });
// router.get('/login',async(req,res)=>{
//   const useremail=req.body.useremail;
//   const userpass=req.body.userpass;
//   const result = await usersmodel.find({
//     useremail:useremail,
//     userpass:userpass
//   });
//   res.status(200).json({
//     msg:"Log in Sucessfull",
//     result
//   });
// })
module.exports=authrouter;