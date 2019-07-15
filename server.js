const express = require("express");
const static = require("express-static");
const cookieParser = require("cookie-parser");
const cookirSession = require("cookie-session");
const bodyparser = require("body-parser");
const multer = require("multer");
const consolidate = require("consolidate");
const mysql = require("mysql");

var server = express();
server.listen("8080");

//1.解析cookie
server.use(cookieParser("fdlsjafldsfdsalf2334"));
//2.使用session
var arr = [];
for(var i=0;i<10000;i++){
    arr.push('keys_'+Math.random());
}
server.use(cookirSession({name:'zns_sess_id',keys:arr,maxAge:20*3600*1000}));
//3.post数据
server.use(bodyparser.urlencoded({extended:false}));
server.use(multer({dest:"./www/upload"}).any());
//4.配置模板引擎
//输出什么东西
server.set("view engine","html");
//模板文件放在哪
server.set("views","./views");
//使用哪种模板引擎
server.engine("html",consolidate.ejs);

//接收用户请求
server.get("/",function(req,res){
    res.send("111111");
})

//5.static数据
server.use(static("./www"));