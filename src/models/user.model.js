const mongoose=require('mongoose');
const userSchema=new mongoose.Schema({
    userfullname:String,
    username:String,
    useremail:{
        type:String,
        lowercase:true,
        unique:true,
        required:true
    },
    userdob:String,
    userimg:String,
    userpass:{
       type:String,
       minlength:8,
       required:true,
       validate:{
        validator:function(value){
            return /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&]).{8,}$/.test(value);
        },
        message:"Password must have uppercase, lowercase, number & special characte"

         
       }
    }

});
const usermodel=mongoose.model("user",userSchema);
module.exports=usermodel;