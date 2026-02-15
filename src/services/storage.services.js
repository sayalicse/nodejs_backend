require("dotenv").config();
const ImageKit=require('@imagekit/nodejs');
const fs=require('fs');
const multer=require('multer')
const imagekit=new ImageKit({
    privateKey:process.env.IMAGEKIT_PRIVATE_KEY
})
async function uploadFile(buffer,originalname){
    console.log(buffer);
    const result = await imagekit.files.upload({
        file:buffer.toString("base64"),
        fileName:originalname,
        resourceType: "auto",
        useUniqueFileName: true,
    })
    return result;
}


module.exports=uploadFile
