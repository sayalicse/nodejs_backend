const express = require('express');
const cookieParser = require("cookie-parser");
const bcrypt = require('bcrypt');
const jwt = require('jsonwebtoken');

const app = express();
app.use(cookieParser());
app.get('/',(req,res)=>{
    res.send("Hello World");
})
app.listen(4002);