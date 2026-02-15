const mongoose = require('mongoose');
const usersdataSchema=new mongoose.Schema({
    userdataname:{
        type:String,
        required:true
    },
    userdataemail:{
        type:String,
        required:true,
        unique:true
    },
    userdatapass:{
        type:String,
        required:true
    },
    createdAt:{
        type:Date,
        default:Date.now
    }

});
const usersdatamodel=mongoose.model("usersdata",usersdataSchema);
module.exports=usersdatamodel;