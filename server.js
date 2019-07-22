const express = require("express");
const static = require("express-static");
const cookieParser = require("cookie-parser");
const cookirSession = require("cookie-session");
const bodyparser = require("body-parser");
const multer = require("multer");
const consolidate = require("consolidate");
const mysql = require("mysql");
const common = require("./libs/common");

// var db=mysql.createConnection({host:"localhost",port:"8080",user:"root",password:"zhangxin",database:"blog"});
//连接池
const db = mysql.createPool({host:"localhost",port:"3307",user:"root",password:"123456",database:"blog"});

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
server.set("views","./template");
//使用哪种模板引擎
server.engine("html",consolidate.ejs);

//接收用户请求
server.get("/",(req,res,next)=>{
    //查询banner
    db.query("SELECT * FROM `banner_table`;",(err,data)=>{
        if(err){
            res.status(500).send("database error！").end();
        }else{
            res.banners = data;
            next();
            // res.render("index.ejs",{banners:data});
        }
    })
})
server.get("/",(req,res,next)=>{
    //查询article
    // console.log(res.banners);
    db.query("SELECT ID,title,summary FROM `article_table`;",(err,data)=>{
        if(err){
            res.status(500).send("database error！").end();
        }else{
            res.articles = data;
            next();
        }
    })
})
server.get("/",(req,res)=>{
    res.render("index.ejs",{banners:res.banners,articles:res.articles});
})
server.get("/article",(req,res)=>{
    var artId = req.query.id;
    if(artId){
        db.query("SELECT * FROM `article_table` WHERE ID="+artId,(err,data)=>{
            if(err){
                res.status(500).send("database error！");
            }else{
                if(data.length==0){
                    res.status(404).send("请求的文章不存在！").end();
                }else{
                    var article_data = data[0];
                    article_data.sDate = common.time2date(article_data.post_time);
                    article_data.sContent = article_data.content.replace(/^/gm,"<p>").replace(/$/gm,"</p>");
                    console.log(article_data);
                    res.render("conText.ejs",{article:article_data});
                }
            }
        })
    }else{
    }
    
})

//5.static数据
server.use(static("./www"));