const express=require('express');
const {createpost,uploadvid,posts}=require('../controller/post.controller');
const { uploadImage, uploadVideo } = require('../middleware/upload.middleware');
const postrouter=express.Router();
postrouter.post('/createpost',uploadImage.single('image'),createpost);
postrouter.post('/uploadvid',uploadVideo.single('video'),uploadvid);
postrouter.get('/posts',posts);
module.exports=postrouter;